.class public abstract Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;
.super Landroid/os/Binder;
.source "IAudioProfileService.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/audioprofile/IAudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.audioprofile.IAudioProfileService"

.field static final TRANSACTION_addProfile:I = 0x2

.field static final TRANSACTION_deleteProfile:I = 0x3

.field static final TRANSACTION_getActiveProfileKey:I = 0xa

.field static final TRANSACTION_getAllProfileKeys:I = 0x6

.field static final TRANSACTION_getCustomizedProfileKeys:I = 0x8

.field static final TRANSACTION_getDefaultRingtone:I = 0x22

.field static final TRANSACTION_getDtmfToneEnabled:I = 0x10

.field static final TRANSACTION_getHapticFeedbackEnabled:I = 0x13

.field static final TRANSACTION_getLastActiveProfileKey:I = 0xb

.field static final TRANSACTION_getLockScreenEnabled:I = 0x12

.field static final TRANSACTION_getPredefinedProfileKeys:I = 0x7

.field static final TRANSACTION_getProfileCount:I = 0x5

.field static final TRANSACTION_getProfileName:I = 0x15

.field static final TRANSACTION_getProfileStateString:I = 0x14

.field static final TRANSACTION_getRingtoneUri:I = 0xc

.field static final TRANSACTION_getRingtoneUriGemini:I = 0xd

.field static final TRANSACTION_getSoundEffectEnabled:I = 0x11

.field static final TRANSACTION_getStreamMaxVolume:I = 0x21

.field static final TRANSACTION_getStreamVolume:I = 0xe

.field static final TRANSACTION_getVibrationEnabled:I = 0xf

.field static final TRANSACTION_isActive:I = 0x1f

.field static final TRANSACTION_isNameExist:I = 0x9

.field static final TRANSACTION_isRingtoneExist:I = 0x20

.field static final TRANSACTION_listenAudioProfie:I = 0x23

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_setActiveProfile:I = 0x1

.field static final TRANSACTION_setDtmfToneEnabled:I = 0x1a

.field static final TRANSACTION_setHapticFeedbackEnabled:I = 0x1d

.field static final TRANSACTION_setLockScreenEnabled:I = 0x1c

.field static final TRANSACTION_setProfileName:I = 0x1e

.field static final TRANSACTION_setRingtoneUri:I = 0x16

.field static final TRANSACTION_setRingtoneUriGemini:I = 0x17

.field static final TRANSACTION_setSoundEffectEnabled:I = 0x1b

.field static final TRANSACTION_setStreamVolume:I = 0x18

.field static final TRANSACTION_setVibrationEnabled:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 436
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 46
    :sswitch_0
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setActiveProfile(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->addProfile()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->deleteProfile(Ljava/lang/String;)Z

    move-result v3

    .line 72
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->reset()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :sswitch_5
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getProfileCount()I

    move-result v3

    .line 87
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v3           #_result:I
    :sswitch_6
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getAllProfileKeys()Ljava/util/List;

    move-result-object v4

    .line 95
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 101
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getPredefinedProfileKeys()Ljava/util/List;

    move-result-object v4

    .line 103
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 109
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getCustomizedProfileKeys()Ljava/util/List;

    move-result-object v4

    .line 111
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 117
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->isNameExist(Ljava/lang/String;)Z

    move-result v3

    .line 121
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_a
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getLastActiveProfileKey()Ljava/lang/String;

    move-result-object v3

    .line 137
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 149
    .local v3, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v3, :cond_2

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 155
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Landroid/net/Uri;
    :sswitch_d
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getRingtoneUriGemini(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 167
    .restart local v3       #_result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v3, :cond_3

    .line 169
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 173
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Landroid/net/Uri;
    :sswitch_e
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getStreamVolume(Ljava/lang/String;I)I

    move-result v3

    .line 185
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_f
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 195
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_10
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 205
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_11
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 215
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_12
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 225
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_13
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 235
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_14
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 245
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 251
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 268
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 273
    .local v2, _arg2:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 271
    .end local v2           #_arg2:Landroid/net/Uri;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/net/Uri;
    goto :goto_1

    .line 279
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/net/Uri;
    :sswitch_17
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 286
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 291
    .restart local v2       #_arg2:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setRingtoneUriGemini(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 289
    .end local v2           #_arg2:Landroid/net/Uri;
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/net/Uri;
    goto :goto_2

    .line 297
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/net/Uri;
    :sswitch_18
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setStreamVolume(Ljava/lang/String;II)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 310
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_19
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v1, v6

    .line 315
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_b
    move v1, v5

    .line 314
    goto :goto_3

    .line 321
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    move v1, v6

    .line 326
    .restart local v1       #_arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_c
    move v1, v5

    .line 325
    goto :goto_4

    .line 332
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1b
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v1, v6

    .line 337
    .restart local v1       #_arg1:Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_d
    move v1, v5

    .line 336
    goto :goto_5

    .line 343
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1c
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    move v1, v6

    .line 348
    .restart local v1       #_arg1:Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setLockScreenEnabled(Ljava/lang/String;Z)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_e
    move v1, v5

    .line 347
    goto :goto_6

    .line 354
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1d
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f

    move v1, v6

    .line 359
    .restart local v1       #_arg1:Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_f
    move v1, v5

    .line 358
    goto :goto_7

    .line 365
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1e
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 376
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_1f
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->isActive(Ljava/lang/String;)Z

    move-result v3

    .line 380
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    if-eqz v3, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 386
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_20
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    .line 389
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 394
    .local v0, _arg0:Landroid/net/Uri;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v3

    .line 395
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v3, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 392
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v3           #_result:Z
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_8

    .line 401
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_21
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getStreamMaxVolume(I)I

    move-result v3

    .line 405
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_22
    const-string v7, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 414
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v3

    .line 415
    .local v3, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v3, :cond_13

    .line 417
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 421
    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 427
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/net/Uri;
    :sswitch_23
    const-string v5, "com.mediatek.common.audioprofile.IAudioProfileService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/audioprofile/IAudioProfileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    move-result-object v0

    .line 431
    .local v0, _arg0:Lcom/mediatek/common/audioprofile/IAudioProfileListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V

    goto/16 :goto_0

    .line 42
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
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
