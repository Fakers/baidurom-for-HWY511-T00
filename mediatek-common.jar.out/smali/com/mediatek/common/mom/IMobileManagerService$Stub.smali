.class public abstract Lcom/mediatek/common/mom/IMobileManagerService$Stub;
.super Landroid/os/Binder;
.source "IMobileManagerService.java"

# interfaces
.implements Lcom/mediatek/common/mom/IMobileManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/mom/IMobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/mom/IMobileManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.mom.IMobileManagerService"

.field static final TRANSACTION_attach:I = 0x3

.field static final TRANSACTION_cancelNotification:I = 0x1b

.field static final TRANSACTION_checkPermission:I = 0x10

.field static final TRANSACTION_checkPermissionAsync:I = 0x11

.field static final TRANSACTION_checkPermissionAsyncWithData:I = 0x13

.field static final TRANSACTION_checkPermissionWithData:I = 0x12

.field static final TRANSACTION_clearAllSettings:I = 0x5

.field static final TRANSACTION_clearPackageSettings:I = 0x6

.field static final TRANSACTION_deletePackage:I = 0x1a

.field static final TRANSACTION_detach:I = 0x4

.field static final TRANSACTION_enableInterceptionController:I = 0x1f

.field static final TRANSACTION_enablePermissionController:I = 0xa

.field static final TRANSACTION_forceStopPackage:I = 0x18

.field static final TRANSACTION_getBootReceiverEnabledSetting:I = 0x17

.field static final TRANSACTION_getInstalledPackages:I = 0xb

.field static final TRANSACTION_getInterceptionEnabledSetting:I = 0x20

.field static final TRANSACTION_getNotificationEnabledSetting:I = 0x1d

.field static final TRANSACTION_getPackageGrantedPermissions:I = 0xc

.field static final TRANSACTION_getParentPermission:I = 0x14

.field static final TRANSACTION_getUserConfirmTime:I = 0x15

.field static final TRANSACTION_getVersionName:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x19

.field static final TRANSACTION_registerManagerApListener:I = 0x7

.field static final TRANSACTION_setBootReceiverEnabledSetting:I = 0x16

.field static final TRANSACTION_setFirewallPolicy:I = 0x21

.field static final TRANSACTION_setNotificationCache:I = 0x1e

.field static final TRANSACTION_setNotificationEnabledSetting:I = 0x1c

.field static final TRANSACTION_setPermissionCache:I = 0xf

.field static final TRANSACTION_setPermissionRecord:I = 0xd

.field static final TRANSACTION_setPermissionRecords:I = 0xe

.field static final TRANSACTION_systemReady:I = 0x1

.field static final TRANSACTION_triggerManagerApListener:I = 0x8

