.class public interface abstract Lcom/mediatek/common/epo/MtkEpoClientManager;
.super Ljava/lang/Object;
.source "MtkEpoClientManager.java"


# static fields
.field public static final EPO_STATUS_CANCELED:I = 0xcb

.field public static final EPO_STATUS_CANCELING:I = 0xcc

.field public static final EPO_STATUS_IDLE:I = 0x12c

.field public static final EPO_STATUS_STARTING:I = 0xc8

.field public static final EPO_STATUS_UPDATE:Ljava/lang/String; = "com.mediatek.epo.STATUS_UPDATED"

.field public static final EPO_STATUS_UPDATE_FAILURE:I = 0xca

.field public static final EPO_STATUS_UPDATE_SUCCESS:I = 0xc9


# virtual methods
.method public abstract addStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract enableAutoDownload(Z)V
.end method

.method public abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract getAutoDownloadStatus()Z
.end method

.method public abstract getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getStatus()Z
.end method

.method public abstract getUpdatePeriod()J
.end method

.method public abstract removeStatusListener(Lcom/mediatek/common/epo/MtkEpoStatusListener;)V
.end method

.method public abstract setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRetryTimes(I)V
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract setUpdatePeriod(J)V
.end method

.method public abstract startDownload()I
.end method

.method public abstract stopDownload()V
.end method
