.class public Lcom/mediatek/op/telephony/ServiceStateExt;
.super Ljava/lang/Object;
.source "ServiceStateExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IServiceStateExt;


# static fields
.field static final TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public ignoreDomesticRoaming()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isBroadcastEmmrrsPsResume(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isImeiLocked()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isRegCodeRoaming(ZILjava/lang/String;)Z
    .locals 0
    .parameter "originalIsRoaming"
    .parameter "mccmnc"
    .parameter "numeric"

    .prologue
    .line 75
    return p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 175
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public mapGsmSignalDbm(II)I
    .locals 2
    .parameter "GsmRscpQdbm"
    .parameter "asu"

    .prologue
    .line 152
    if-gez p1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 153
    div-int/lit8 v0, p1, 0x4

    .line 157
    .local v0, dBm:I
    :goto_0
    return v0

    .line 155
    .end local v0           #dBm:I
    :cond_0
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v0, v1, -0x71

    .restart local v0       #dBm:I
    goto :goto_0
.end method

.method public mapGsmSignalLevel(ZII)I
    .locals 4
    .parameter "is3G"
    .parameter "asu"
    .parameter "dbm"

    .prologue
    .line 127
    if-eqz p1, :cond_4

    .line 129
    const/16 v1, -0x70

    if-ge p3, v1, :cond_0

    const/4 v0, 0x0

    .line 144
    .local v0, level:I
    :goto_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapGsmSignalLevel is3G="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "asu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dbm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v0

    .line 130
    .end local v0           #level:I
    :cond_0
    const/16 v1, -0x5b

    if-lt p3, v1, :cond_1

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 131
    .end local v0           #level:I
    :cond_1
    const/16 v1, -0x62

    if-lt p3, v1, :cond_2

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 132
    .end local v0           #level:I
    :cond_2
    const/16 v1, -0x69

    if-lt p3, v1, :cond_3

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 133
    .end local v0           #level:I
    :cond_3
    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0

    .line 137
    .end local v0           #level:I
    :cond_4
    const/16 v1, -0x6d

    if-ge p3, v1, :cond_5

    const/4 v0, 0x0

    .restart local v0       #level:I
    goto :goto_0

    .line 138
    .end local v0           #level:I
    :cond_5
    const/16 v1, -0x59

    if-lt p3, v1, :cond_6

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 139
    .end local v0           #level:I
    :cond_6
    const/16 v1, -0x61

    if-lt p3, v1, :cond_7

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 140
    .end local v0           #level:I
    :cond_7
    const/16 v1, -0x67

    if-lt p3, v1, :cond_8

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 141
    .end local v0           #level:I
    :cond_8
    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public needBrodcastACMT(II)Z
    .locals 1
    .parameter "error_type"
    .parameter "error_cause"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public needEMMRRS()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public needIgnoredState(III)Z
    .locals 3
    .parameter "state"
    .parameter "new_state"
    .parameter "cause"

    .prologue
    const/4 v0, 0x1

    .line 99
    if-nez p1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 101
    const-string v1, "GSM"

    const-string v2, "set dontUpdateNetworkStateFlag for searching state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return v0

    .line 106
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 107
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 109
    const-string v1, "GSM"

    const-string v2, "set dontUpdateNetworkStateFlag for REG_DENIED with cause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "GSM"

    const-string v1, "clear dontUpdateNetworkStateFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRejectCauseNotification(I)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onPollStateDone(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;II)V
    .locals 0
    .parameter "oldSS"
    .parameter "newSS"
    .parameter "oldGprsState"
    .parameter "newGprsState"

    .prologue
    .line 58
    return-void
.end method

.method public onUpdateSpnDisplay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "plmn"
    .parameter "radioTechnology"

    .prologue
    .line 71
    return-object p1
.end method

.method public setEmergencyCallsOnly(II)I
    .locals 3
    .parameter "state"
    .parameter "cid"

    .prologue
    const/4 v0, -0x1

    .line 161
    if-eq p2, v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 163
    :cond_0
    const-string v1, "GSM"

    const-string v2, "No valid info to distinguish limited service and no service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return v0

    .line 166
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
