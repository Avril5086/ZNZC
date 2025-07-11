#!/usr/bin/env python
# -*- coding: UTF-8 -*-
from os import setgid
from turtle import pu
import rospy
import time
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal,MoveBaseActionResult,MoveBaseActionGoal
from grab.srv  import    *
from std_srvs.srv  import    *
sortlist=[0,0,0,0,0,0]
a = 12
b=1
def callback(msg):
    global a
    global sortlist
    if msg.status.status == 3:  # 当前目标点状态为"REACHED"
        a=a+1
        rospy.loginfo('Goal reached')
        print (a)
        if(a==0):
            middle()  
        if(a==1): 
            sort0()  
            print ("前往第1个点")
        #1号识别口
        if(a==2): 
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort1()
        if(a==3):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort1_1()
        if(a==4):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort1_1_1()

        #2号识别口
        if(a==5):
            time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort2()
        if(a==6):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort1_2()
        if(a==7):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort1_2_1()
    
        if(a==8):
            time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort3()
        if(a==9):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort4()

        # if(a==10):
        #     time.sleep(1)
        #     sort4_1()
        # if(a==10):
        #     # time.sleep(3)
        #     # grab()
        #     # put()
        #     time.sleep(1)
        #     turn()
        
        if(a==10):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort5()

        # if(a==11):
        #     time.sleep(1)
        #     sort5_1()

        if(a==11):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort6()
        if(a==12):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort7()
        if(a==13):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort8()
        
        #3号识别口
        if(a==14):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort9()
        if(a==14):
            time.sleep(1)
            sort2_1()
        if(a==15):
            time.sleep(3)
            sort2_1_1()
        #4号识别口
        if(a==16):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort10()
        if(a==17):
            time.sleep(1)
            sort2_2()
        if(a==18):
            time.sleep(3)
            sort2_2_1()
        
        if(a==20):
            time.sleep(1)
            sort2_2_2()

        if(a==19):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            sort11()
        if(a==20):
            # time.sleep(3)
            # grab()
            # put()
            time.sleep(1)
            load()

def start():  #前往起始点
    goal=MoveBaseActionGoal()
    
    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 0.129798740149
    goal.goal.target_pose.pose.position.y= 0.0993447899818
    goal.goal.target_pose.pose.orientation.z = -0.00420164058524
    goal.goal.target_pose.pose.orientation.w = 0.999991173069
      
    Npub.publish(goal)
   
def middle():  #前往中间点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x= 2.91623359201
    # goal.goal.target_pose.pose.position.y= 0.0654584330391
    # goal.goal.target_pose.pose.orientation.z = 0.00781518178483
    # goal.goal.target_pose.pose.orientation.w = 0.999969461001

    goal.goal.target_pose.pose.position.x= 3.06226862266
    goal.goal.target_pose.pose.position.y=  0.0321690675892
    goal.goal.target_pose.pose.orientation.z =-0.0335138288977
    goal.goal.target_pose.pose.orientation.w =  0.999438253857
      
    Npub.publish(goal)

def sort0():  #前往1号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x= 3.05629179186
    # goal.goal.target_pose.pose.position.y= 0.426845323467
    # goal.goal.target_pose.pose.orientation.z =  0.636766207071
    # goal.goal.target_pose.pose.orientation.w = 0.771056935338
    goal.goal.target_pose.pose.position.x= 3.07803330789
    goal.goal.target_pose.pose.position.y= 0.449132875135
    goal.goal.target_pose.pose.orientation.z =0.705672978213
    goal.goal.target_pose.pose.orientation.w =0.70853768271
    Npub.publish(goal)

def sort1():  #前往2号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 2.38997007037
    goal.goal.target_pose.pose.position.y= 0.574019506426
    goal.goal.target_pose.pose.orientation.z = 0.999746640733
    goal.goal.target_pose.pose.orientation.w = .0225089835873
    Npub.publish(goal)
def sort2():  #前往3号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x=  1.34464923253
    goal.goal.target_pose.pose.position.y=  0.596362559701
    goal.goal.target_pose.pose.orientation.z = -0.999874083434
    goal.goal.target_pose.pose.orientation.w = 0.0158687515925
    Npub.publish(goal)
def sort3():  #前往4号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x=  0.145475444021
    # goal.goal.target_pose.pose.position.y= 0.673861851086
    # goal.goal.target_pose.pose.orientation.z = 0.998054712683
    # goal.goal.target_pose.pose.orientation.w = 0.0623441295679

    goal.goal.target_pose.pose.position.x=  0.445692143155
    goal.goal.target_pose.pose.position.y=  0.474487374993
    goal.goal.target_pose.pose.orientation.z = 0.99661505637
    goal.goal.target_pose.pose.orientation.w = 0.0822096674183

    Npub.publish(goal)
def sort4():  #前往5号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 0.35501619012
    goal.goal.target_pose.pose.position.y= 1.85329364861
    goal.goal.target_pose.pose.orientation.z =   0.708624972833
    goal.goal.target_pose.pose.orientation.w = 0.70558532289


    Npub.publish(goal)
