.class public interface abstract Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;
.super Ljava/lang/Object;
.source "IVoicePhoneDetection.java"


# virtual methods
.method public abstract releaseSelf()V
.end method

.method public abstract startPhoneDetection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stopPhoneDetection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
