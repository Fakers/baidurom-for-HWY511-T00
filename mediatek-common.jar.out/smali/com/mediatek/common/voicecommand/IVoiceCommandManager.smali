.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
.super Ljava/lang/Object;
.source "IVoiceCommandManager.java"


# static fields
.field public static final sInitService:Ljava/lang/String; = "main"

.field public static final sSystemProcess:Ljava/lang/String; = "android"


# virtual methods
.method public abstract registerListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
