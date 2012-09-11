#!/usr/bin/env python
import roslib; roslib.load_manifest('drone_demo')
import rospy

from drone_demo.msg import Navdata
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty, UInt8

from time import time, sleep
import sys
from numpy import pi

from simple_im_proc import image_conv_processor

class lead_controller:
	
	########## From measurements ###########
	# width = npx*altd*0.005149 mm         #       
	# height = npx*altd*0.004702 mm        #
	########################################

	def navdataCallback(self, msg):
		self.nd_logger(msg)
		
		
	def __init__(self):
		self.reftm = time()
		self.cmd_log = {'tm':[], 'tw':[]}
		self.nd_log = {'tm':[], 'ph':[], 'th':[], 'ps':[], 'vx':[], 'vy':[], 'vz':[], 'al':[]}
		self.lasterr = (0.0,0.0)
		self.lastcmd = (0.0,0.0)
		self.seq = 0
		self.lastseq = 0			#used by main_procedure_callback for checking if the navdata is new
		self.mks_log = {'tm':[], 'coords':[], 'mids':[]}
		self.mksseq = 0
		self.lastmksseq = 0
		self.trackmid = 9
		self.misslimit = 12
		self.misstracktimes = self.misslimit
		self.noframelimit = 10
		self.noframetimes = self.noframelimit
		self.hoverflag = False
		
		self.twist = Twist()
		self.cmdpub = rospy.Publisher('cmd_vel', Twist)
		self.landpub = rospy.Publisher('/ardrone/land', Empty)
		self.resetpub = rospy.Publisher('/ardrone/reset', Empty)
		self.takeoffpub = rospy.Publisher('/ardrone/takeoff', Empty)
		self.navdatasub = rospy.Subscriber('/ardrone/navdata', Navdata, self.navdataCallback)
		self.camselectpub = rospy.Publisher('/ardrone/camselect', UInt8)
		self.hoverpub = rospy.Publisher('/ardrone/hover', Empty)
		
		self.ref = {'al':1300, 'ps':0.0}
		self.error = {'al':[], 'ps':[]}
		self.pnotr = True
	
	def nd_logger(self,msg):
		self.nd_log['tm'].append(time()-self.reftm)
		self.nd_log['th'].append(msg.rotY)
		self.nd_log['ph'].append(msg.rotX)
		self.nd_log['ps'].append(msg.rotZ)
		self.nd_log['vx'].append(msg.vx)
		self.nd_log['vy'].append(msg.vy)
		self.nd_log['al'].append(msg.altd)
		self.error['al'].append(self.ref['al']-msg.altd)
		self.error['ps'].append(self.ref['ps']-msg.rotZ)
		self.seq = self.seq + 1
	
	def cmd_logger(self,twcmd):
		self.cmd_log['tm'].append(time()-self.reftm)
		self.cmd_log['tw'].append(twcmd)
	
	def visioninfo_logger(self,coords, mids):
		self.mks_log['tm'].append(time()-self.reftm)
		self.mks_log['coords'].append(coords)
		self.mks_log['mids'].append(mids)
		self.mksseq = self.mksseq + 1
		#print coords, mids
	
	def main_procedure(self):
		sleep(1)	#nb: sleep 0.3 is min necessary wait before you can publish. perhaps bc ros master takes time to setup publisher.
		self.camselectpub.publish(1);	print 'published camselect = downward facing cam'
		self.icp = image_conv_processor(self)
		self.takeoffpub.publish(Empty()); self.hoverpub.publish(Empty()); sleep(5); print '4'; sleep(1); print '3'; sleep(1); print '2'; sleep(1); print '1'; sleep(1)
		rospy.Timer(rospy.Duration(1.0/20.0), self.main_timer_callback)
	
	def main_timer_callback(self,event):
		updatecmd = False
		if self.seq != self.lastseq:
			self.twist.linear.z = max(min(0.0017*self.error['al'][-1], 1.0), -1.0)
			#self.twist.angular.z = max(min(self.error['ps'][-1]/150, 1.0), -1.0)
			#print 'error, twist: ', self.error['ps'][-1], ',     ', self.twist.angular.z
			updatecmd = True
			self.lastseq = self.seq
		else:
			pass
			#print '------------------ No New Navdata -------------------'
		
		maxpr = 0.1
		if self.mksseq != self.lastmksseq:
			if len(self.mks_log['coords'][-1]) != 0:
				self.misstracktimes = 0
				errinpx = self.mks_log['coords'][-1][self.mks_log['mids'][-1].index(self.trackmid)]
				alt = self.nd_log['al'][-1]
				errx = errinpx[0]*alt*0.004702-alt*self.nd_log['th'][-1]*pi/180
				erry = errinpx[1]*alt*0.005149+alt*self.nd_log['ph'][-1]*pi/180
				#errx = errinpx[0]*alt*0.004702
				#erry = errinpx[1]*alt*0.005149
				if self.lasterr == None:
					self.lasterr = (errx, erry)
				k=0.0003; g=2.5; w=16.5
				#cmx=(36-w*g)/(36+w*g)*self.lastcmd[0]+k*g/(36+w*g)*((36+w/g)*errx-(36-w/g)*self.lasterr[0])
				#cmy=(36-w*g)/(36+w*g)*self.lastcmd[1]+k*g/(36+w*g)*((36+w/g)*erry-(36-w/g)*self.lasterr[1])
				cmx=(36.0-w*g)/(36.0+w*g)*self.lastcmd[0]+k*g/(36.0+w*g)*((w/g)*(errx+self.lasterr[0])-1.25*self.nd_log['vx'][-1])
				cmy=(36.0-w*g)/(36.0+w*g)*self.lastcmd[1]+k*g/(36.0+w*g)*((w/g)*(erry+self.lasterr[1])-1.25*self.nd_log['vy'][-1])
				self.twist.linear.x = max(min(cmx,maxpr),-maxpr)
				self.twist.linear.y = max(min(cmy,maxpr),-maxpr)
				updatecmd = True
				self.lasterr = (errx, erry)
				self.lastcmd = (cmx, cmy)
			else:
				if self.misstracktimes<self.misslimit:
					self.misstracktimes = self.misstracktimes + 1
				#elif self.misstracktimes>=self.misslimit and abs(self.nd_log['al'][-1]-self.ref['al'])<100:
				#	self.hoverpub.publish(Empty())	#because no markers detected
				#	self.lasterr = (0.0,0.0)
				#	self.lastcmd = (0.0,0.0); 
				#	updatecmd = False; print 'no markers'
				else:
					self.twist.linear.x = 0.0; self.twist.linear.y = 0.0
					self.lasterr = None
					#self.lasterr = (0.0,0.0)
					self.lastcmd = (0.0,0.0)
					updatecmd = True; print 'no markers. cmd height and yaw'
			
			self.lastmksseq = self.mksseq
			self.noframetimes = 0
			#endif there is a new frame
		
		else:
			if self.noframetimes < self.noframelimit:
				self.noframetimes = self.noframetimes + 1
			elif self.noframetimes >= self.noframelimit and self.hoverflag == False:
				self.hoverpub.publish(Empty())	#because continuously no new frames
				self.hoverflag = True
				self.lasterr = (0.0,0.0)
				self.lastcmd = (0.0,0.0)
				updatecmd = False; print 'no frame, hover'
			else:
				self.lasterr = (0.0,0.0)
				self.lastcmd = (0.0,0.0)
				updatecmd = False; print 'no frame, already hovering'
			#endif there's no new frame
		
		if updatecmd == True:
			self.hoverflag = False
			self.cmdpub.publish(self.twist)
			self.cmd_logger(self.twist)
			print 'twist: \n', self.twist
			
			

def main(args):
	rospy.init_node('drone_lead_controller', anonymous=True)
	slc = lead_controller()
	slc.main_procedure()
	rospy.spin()
	
if __name__ == '__main__':
	main(sys.argv)
