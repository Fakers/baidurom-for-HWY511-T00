.class public abstract Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;
.super Landroid/os/Binder;
.source "IMtkAgpsManager.java"

# interfaces
.implements Lcom/mediatek/common/agps/IMtkAgpsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/agps/IMtkAgpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/agps/IMtkAgpsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.agps.IMtkAgpsManager"

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_extraCommand:I = 0x12

.field static final TRANSACTION_getCdmaProfile:I = 0x1d

.field static final TRANSACTION_getConfig:I = 0x5

.field static final TRANSACTION_getCpStatus:I = 0x10

.field static final TRANSACTION_getMode:I = 0x9

.field static final TRANSACTION_getNiStatus:I = 0xe

.field static final TRANSACTION_getProfile:I = 0x7

.field static final TRANSACTION_getRoamingStatus:I = 0x11

.field static final TRANSACTION_getSI3PartyMsisdn:I = 0x1a

.field static final TRANSACTION_getSILRMsisdn:I = 0x1b

.field static final TRANSACTION_getStatus:I = 0x3

.field static final TRANSACTION_getUpStatus:I = 0xf

.field static final TRANSACTION_niUserResponse:I = 0x13

.field static final TRANSACTION_setCdmaProfile:I = 0x1c

.field static final TRANSACTION_setConfig:I = 0x4

.field static final TRANSACTION_setCpEnable:I = 0xc

.field static final TRANSACTION_setMode:I = 0x8

.field static final TRANSACTION_setNiEnable:I = 0xa

.field static final TRANSACTION_setProfile:I = 0x6

.field static final TRANSACTION_setRoamingEnable:I = 0xd

.field static final TRANSACTION_setSI3PartyMsisdn:I = 0x18

.field static final TRANSACTION_setSILRMsisdn:I = 0x19

.field static final TRANSACTION_setUpEnable:I = 0xb

.field static final TRANSACTION_startSIAreaEvent:I = 0x16

.field static final TRANSACTION_startSILR:I = 0x14

.field static final TRANSACTION_startSIPeiodic:I = 0x15

.field static final TRANSACTION_stopTriggeredSession:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/agps/IMtkAgpsManager;
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
    const-string v1, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 327
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->enable()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->disable()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getStatus()Z

    move-result v2

    .line 63
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v2           #_result:Z
    :sswitch_4
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    sget-object v3, Lcom/mediatek/common/agps/MtkAgpsConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsConfig;

    .line 77
    .local v0, _arg0:Lcom/mediatek/common/agps/MtkAgpsConfig;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:Lcom/mediatek/common/agps/MtkAgpsConfig;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/mediatek/common/agps/MtkAgpsConfig;
    goto :goto_1

    .line 83
    .end local v0           #_arg0:Lcom/mediatek/common/agps/MtkAgpsConfig;
    :sswitch_5
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v2

    .line 85
    .local v2, _result:Lcom/mediatek/common/agps/MtkAgpsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v2, p3, v4}, Lcom/mediatek/common/agps/MtkAgpsConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v2           #_result:Lcom/mediatek/common/agps/MtkAgpsConfig;
    :sswitch_6
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    sget-object v3, Lcom/mediatek/common/agps/MtkAgpsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 105
    .local v0, _arg0:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/mediatek/common/agps/MtkAgpsProfile;
    goto :goto_2

    .line 111
    .end local v0           #_arg0:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :sswitch_7
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v2

    .line 113
    .local v2, _result:Lcom/mediatek/common/agps/MtkAgpsProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v2, p3, v4}, Lcom/mediatek/common/agps/MtkAgpsProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 119
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v2           #_result:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :sswitch_8
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setMode(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getMode()I

    move-result v2

    .line 136
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v2           #_result:I
    :sswitch_a
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    .line 145
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setNiEnable(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_5
    move v0, v3

    .line 144
    goto :goto_3

    .line 151
    :sswitch_b
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v0, v4

    .line 154
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setUpEnable(Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v3

    .line 153
    goto :goto_4

    .line 160
    :sswitch_c
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    .line 163
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setCpEnable(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v3

    .line 162
    goto :goto_5

    .line 169
    :sswitch_d
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v0, v4

    .line 172
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setRoamingEnable(Z)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v3

    .line 171
    goto :goto_6

    .line 178
    :sswitch_e
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getNiStatus()Z

    move-result v2

    .line 180
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v2           #_result:Z
    :sswitch_f
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getUpStatus()Z

    move-result v2

    .line 188
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v2           #_result:Z
    :sswitch_10
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getCpStatus()Z

    move-result v2

    .line 196
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 202
    .end local v2           #_result:Z
    :sswitch_11
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getRoamingStatus()Z

    move-result v2

    .line 204
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v2           #_result:Z
    :sswitch_12
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 215
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 220
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 221
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v1           #_arg1:Landroid/os/Bundle;
    .end local v2           #_result:I
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_7

    .line 227
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/Bundle;
    :sswitch_13
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->niUserResponse(II)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_14
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->startSILR()V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 245
    :sswitch_15
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->startSIPeiodic()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 252
    :sswitch_16
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->startSIAreaEvent()V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    :sswitch_17
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->stopTriggeredSession()V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    :sswitch_18
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setSI3PartyMsisdn([Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 275
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_19
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setSILRMsisdn(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 284
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getSI3PartyMsisdn()[Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .end local v2           #_result:[Ljava/lang/String;
    :sswitch_1b
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getSILRMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1c
    const-string v3, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 303
    sget-object v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 308
    .local v0, _arg0:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->setCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 306
    .end local v0           #_arg0:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    goto :goto_8

    .line 314
    .end local v0           #_arg0:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    :sswitch_1d
    const-string v5, "com.mediatek.common.agps.IMtkAgpsManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;->getCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    move-result-object v2

    .line 316
    .local v2, _result:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v2, :cond_f

    .line 318
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {v2, p3, v4}, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 322
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