def sort5():  #前往6号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x=  1.5805193061
    goal.goal.target_pose.pose.position.y=  3.21705093931
    goal.goal.target_pose.pose.orientation.z =  0.164159280758
    goal.goal.target_pose.pose.orientation.w = 0.98643384499


    Npub.publish(goal)
def sort6():  #前往7号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 2.5084010656
    goal.goal.target_pose.pose.position.y= 2.44951937225
    goal.goal.target_pose.pose.orientation.z = -0.700009293665
    goal.goal.target_pose.pose.orientation.w = 0.714133733122



    Npub.publish(goal)
def turn():  #前往7号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 0.789255385445
    goal.goal.target_pose.pose.position.y= 2.11109357419
    goal.goal.target_pose.pose.orientation.z = 0.0525772500643
    goal.goal.target_pose.pose.orientation.w = 0.998616859849



    Npub.publish(goal)
def sort7():  #前往8号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 3.02251963279
    goal.goal.target_pose.pose.position.y= 2.36895657598
    goal.goal.target_pose.pose.orientation.z = -0.0128859597634
    goal.goal.target_pose.pose.orientation.w =  0.999916972574




    Npub.publish(goal)
def sort8():  #前往9号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 3.05930002185
    goal.goal.target_pose.pose.position.y= 4.24563842106
    goal.goal.target_pose.pose.orientation.z = 0.673740902478
    goal.goal.target_pose.pose.orientation.w = 0.738967655806

    # goal.goal.target_pose.pose.position.x= 3.07409721867
    # goal.goal.target_pose.pose.position.y= 4.41831132989
    # goal.goal.target_pose.pose.orientation.z =  0.718602336632
    # goal.goal.target_pose.pose.orientation.w = 0.695421226155


    Npub.publish(goal)


def sort9():  #前往10号点
    goal=MoveBaseActionGoal()

    # goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x= 2.51973960829
    # goal.goal.target_pose.pose.position.y= 4.46034408209
    # goal.goal.target_pose.pose.orientation.z = 0.999740689482
    # goal.goal.target_pose.pose.orientation.w =  0.0227717762683

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 2.54293541633
    goal.goal.target_pose.pose.position.y= 4.43376156815
    goal.goal.target_pose.pose.orientation.z = -0.999921713903
    goal.goal.target_pose.pose.orientation.w =  0.0125126362094

    Npub.publish(goal)
def sort10():  #前11号点
    goal=MoveBaseActionGoal()

    # goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x=  1.4561515553
    # goal.goal.target_pose.pose.position.y= 4.42146430718
    # goal.goal.target_pose.pose.orientation.z =  0.999999886064
    # goal.goal.target_pose.pose.orientation.w =  0.00047735952822

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x=  1.6861651469
    goal.goal.target_pose.pose.position.y= 4.43693313802
    goal.goal.target_pose.pose.orientation.z =  -0.999172389909
    goal.goal.target_pose.pose.orientation.w =   0.0406759786984


    Npub.publish(goal)
def sort11():  #前12号点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 0.175076065781
    goal.goal.target_pose.pose.position.y= 4.4122384885
    goal.goal.target_pose.pose.orientation.z = 0.999230291622
    goal.goal.target_pose.pose.orientation.w = 0.0392278511369

    Npub.publish(goal)   
def load():  #前往卸货点
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= -0.154383856084
    goal.goal.target_pose.pose.position.y= 0.122650547828
    goal.goal.target_pose.pose.orientation.z = 0.0019168118772
    goal.goal.target_pose.pose.orientation.w = 0.999998162914

    Npub.publish(goal)


 #1号识别口
def sort1_1():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x=  2.35376450792
    # goal.goal.target_pose.pose.position.y= 0.789677310118
    # goal.goal.target_pose.pose.orientation.z = 0.644451066193
    # goal.goal.target_pose.pose.orientation.w = 0.76464555402

    goal.goal.target_pose.pose.position.x=2.34405840604
    goal.goal.target_pose.pose.position.y= 0.654954818062
    goal.goal.target_pose.pose.orientation.z = 0.619913371625
    goal.goal.target_pose.pose.orientation.w = 0.784670256656   

    Npub.publish(goal)

def sort1_1_1():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x=  2.39556025925
    goal.goal.target_pose.pose.position.y= 0.573585806367
    goal.goal.target_pose.pose.orientation.z = 0.668232021758
    goal.goal.target_pose.pose.orientation.w = 0.743952932044
    Npub.publish(goal)
 #2号识别口
def sort1_2():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x=  1.31596210524
    goal.goal.target_pose.pose.position.y= 0.662955796947
    goal.goal.target_pose.pose.orientation.z = 0.759967709821
    goal.goal.target_pose.pose.orientation.w = 0.649960829612

    Npub.publish(goal)

def sort1_2_1():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x=  1.32203425448
    goal.goal.target_pose.pose.position.y= 0.536122199513
    goal.goal.target_pose.pose.orientation.z =  0.698113039067
    goal.goal.target_pose.pose.orientation.w = 0.715987559029

    Npub.publish(goal)


 #3号识别口
