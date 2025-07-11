#!/usr/bin/env python
# -*- coding: utf-8 -*-

from sensor_msgs.msg import LaserScan
import rospy
from geometry_msgs.msg import Twist

def velocity_publisher(linex,liney,angle,Time):
    
    Caculate = 0 
    twist = Twist()
    while (True):
        twist.linear.x = linex
        twist.linear.y = liney
        twist.angular.z = angle
        pub.publish(twist)
        # rospy.loginfo("linear.x = %.2f,linear.y = %.2f, angular.z = %.2f", 
        #                 twist.linear.x, twist.linear.y ,twist.angular.z)
        Caculate += 1
        rospy.sleep(1)
        if Caculate >= Time:
            return 0

def laser_callback(msg):
    # 打印雷达数据的基本信息
    
    front_distance = get_distance_at_angle(msg,3.14)  #0.30
    right_distance = get_distance_at_angle(msg,1.57)    #0.28
    left_distance = get_distance_at_angle(msg,-1.57)    #0.28

    rospy.loginfo("最小角度: %.2f, 最大角度: %.2f", msg.angle_min, msg.angle_max)
    rospy.loginfo("最小范围: %.2f, 最大范围: %.2f", msg.range_min, msg.range_max)
    rospy.loginfo("雷达数据: 前方距离:%.2f  左侧距离%.2f  右侧距离%.2f ",front_distance,left_distance,right_distance)




    # num_ranges = len(msg.ranges)
    # middle_index = num_ranges // 2
    # front_distance = msg.ranges[middle_index]

    # if front_distance < msg.range_max:
    #     rospy.loginfo("Front distance: %.2f meters", front_distance)
    # else:
        # rospy.loginfo("No object detected in front (out of range)")

def get_distance_at_angle(scan_msg, target_angle):
    """
    获取指定角度的距离数据
    :param scan_msg: LaserScan 消息
    :param target_angle: 目标角度（弧度）
    :return: 距离值（米）
    """
    # 计算目标角度对应的索引
    index = int((target_angle - scan_msg.angle_min) / scan_msg.angle_increment)

    # 确保索引在有效范围内
    if 0 <= index < len(scan_msg.ranges):
        return scan_msg.ranges[index]
    else:
        return float('inf')  # 如果索引无效，返回无穷大

if __name__ == '__main__':
    rospy.init_node('wzd', anonymous=True)
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=3)
    rospy.Subscriber('/scan', LaserScan, laser_callback)

    # velocity_publisher(0.5,0,0,8)
    # velocity_publisher(0,0,0,1)
    # # velocity_publisher(0,1,0,5)
    # # velocity_publisher(0,0,0,1) #stop
    # velocity_publisher(0,0,1,5)
    # velocity_publisher(0,0,0,1)
    # velocity_publisher(0.5,0,0,8)
    # velocity_publisher(0,0,0,1)
    # velocity_publisher(0,0,1,5)
    # velocity_publisher(0,0,0,1)

    rospy.spin()