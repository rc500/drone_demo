#!/usr/bin/env python
import roslib; roslib.load_manifest('drone_demo')
import rospy

from drone_demo.msg import Navdata
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty, UInt8

from time import time, sleep
import sys

from image_conv_processor import image_conv_processor

class demo_controller:

	def navdataCallback(self, msg):
		self.nd_logger(msg)
		
		
	def __init__(self):
		self.reftm = time()
		self.cmd_log = {'tm':[], 'lz':[]}
		self.nd_log = {'tm':[], 'ph':[], 'th':[], 'ps':[], 'vx':[], 'vy':[], 'vz':[], 'al':[]}
		self.seq = 0
		self.lastseq = 0			#used by main_procedure_callback for checking if the data used is new
		
		self.twist = Twist()
		self.cmdpub = rospy.Publisher('cmd_vel', Twist)
		self.landpub = rospy.Publisher('/ardrone/land', Empty)
		self.resetpub = rospy.Publisher('/ardrone/reset', Empty)
		self.takeoffpub = rospy.Publisher('/ardrone/takeoff', Empty)
		self.navdatasub = rospy.Subscriber('/ardrone/navdata', Navdata, self.navdataCallback)
		self.camselectpub = rospy.Publisher('/ardrone/camselect', UInt8)
		
		self.ref = {'al':900}
		self.error = {'al':[]}
	
	def nd_logger(self,msg):
		self.nd_log['tm'].append(time()-self.reftm)
		self.nd_log['th'].append(msg.rotY)
		self.nd_log['vx'].append(msg.vx)
		self.nd_log['al'].append(msg.altd)
		self.error['al'].append(self.ref['al']-msg.altd)
		self.seq = self.seq + 1
		print 'altd: ', msg.altd
	
	def cmd_logger(self,twistcmd):
		self.cmd_log['tm'].append(time()-self.reftm)
		self.cmd_log['lz'].append(twistcmd.linear.z)
	
	def visioninfo_logger(self,vmsg):
		pass
	
	def main_procedure(self):
		sleep(0.5)	#nb: sleep 0.3 is min necessary wait before you can publish. perhaps bc ros master takes time to setup publisher.
		self.camselectpub.publish(1);	print 'published camselect = downward facing cam'
		#self.icp = image_conv_processor()
		self.takeoffpub.publish(Empty())
		sleep(7); print '4'; sleep(1); print '3'; sleep(1); print '2'; sleep(1); print '1'; sleep(1)
		rospy.Timer(rospy.Duration(1.0/40), self.main_procedure_callback)
	
	def main_procedure_callback(self,event):
		if self.seq != self.lastseq:
			self.twist.linear.z = max(min(0.0017*self.error['al'][-1], 1.0), -1.0)
			self.cmdpub.publish(self.twist)
			self.cmd_logger(self.twist)
			self.lastseq = self.seq
			print '****************** ', 'seq: ', self.lastseq, 'cmd: ', self.twist.linear.z, ' ********************'
		else:
			print '------------------ NO NEW DATA -------------------'
			

def main(args):
	rospy.init_node('drone_demo_controller', anonymous=True)
	dc = demo_controller()
	dc.main_procedure()
	rospy.spin()
	
if __name__ == '__main__':
	main(sys.argv)
