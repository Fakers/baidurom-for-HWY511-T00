.class public final Lcom/mediatek/common/featureoption/DynFeatureOption;
.super Ljava/lang/Object;
.source "DynFeatureOption.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "dfo_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getBoolean(Ljava/lang/String;)Z
.end method

.method public static native getInt(Ljava/lang/String;)I
.end method
