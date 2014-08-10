.class public abstract Lcom/mediatek/common/dm/DMAgent$Stub;
.super Landroid/os/Binder;
.source "DMAgent.java"

# interfaces
.implements Lcom/mediatek/common/dm/DMAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/dm/DMAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/dm/DMAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.dm.DMAgent"

.field static final TRANSACTION_clearLockFlag:I = 0x5

.field static final TRANSACTION_clearOtaResult:I = 0x19

.field static final TRANSACTION_clearRebootFlag:I = 0x11

.field static final TRANSACTION_clearWipeFlag:I = 0x17

.field static final TRANSACTION_getLockType:I = 0xc

.field static final TRANSACTION_getOperatorID:I = 0xd

.field static final TRANSACTION_getOperatorName:I = 0xe

.field static final TRANSACTION_getUpgradeStatus:I = 0x13

.field static final TRANSACTION_isBootRecoveryFlag:I = 0x12

.field static final TRANSACTION_isHangMoCallLocking:I = 0xf

.field static final TRANSACTION_isHangMtCallLocking:I = 0x10

.field static final TRANSACTION_isLockFlagSet:I = 0x3

.field static final TRANSACTION_isWipeSet:I = 0x15

.field static final TRANSACTION_readCTA:I = 0x9

.field static final TRANSACTION_readDMTree:I = 0x1

.field static final TRANSACTION_readIMSI:I = 0x6

.field static final TRANSACTION_readOperatorName:I = 0x8

.field static final TRANSACTION_readOtaResult:I = 0x18

.field static final TRANSACTION_restartAndroid:I = 0x14

.field static final TRANSACTION_setLockFlag:I = 0x4

.field static final TRANSACTION_setRebootFlag:I = 0xb

.field static final TRANSACTION_setWipeFlag:I = 0x16

.field static final TRANSACTION_writeCTA:I = 0xa

.field static final TRANSACTION_writeDMTree:I = 0x2

.field static final TRANSACTION_writeIMSI:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/dm/DMAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;
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
    const-string v1, "com.mediatek.common.dm.DMAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/dm/DMAgent;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/common/dm/DMAgent;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/common/dm/DMAgent$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/dm/DMAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->readDMTree()[B

    move-result-object v1

    .line 49
    .local v1, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 55
    .end local v1           #_result:[B
    :sswitch_2
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 58
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DMAgent$Stub;->writeDMTree([B)Z

    move-result v1

    .line 59
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:[B
    .end local v1           #_result:Z
    :sswitch_3
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->isLockFlagSet()Z

    move-result v1

    .line 67
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1           #_result:Z
    :sswitch_4
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 76
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DMAgent$Stub;->setLockFlag([B)Z

    move-result v1

    .line 77
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:[B
    .end local v1           #_result:Z
    :sswitch_5
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->clearLockFlag()Z

    move-result v1

    .line 85
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v1           #_result:Z
    :sswitch_6
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->readIMSI()[B

    move-result-object v1

    .line 93
    .local v1, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 99
    .end local v1           #_result:[B
    :sswitch_7
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 102
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DMAgent$Stub;->writeIMSI([B)Z

    move-result v1

    .line 103
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v0           #_arg0:[B
    .end local v1           #_result:Z
    :sswitch_8
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->readOperatorName()[B

    move-result-object v1

    .line 111
    .local v1, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 117
    .end local v1           #_result:[B
    :sswitch_9
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->readCTA()[B

    move-result-object v1

    .line 119
    .restart local v1       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 125
    .end local v1           #_result:[B
    :sswitch_a
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 128
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/mediatek/common/dm/DMAgent$Stub;->writeCTA([B)Z

    move-result v1

    .line 129
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:[B
    .end local v1           #_result:Z
    :sswitch_b
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->setRebootFlag()Z

    move-result v1

    .line 137
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v1           #_result:Z
    :sswitch_c
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->getLockType()I

    move-result v1

    .line 145
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v1           #_result:I
    :sswitch_d
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->getOperatorID()I

    move-result v1

    .line 153
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v1           #_result:I
    :sswitch_e
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->getOperatorName()[B

    move-result-object v1

    .line 161
    .local v1, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 167
    .end local v1           #_result:[B
    :sswitch_f
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->isHangMoCallLocking()Z

    move-result v1

    .line 169
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v1           #_result:Z
    :sswitch_10
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->isHangMtCallLocking()Z

    move-result v1

    .line 177
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v1           #_result:Z
    :sswitch_11
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->clearRebootFlag()Z

    move-result v1

    .line 185
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v1           #_result:Z
    :sswitch_12
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->isBootRecoveryFlag()Z

    move-result v1

    .line 193
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v1           #_result:Z
    :sswitch_13
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->getUpgradeStatus()I

    move-result v1

    .line 201
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v1           #_result:I
    :sswitch_14
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->restartAndroid()I

    move-result v1

    .line 209
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v1           #_result:I
    :sswitch_15
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->isWipeSet()Z

    move-result v1

    .line 217
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v1           #_result:Z
    :sswitch_16
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->setWipeFlag()Z

    move-result v1

    .line 225
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v1, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v1           #_result:Z
    :sswitch_17
    const-string v4, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->clearWipeFlag()Z

    move-result v1

    .line 233
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v1, :cond_d

    move v2, v3

    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v1           #_result:Z
    :sswitch_18
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->readOtaResult()I

    move-result v1

    .line 241
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v1           #_result:I
    :sswitch_19
    const-string v2, "com.mediatek.common.dm.DMAgent"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/mediatek/common/dm/DMAgent$Stub;->clearOtaResult()I

    move-result v1

    .line 249
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
