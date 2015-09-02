#by serCliff
#USE AT YOUR OWN RISK
#buzzer on on boot means autoexec.ash executed

#set buzzer volume 1-150
t pwm 1 set_level 30
t pwm 1 enable
sleep 1
t pwm 1 disable
#begin

#t ia2 -adj tidx [ev_idx][nf_idx][shutter_idx]", "-1 disable"
#looks like the values are between 0-16383 (0x0000-0x3FFF)
#set noise reduction value to 1024
t ia2 -adj tidx -1 1024 -1

#end
#long beep means the commands executed
t pwm 1 enable
sleep 2
t pwm 1 disable
