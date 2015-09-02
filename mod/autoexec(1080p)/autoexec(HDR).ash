#by serCliff
#USE AT YOUR OWN RISK
#buzzer on on boot means autoexec.ash executed

#set buzzer volume 1-150
t pwm 1 set_level 30
t pwm 1 enable
sleep 1
t pwm 1 disable
#begin

#SET HDR TRIM LEVELS, SET GAMMA
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
t ia2 -adj gamma 255

#set noise reduction value to 1024
t ia2 -adj tidx -1 1024 -1


#BITRATES

#set bitrate 1280x720 240fps 25mbps
writew 0xC05C19F6 0x41C8
#set bitrate 1280x720 120fps 25mbps
writew 0xC05C1966 0x41C8
#set bitrate 1920x1080 30fps 25Mbps
writew 0xC05C10C6 0x41C8
#set bitrate 1920x1080 60fps 25Mbps
writew 0xC05C1036 0x41C8

#DELETE JUNK FILES. Please check if your MEDIA folder is 100MEDIA
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.TXT'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.BIN'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.bin'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.UV'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.Y'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*thm.mp4'

#end
#long beep means the commands executed
t pwm 1 enable
sleep 1
t pwm 1 disable

