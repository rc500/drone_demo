#!/usr/bin/env python
import roslib; roslib.load_manifest('drone_demo')
import rospy

from drone_demo.msg import Navdata
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

from time import time
import sys

class demo_controller:
	reftm = time()
	cmd_log = []
	nd_log = {'tm':[], 'ph':[], 'th':[], 'ps':[], 'vx':[], 'vy':[], 'vz':[], 'al':[]}
	def navdataCallback(self, msg):
		self.nd_logger(msg)
		
		
	def __init__(self):
		self.cmdpub = rospy.Publisher('cmd_vel', Twist)
		self.landpub = rospy.Publisher('/ardrone/land', Empty)
		self.resetpub = rospy.Publisher('/ardrone/reset', Empty)
		self.takeoffpub = rospy.Publisher('/ardrone/takeoff', Empty)
		self.navdatasub = rospy.Subscriber('/ardrone/navdata', Navdata, self.navdataCallback)
	
	def nd_logger(self,msg):
		self.nd_log['tm'].append(time()-self.reftm)
		self.nd_log['th'].append(msg.rotY)
		self.nd_log['vx'].append(msg.vx)
		self.nd_log['al'].append(msg.altd)
		print msg


def main(args):
	rospy.init_node('drone_demo_controller', anonymous=True)
	dc = demo_controller()
	try:
		rospy.spin()
	except KeyboardInterrupt:
		print "Shutting down"
	finally:
		print dc.nd_log

if __name__ == '__main__':
	main(sys.argv)