def sort2_1(): 
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x=2.73356551576
    # goal.goal.target_pose.pose.position.y=  4.48372186084
    # goal.goal.target_pose.pose.orientation.z =-0.999405907315
    # goal.goal.target_pose.pose.orientation.w = 0.0344649448587

    goal.goal.target_pose.pose.position.x= 2.37487396577
    goal.goal.target_pose.pose.position.y=4.15001562891
    goal.goal.target_pose.pose.orientation.z =-0.644437712573
    goal.goal.target_pose.pose.orientation.w = 0.764656808388

    # goal.goal.target_pose.pose.position.x= 2.32296122416
    # goal.goal.target_pose.pose.position.y= 4.39758742372
    # goal.goal.target_pose.pose.orientation.z =-0.6670962304
    # goal.goal.target_pose.pose.orientation.w = 0.744971556092

    Npub.publish(goal)  

def sort2_1_1():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x= 2.3611605886
    # goal.goal.target_pose.pose.position.y= 4.36390214649
    # goal.goal.target_pose.pose.orientation.z =0.999524205359
    # goal.goal.target_pose.pose.orientation.w =0.0308441712704
    # goal.goal.target_pose.pose.position.x= 2.55693033263
    # goal.goal.target_pose.pose.position.y= 4.40673962708
    # goal.goal.target_pose.pose.orientation.z =-0.988127488862
    # goal.goal.target_pose.pose.orientation.w =0.153636147293
    goal.goal.target_pose.pose.position.x= 2.22634886065
    goal.goal.target_pose.pose.position.y= 4.42026047644
    goal.goal.target_pose.pose.orientation.z = -0.999901875804
    goal.goal.target_pose.pose.orientation.w =0.0140085246871

    Npub.publish(goal)  

 #4号识别口
def sort2_2():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x=1.32630982584
    # goal.goal.target_pose.pose.position.y=4.26358984337
    # goal.goal.target_pose.pose.orientation.z = -0.748880803106
    # goal.goal.target_pose.pose.orientation.w = 0.662704717607

    goal.goal.target_pose.pose.position.x=1.33773774015
    goal.goal.target_pose.pose.position.y=4.1971730331
    goal.goal.target_pose.pose.orientation.z =-0.694060340075
    goal.goal.target_pose.pose.orientation.w =  0.71991683154

    Npub.publish(goal)  

def sort2_2_1():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    # goal.goal.target_pose.pose.position.x=1.36555526962
    # goal.goal.target_pose.pose.position.y=4.35807924394
    # goal.goal.target_pose.pose.orientation.z =-0.698211010733
    # goal.goal.target_pose.pose.orientation.w = 0.715892020133

    # goal.goal.target_pose.pose.position.x= 1.51216962901
    # goal.goal.target_pose.pose.position.y=4.37447861371
    # goal.goal.target_pose.pose.orientation.z =-0.983207003999
    # goal.goal.target_pose.pose.orientation.w =0.18249380068

    goal.goal.target_pose.pose.position.x= 1.77187238612
    goal.goal.target_pose.pose.position.y=4.43087053941
    goal.goal.target_pose.pose.orientation.z =-0.999978203267
    goal.goal.target_pose.pose.orientation.w =0.00660249888747

    Npub.publish(goal)  

def sort5_1():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x=0.850985746214
    goal.goal.target_pose.pose.position.y=2.03239221168
    goal.goal.target_pose.pose.orientation.z =0.175300663867
    goal.goal.target_pose.pose.orientation.w = 0.984514945162

    Npub.publish(goal)  

def sort2_2_2():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 0.872581613999
    goal.goal.target_pose.pose.position.y= 4.41187624278
    goal.goal.target_pose.pose.orientation.z =  -0.999669538009
    goal.goal.target_pose.pose.orientation.w =  0.0257063178379

    Npub.publish(goal)    


def sort4_1():
    goal=MoveBaseActionGoal()

    goal.goal.target_pose.header.frame_id="map"
    goal.goal.target_pose.pose.position.x= 0.727746376341
    goal.goal.target_pose.pose.position.y= 2.0599104277
    goal.goal.target_pose.pose.orientation.z =0.01164877594
    goal.goal.target_pose.pose.orientation.w =0.999932150708

    Npub.publish(goal)    

# def put():   
#     Grab("put")
#     print("put")
# def grab():   
#     Grab("grab")
#     print("grab")
# def back():   
#     Grab("back")
#     print("back")
# def ready():    
#     Grab("ready")
#     print("ready")
# def unload():    
#     Grab("unload")
#     print("unload")


rospy.init_node('grab_navigation')
Npub = rospy.Publisher('/move_base/goal',MoveBaseActionGoal,queue_size=10)   #Topic:发送目标点
Nsub = rospy.Subscriber('/move_base/result',MoveBaseActionResult, callback)  #Topic:接受移动情况  3时为好

# rospy.wait_for_service('grabserver')
# Grab = rospy.ServiceProxy('grabserver',GrabServer)   #Service: 抓取服务 
time.sleep(1)

sort7()  #前往起始点
rospy.spin()


