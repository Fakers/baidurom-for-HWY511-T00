.class public interface abstract Lcom/mediatek/common/telephony/IBipManagerExt;
.super Ljava/lang/Object;
.source "IBipManagerExt.java"


# virtual methods
.method public abstract closeChannel(Landroid/os/Message;)V
.end method

.method public abstract getChannelId()I
.end method

.method public abstract getChannelStatus(Landroid/os/Message;)V
.end method

.method public abstract getFreeChannelId()I
.end method

.method public abstract getInstance(Landroid/content/Context;Landroid/os/Handler;I)V
.end method

.method public abstract openChannel(Landroid/os/Message;)V
.end method

.method public abstract receiveData(Landroid/os/Message;)V
.end method

.method public abstract sendData(Landroid/os/Message;)V
.end method

.method public abstract setConnMgrTimeoutFlag(Z)V
.end method

.method public abstract setOpenInProgressFlag(Z)V
.end method
