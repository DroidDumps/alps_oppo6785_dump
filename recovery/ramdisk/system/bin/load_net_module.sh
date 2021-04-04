###
 # @Author: your name
 # @Date: 2020-10-20 20:31:03
 # @LastEditTime: 2020-10-20 20:37:42
 # @LastEditors: Please set LastEditors
 # @Description: In User Settings Edit
 # @FilePath: \undefinedc:\Users\80235507\Downloads\load_net_module.sh
### 
#!/sbin/sh
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

# function: start common depend on process
commonSetting() {
    chmod 755 /system/bin/iptables
    chmod 755 /system/bin/netutils-wrapper-1.0
    chmod 755 /system/bin/sh
    chmod 755 /system/bin/toybox
    setprop ctl.start  servicemanager
    setprop ctl.start hwservicemanager

    #mount nvdata
    mkdir -p /mnt/vendor/nvdata
    mount /dev/block/by-name/nvdata /mnt/vendor/nvdata

    mkdir -p /data/misc/wifi/sockets
    busybox chown 1010:1010 /data/misc/wifi/sockets
    busybox chmod 0770 /data/misc/wifi/sockets
    toybox chcon u:object_r:wpa_socket:s0 /data/misc/wifi/sockets
    touch /data/misc/wifi/wpa_supplicant.conf
    busybox chown 1010:1010 /data/misc/wifi/wpa_supplicant.conf
    busybox chmod 0770 /data/misc/wifi/wpa_supplicant.conf

    prjname=`getprop ro.boot.prjname`
    if [ -e /vendor/firmware/wifi_${prjname}.cfg ];then
        cp /vendor/firmware/wifi_${prjname}.cfg /vendor/firmware/wifi.cfg
    fi

    if [ -e /vendor/firmware/txpowerctrl_${prjname}.cfg ];then
        cp /vendor/firmware/txpowerctrl_${prjname}.cfg /vendor/firmware/txpowerctrl.cfg
    fi

    sleep 1
}

#step1 set common settings
commonSetting

#step2 remove file wmtWifi when wmtWifi is not an char device
charDevName="/dev/wmtWifi"
if [ -c "$charDevName" ]; then
    echo "$charDevName is char device"
else
    echo "$charDevName is not char device"
    rm -rf $charDevName
fi


#step3 insmod driver
platform=`getprop ro.board.platform`
echo "platform = $platform"
if [ "$platform" == "mt6885" -o "$platform" == "mt6889" ]; then
    setprop ctl.stop conninfra_loader
    /vendor/bin/conninfra_loader &
    /vendor/bin/wlan_assistant &
    insmod /vendor/lib/modules/conninfra.ko&

elif [ "$platform" == "mt6873" -o "$platform" == "mt6853" -o  "$platform" == "mt6779" -o "$platform" == "mt6771" ]; then
    setprop ctl.stop wmt_loader
    setprop ctl.stop wmt_launcher
    /vendor/bin/wmt_loader &
    /vendor/bin/wmt_launcher -p /vendor/firmware/ &
    insmod /vendor/lib/modules/wmt_drv.ko &

elif [ "$platform" == "mt6768" -o "$platform" == "mt6785" -o  "$platform" == "mt6765" -o "$platform" == "mt6833" ]; then
    setprop ctl.stop wmt_loader
    setprop ctl.stop wmt_launcher
    /vendor/bin/wmt_loader &
    /vendor/bin/wmt_launcher -p /vendor/firmware/ &
    insmod /vendor/lib/modules/wmt_drv.ko &

else
    echo "this wifi obj is not support."
fi

