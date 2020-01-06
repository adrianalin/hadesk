#!/bin/sh

# disable the GPIO backlight control
echo 0 > /sys/class/backlight/soc\:backlight/brightness


echo 0 > /sys/class/pwm/pwmchip0/export
echo 1000000 > /sys/class/pwm/pwmchip0/pwm0/period
# 30% brightness
echo 300000 > /sys/class/pwm/pwmchip0/pwm0/duty_cycle
echo 1 > /sys/class/pwm/pwmchip0/pwm0/enable