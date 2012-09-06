#!/usr/bin/env python
import roslib; roslib.load_manifest('drone_demo')
import rospy

from drone_demo.msg import Navdata
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty, UInt8

from time import time, sleep
import sys

from image_processor_lead import image_conv_processor

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
		self.lasterr = None
		self.lastcmd = None
		self.seq = 0
		self.lastseq = 0			#used by main_procedure_callback for checking if the navdata is new
		self.mks_log = {'tm':[], 'coords':[], 'mids':[]}
		self.mksseq = 0
		self.lastmksseq = 0
		self.trackmid = -1
		self.misslimit = 3
		self.misstracktimes = self.misslimit
		self.noframelimit = 10
		self.noframetimes = self.noframelimit
		
		self.twist = Twist()
		self.cmdpub = rospy.Publisher('cmd_vel', Twist)
		self.landpub = rospy.Publisher('/ardrone/land', Empty)
		self.resetpub = rospy.Publisher('/ardrone/reset', Empty)
		self.takeoffpub = rospy.Publisher('/ardrone/takeoff', Empty)
		self.navdatasub = rospy.Subscriber('/ardrone/navdata', Navdata, self.navdataCallback)
		self.camselectpub = rospy.Publisher('/ardrone/camselect', UInt8)
		self.hoverpub = rospy.Publisher('/ardrone/hover', Empty)
		
		self.ref = {'al':1500}
		self.error = {'al':[]}
	
	def nd_logger(self,msg):
		self.nd_log['tm'].append(time()-self.reftm)
		self.nd_log['th'].append(msg.rotY)
		self.nd_log['vx'].append(msg.vx)
		self.nd_log['al'].append(msg.altd)
		self.error['al'].append(self.ref['al']-msg.altd)
		self.seq = self.seq + 1
		#print 'altd: ', msg.altd
	
	def cmd_logger(self,twcmd):
		self.cmd_log['tm'].append(time()-self.reftm)
		self.cmd_log['tw'].append(twcmd)
	
	def visioninfo_logger(self,coords, mids):
		self.mks_log['tm'].append(time()-self.reftm)
		self.mks_log['coords'].append(coords)
		self.mks_log['mids'].append(mids)
		self.mksseq = self.mksseq + 1
	
	def main_procedure(self):
		sleep(1)	#nb: sleep 0.3 is min necessary wait before you can publish. perhaps bc ros master takes time to setup publisher.
		self.camselectpub.publish(1);	print 'published camselect = downward facing cam'
		self.icp = image_conv_processor(self)
		self.takeoffpub.publish(Empty())
		sleep(3); print '4'; sleep(1); print '3'; sleep(1); print '2'; sleep(1); print '1'; sleep(1)
		rospy.Timer(rospy.Duration(1.0/40), self.main_timer_callback)
	
	def main_timer_callback(self,event):
		updatecmd = False
		if self.seq != self.lastseq:
			self.twist.linear.z = max(min(0.0017*self.error['al'][-1], 1.0), -1.0)
			updatecmd = True
			#self.cmdpub.publish(self.twist)
			#self.cmd_logger(self.twist)
			self.lastseq = self.seq
			#print '****************** ', 'seq: ', self.lastseq, 'cmd: ', self.twist.linear.z, ' ********************'
		else:
			pass
			#print '------------------ No New Navdata -------------------'
		
		if self.mksseq != self.lastmksseq:
			if len(self.mks_log['coords'][-1]) != 0:
				if self.trackmid not in self.mks_log['mids'][-1] and self.misstracktimes<self.misslimit:
					self.misstracktimes = self.misstracktimes + 1
					self.twist.linear.x = 0; self.twist.linear.y = 0	#
					updatecmd = True	#
				elif self.trackmid not in self.mks_log['mids'][-1] and self.misstracktimes>=self.misslimit:
					self.trackmid = self.mks_log['mids'][-1][0]
					self.misstracktimes = 0
				else:
					self.misstracktimes = 0
				
				if self.trackmid in self.mks_log['mids'][-1]:
					errinpx = self.mks_log['coords'][-1][self.mks_log['mids'][-1].index(self.trackmid)]
					alt = self.nd_log['al'][-1]
					errinmmx = errinpx[0]*alt*0.005149; errinmmy = errinpx[1]*alt*0.004702
					if self.lasterr == None:
						self.lasterr = (errinmmx, errinmmy)
						self.lastcmd = (0.0,0.0)
					a = 0.88679; b = 0.0006; c = 3.78669; d = 3.76048
					cmdx = a*self.lastcmd[0] + b*(c*errinmmx - d*self.lasterr[0])
					cmdy = a*self.lastcmd[1] + b*(c*errinmmy - d*self.lasterr[1])
					#print (errinmmx, errinmmy)
					#self.twist.linear.x = max(min(cmdx, 0.1), -0.1)
					#self.twist.linear.y = max(min(cmdy, 0.1), -0.1)
					self.twist.linear.x = cmdx
					self.twist.linear.y = cmdy
					updatecmd = True
					self.lasterr = (errinmmx, errinmmy)
					self.lastcmd = (cmdx, cmdy)
			
			else:	#last mks_log entry is empty
				if self.misstracktimes<self.misslimit:
					self.misstracktimes = self.misstracktimes + 1
					#self.twist.linear.x = 0; self.twist.linear.y = 0
				else:
					self.misstracktimes = self.misslimit
					self.trackmid = -1
					#self.hoverpub.publish(Empty())
					#print 'hover - miss track of markers'
					#self.cmd_logger(Twist())
					#self.lasterr = None
					self.twist.linear.x = 0; self.twist.linear.y = 0
					updatecmd = True
			
			#self.cmdpub.publish(self.twist)
			#self.cmd_logger(self.twist)		
			self.lastmksseq = self.mksseq
			self.noframetimes = 0
			#endif there is a new frame
			
		else:	#there is not a new frame
			if self.noframetimes < self.noframelimit:
				self.noframetimes = self.noframetimes + 1
			else:
				pass
				#self.hoverpub.publish(Empty())
				#print 'hover - continuously no new frames!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
				#self.cmd_logger(Twist())
				#self.lasterr = None
				self.twist.linear.x = 0; self.twist.linear.y = 0
				updatecmd = True
			#print '------------------ No New Marker Data -------------------'
		
		if updatecmd:
			self.cmdpub.publish(self.twist)
			self.cmd_logger(self.twist)
			print 'twist: \n', self.twist.linear
			print 'trackmid: ', self.trackmid

			
				
			

def main(args):
	rospy.init_node('drone_lead_controller', anonymous=True)
	lc = lead_controller()
	lc.main_procedure()
	rospy.spin()
	
if __name__ == '__main__':
	main(sys.argv)
