#by serCliff
#USE AT YOUR OWN RISK
#buzzer on on boot means autoexec.ash executed

#set buzzer volume 1-150
t pwm 1 set_level 30
t pwm 1 enable
sleep 1
t pwm 1 disable
#begin

#MEJORA CALIDAD IMÁGENES
#vibrance/saturation adjustments
t ia2 -adj ev 0 0 140 0 0 150 0
#shadow/highlight clipping adjustments
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
#set gamma level
t ia2 -adj gamma 230
#enable 14 scene mode
t cal -sc 14

#REDUCCIÓN DE RUIDO
#t ia2 -adj tidx [ev_idx][nf_idx][shutter_idx]", "-1 disable"
#looks like the values are between 0-16383 (0x0000-0x3FFF)
#set noise reduction value to 1024
t ia2 -adj tidx -1 1024 -1

#BITRATES

#set bitrate 1280x720 240fps 35mbps
writew 0xC05C19F6 0x420C
#set bitrate 1280x720 120fps 35mbps
writew 0xC05C1966 0x420C
#set bitrate 1920x1080 30fps 35Mbps
writew 0xC05C10C6 0x420C
#set bitrate 1920x1080 60fps 35Mbps
writew 0xC05C1036 0x420C

#end
#long beep means the commands executed
t pwm 1 enable
sleep 1
t pwm 1 disable

