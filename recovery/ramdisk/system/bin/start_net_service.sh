#***********************************************************
#** Copyright (C), 2008-2016, OPPO Mobile Comm Corp., Ltd.
#** VENDOR_EDIT
#**
#** Version: 1.0
#** Date : 2020/03/17
#** Author : JiaoBo@PSW.CN.WiFi.Basic.Custom.2870100, 2020/03/17
#** add for: recovery support wifi update
#**
#** ---------------------Revision History: ---------------------
#**  <author>    <data>       <version >       <desc>
#**  Jiao.Bo     2020/03/17     1.0     build this module
#****************************************************************/

# function: Execute WiFi switch
# $1: on / off
wifiSwicth() {
    swicth=$1
    echo "swicth = $swicth"
    if [ "$swicth" = "on" ]; then
        echo 1 > /dev/wmtWifi &
    elif [ "$swicth" = "off" ]; then
        echo 0 > /dev/wmtWifi &
    else
        echo "wifiSwicth, not support."
    fi
}

#step1 config wlan0 up
on="on"
wifiSwicth $on
sleep 3
busybox ifconfig -a > /tmp/ifconfig.txt
#step2 start wpa_supplicant process
setprop ctl.start wpa_supplicant
