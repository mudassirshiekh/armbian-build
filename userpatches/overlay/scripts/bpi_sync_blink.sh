#!/bin/bash
# banana_led_blink.sh

while true; do
    echo "1" > /sys/class/leds/bananapi:green:user/brightness
    echo "1" > /sys/class/leds/bananapi:red:user/brightness
    sleep 1
    echo "0" > /sys/class/leds/bananapi:green:user/brightness
    echo "0" > /sys/class/leds/bananapi:red:user/brightness
    sleep 1
done
