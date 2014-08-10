.class public interface abstract Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
.super Ljava/lang/Object;
.source "IAudioProfileExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IActiveProfileChangeInfo"
.end annotation


# static fields
.field public static final RINGER_MODE_UPDATE_NONE:I = -0x3e7


# virtual methods
.method public abstract getRingerModeToUpdate()I
.end method

.method public abstract shouldOverrideSystem()Z
.end method

.method public abstract shouldSetLastActiveKey()Z
.end method

.method public abstract shouldSyncToSystem()Z
.end method
