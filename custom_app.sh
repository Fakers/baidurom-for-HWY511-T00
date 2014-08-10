#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
    echo ">>> in custom_app $apkBaseName"
    echo ">>> use Lcom/mediatek/notificationNotificationPlus$Builder instead of Landroid/app/NotificationManagerPlus in Phone"
    sed -i 's#Landroid/app/NotificationPlus$Builder#Lcom/mediatek/notification/NotificationPlus$Builder#g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali
fi

