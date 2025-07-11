#!/usr/bin/env python
#coding=utf-8

import serial
import roslib; roslib.load_manifest('mbot_bringup')
import rospy
from geometry_msgs.msg import Twist, Quaternion, TransformStamped
from math import sqrt, atan2, pow
from threading import Thread
from nav_msgs.msg import Odometry
import time

if __name__ == '__main__':
    print('serial')
    ser = serial.Serial("/dev/carserial",9600)
    if ser.is_open:
        print('open_success')
    time.sleep(1)
    ser.write(b'\x11\x00\x00\x3c\x00\x00\x00\x00')
    print('send_success_1')
    time.sleep(5)
    ser.write(b'\x11\x00\x00\x00\x00\x00\x00\x00')
    print('send_success_2')
    
