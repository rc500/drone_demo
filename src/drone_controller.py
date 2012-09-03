#!/usr/bin/env python
import roslib; roslib.load_manifest('drone_demo')
import rospy

from drone_demo.msg import Navdata
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty, UInt8

from time import time, sleep
import sys

from image_conv_processor import *

class demo_controller:

	def navdataCallback(self, msg):
		self.nd_logger(msg)
		
		
	def __init__(self):
		self.reftm = time()
		self.cmd_log = {'tm':[], 'cmd':[]}
		self.nd_log = {'tm':[], 'ph':[], 'th':[], 'ps':[], 'vx':[], 'vy':[], 'vz':[], 'al':[]}
		self.twist = Twist()
		
		self.cmdpub = rospy.Publisher('cmd_vel', Twist)
		self.landpub = rospy.Publisher('/ardrone/land', Empty)
		self.resetpub = rospy.Publisher('/ardrone/reset', Empty)
		self.takeoffpub = rospy.Publisher('/ardrone/takeoff', Empty)
		self.navdatasub = rospy.Subscriber('/ardrone/navdata', Navdata, self.navdataCallback)
		self.camselectpub = rospy.Publisher('/ardrone/camselect', UInt8)
	
	def nd_logger(self,msg):
		self.nd_log['tm'].append(time()-self.reftm)
		self.nd_log['th'].append(msg.rotY)
		self.nd_log['vx'].append(msg.vx)
		self.nd_log['al'].append(msg.altd)
		#print msg
	
	def cmd_logger(self,cmd):
		self.cmd_log['tm'].append(time()-self.reftm)
		self.cmd_log['cmd'].append(cmd)
	
	def visioninfo_logger(self,vmsg):
		pass


def main(args):
	rospy.init_node('drone_demo_controller', anonymous=True)
	
	dc = demo_controller()
	sleep(0.5)						
	#nb: sleep 0.3 is min necessary wait before you can publish. perhaps bc ros master takes time to setup publisher.
	dc.camselectpub.publish(1)
	print 'got here published camselect'
	dc.camselectpub.publish(0)
	print 'got further'
	
if __name__ == '__main__':
	main(sys.argv)