.field static final TRANSACTION_triggerManagerApListenerAsync:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.mediatek.common.mom.IMobileManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/mom/IMobileManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/common/mom/IMobileManagerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/common/mom/IMobileManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 411
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    :goto_0
    return v11

    .line 42
    :sswitch_0
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v11, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->systemReady()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    const/4 v11, 0x1

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getVersionName()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    const/4 v11, 0x1

    goto :goto_0

    .line 62
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/common/mom/IMobileConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileConnectionCallback;

    move-result-object v0

    .line 65
    .local v0, _arg0:Lcom/mediatek/common/mom/IMobileConnectionCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z

    move-result v7

    .line 66
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v7, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    const/4 v11, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 72
    .end local v0           #_arg0:Lcom/mediatek/common/mom/IMobileConnectionCallback;
    .end local v7           #_result:Z
    :sswitch_4
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->detach()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v11, 0x1

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->clearAllSettings()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v11, 0x1

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->clearPackageSettings(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v11, 0x1

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 100
    .local v4, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->registerManagerApListener(ILandroid/os/IBinder;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 106
    .end local v0           #_arg0:I
    .end local v4           #_arg1:Landroid/os/IBinder;
    :sswitch_8
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    .line 111
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 117
    .local v4, _arg1:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 118
    .local v5, _arg2:I
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v7

    .line 119
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 114
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:I
    .end local v7           #_result:I
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/Bundle;
    goto :goto_2

    .line 125
    .end local v0           #_arg0:I
    .end local v4           #_arg1:Landroid/os/Bundle;
    :sswitch_9
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 130
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 136
    .restart local v4       #_arg1:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 138
    .restart local v5       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 139
    .local v6, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->triggerManagerApListenerAsync(ILandroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 133
    .end local v4           #_arg1:Landroid/os/Bundle;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Landroid/os/IBinder;
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/Bundle;
    goto :goto_3

    .line 145
    .end local v0           #_arg0:I
    .end local v4           #_arg1:Landroid/os/Bundle;
    :sswitch_a
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v0, 0x1

    .line 148
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->enablePermissionController(Z)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 147
    .end local v0           #_arg0:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 154
    :sswitch_b
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getInstalledPackages()Ljava/util/List;

    move-result-object v9

    .line 156
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 158
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 162
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_c
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 166
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 168
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    :sswitch_d
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    .line 175
    sget-object v11, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 180
    .local v0, _arg0:Lcom/mediatek/common/mom/PermissionRecord;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 178
    .end local v0           #_arg0:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/mediatek/common/mom/PermissionRecord;
    goto :goto_5

    .line 186
    .end local v0           #_arg0:Lcom/mediatek/common/mom/PermissionRecord;
    :sswitch_e
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    sget-object v11, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 189
    .local v3, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-virtual {p0, v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setPermissionRecords(Ljava/util/List;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 195
    .end local v3           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :sswitch_f
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    sget-object v11, Lcom/mediatek/common/mom/PermissionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 198
    .restart local v3       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    invoke-virtual {p0, v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setPermissionCache(Ljava/util/List;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 204
    .end local v3           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :sswitch_10
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 209
    .local v4, _arg1:I
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermission(Ljava/lang/String;I)I

    move-result v7

    .line 210
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 216
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v7           #_result:I
    :sswitch_11
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 222
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IRequestedPermissionCallback;

    move-result-object v5

    .line 223
    .local v5, _arg2:Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 229
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    :sswitch_12
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 235
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    .line 236
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 241
    .local v5, _arg2:Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermissionWithData(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v7

    .line 242
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 239
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v7           #_result:I
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/Bundle;
    goto :goto_6

    .line 248
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/Bundle;
    :sswitch_13
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .restart local v4       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    .line 255
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 261
    .restart local v5       #_arg2:Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IRequestedPermissionCallback;

    move-result-object v6

    .line 262
    .local v6, _arg3:Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->checkPermissionAsyncWithData(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 258
    .end local v5           #_arg2:Landroid/os/Bundle;
    .end local v6           #_arg3:Lcom/mediatek/common/mom/IRequestedPermissionCallback;
    :cond_6
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/Bundle;
    goto :goto_7

    .line 268
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/Bundle;
    :sswitch_14
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getParentPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 278
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 281
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getUserConfirmTime(J)J

    move-result-wide v7

    .line 282
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 288
    .end local v0           #_arg0:J
    .end local v7           #_result:J
    :sswitch_16
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    .line 293
    .local v4, _arg1:Z
    :goto_8
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setBootReceiverEnabledSetting(Ljava/lang/String;Z)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 292
    .end local v4           #_arg1:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 299
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_17
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getBootReceiverEnabledSetting(Ljava/lang/String;)Z

    move-result v7

    .line 303
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v7, :cond_8

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 304
    :cond_8
    const/4 v11, 0x0

    goto :goto_9

    .line 309
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_18
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->forceStopPackage(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 318
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_19
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_9

    .line 321
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 327
    .local v0, _arg0:Landroid/net/Uri;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/common/mom/IPackageInstallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IPackageInstallCallback;

    move-result-object v4

    .line 328
    .local v4, _arg1:Lcom/mediatek/common/mom/IPackageInstallCallback;
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 324
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v4           #_arg1:Lcom/mediatek/common/mom/IPackageInstallCallback;
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_a

    .line 334
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_1a
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->deletePackage(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 343
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1b
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->cancelNotification(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 352
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1c
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v4, 0x1

    .line 357
    .local v4, _arg1:Z
    :goto_b
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 356
    .end local v4           #_arg1:Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 363
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1d
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getNotificationEnabledSetting(Ljava/lang/String;)Z

    move-result v7

    .line 367
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v7, :cond_b

    const/4 v11, 0x1

    :goto_c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 368
    :cond_b
    const/4 v11, 0x0

    goto :goto_c

    .line 373
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_1e
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    sget-object v11, Lcom/mediatek/common/mom/NotificationCacheRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 376
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/NotificationCacheRecord;>;"
    invoke-virtual {p0, v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setNotificationCache(Ljava/util/List;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 382
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/NotificationCacheRecord;>;"
    :sswitch_1f
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c

    const/4 v0, 0x1

    .line 385
    .local v0, _arg0:Z
    :goto_d
    invoke-virtual {p0, v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->enableInterceptionController(Z)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 384
    .end local v0           #_arg0:Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 391
    :sswitch_20
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->getInterceptionEnabledSetting()Z

    move-result v7

    .line 393
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v7, :cond_d

    const/4 v11, 0x1

    :goto_e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 394
    :cond_d
    const/4 v11, 0x0

    goto :goto_e

    .line 399
    .end local v7           #_result:Z
    :sswitch_21
    const-string v11, "com.mediatek.common.mom.IMobileManagerService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 405
    .local v4, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_e

    const/4 v5, 0x1

    .line 406
    .local v5, _arg2:Z
    :goto_f
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->setFirewallPolicy(IIZ)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 405
    .end local v5           #_arg2:Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
