.class public interface abstract Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
.super Ljava/lang/Object;
.source "IAudioProfileExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDefaultProfileStatesGetter"
.end annotation


# virtual methods
.method public abstract getDefaultProfileStates()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AudioProfileState:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TAudioProfileState;>;"
        }
    .end annotation
.end method
