#!/bin/bash

cat recovery.img.* 2>/dev/null >> recovery.img
rm -f recovery.img.* 2>/dev/null
cat system/system/apex/com.android.art.release.apex.* 2>/dev/null >> system/system/apex/com.android.art.release.apex
rm -f system/system/apex/com.android.art.release.apex.* 2>/dev/null
cat system/system/apex/com.android.vndk.current.apex.* 2>/dev/null >> system/system/apex/com.android.vndk.current.apex
rm -f system/system/apex/com.android.vndk.current.apex.* 2>/dev/null
cat system/system/system_ext/app/OppoEngineerCamera/OppoEngineerCamera.apk.* 2>/dev/null >> system/system/system_ext/app/OppoEngineerCamera/OppoEngineerCamera.apk
rm -f system/system/system_ext/app/OppoEngineerCamera/OppoEngineerCamera.apk.* 2>/dev/null
cat system/system/system_ext/priv-app/Settings/Settings.apk.* 2>/dev/null >> system/system/system_ext/priv-app/Settings/Settings.apk
rm -f system/system/system_ext/priv-app/Settings/Settings.apk.* 2>/dev/null
cat system/system/system_ext/priv-app/SystemUI/SystemUI.apk.* 2>/dev/null >> system/system/system_ext/priv-app/SystemUI/SystemUI.apk
rm -f system/system/system_ext/priv-app/SystemUI/SystemUI.apk.* 2>/dev/null
cat odm/lib64/libstblur_capture_api.so.* 2>/dev/null >> odm/lib64/libstblur_capture_api.so
rm -f odm/lib64/libstblur_capture_api.so.* 2>/dev/null
cat my_preload/del-app/NashC_20730_Tiktok_EU/app_tt_oppo2021_yz1_MusicallyI18n_v18.2.0_ff0682c-32bit.apk.* 2>/dev/null >> my_preload/del-app/NashC_20730_Tiktok_EU/app_tt_oppo2021_yz1_MusicallyI18n_v18.2.0_ff0682c-32bit.apk
rm -f my_preload/del-app/NashC_20730_Tiktok_EU/app_tt_oppo2021_yz1_MusicallyI18n_v18.2.0_ff0682c-32bit.apk.* 2>/dev/null
cat my_stock/app/OppoCamera/OppoCamera.apk.* 2>/dev/null >> my_stock/app/OppoCamera/OppoCamera.apk
rm -f my_stock/app/OppoCamera/OppoCamera.apk.* 2>/dev/null
cat my_stock/priv-app/OppoGallery2/OppoGallery2.apk.* 2>/dev/null >> my_stock/priv-app/OppoGallery2/OppoGallery2.apk
rm -f my_stock/priv-app/OppoGallery2/OppoGallery2.apk.* 2>/dev/null
cat my_heytap/app/LatinImeGoogle/LatinImeGoogle.apk.* 2>/dev/null >> my_heytap/app/LatinImeGoogle/LatinImeGoogle.apk
rm -f my_heytap/app/LatinImeGoogle/LatinImeGoogle.apk.* 2>/dev/null
cat my_heytap/app/Maps/Maps.apk.* 2>/dev/null >> my_heytap/app/Maps/Maps.apk
rm -f my_heytap/app/Maps/Maps.apk.* 2>/dev/null
cat my_heytap/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null >> my_heytap/app/WebViewGoogle/WebViewGoogle.apk
rm -f my_heytap/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null
cat my_heytap/app/YouTube/YouTube.apk.* 2>/dev/null >> my_heytap/app/YouTube/YouTube.apk
rm -f my_heytap/app/YouTube/YouTube.apk.* 2>/dev/null
cat my_heytap/priv-app/GmsCore/GmsCore.apk.* 2>/dev/null >> my_heytap/priv-app/GmsCore/GmsCore.apk
rm -f my_heytap/priv-app/GmsCore/GmsCore.apk.* 2>/dev/null
cat my_heytap/priv-app/Velvet/Velvet.apk.* 2>/dev/null >> my_heytap/priv-app/Velvet/Velvet.apk
rm -f my_heytap/priv-app/Velvet/Velvet.apk.* 2>/dev/null
