.class public Lcom/mediatek/common/jpe/a;
.super Ljava/lang/Object;
.source "a.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "nativecheck-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/common/jpe/JpeException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mediatek/common/jpe/a;->aa()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/mediatek/common/jpe/JpeException;

    const-string v1, "Class Not Found"

    invoke-direct {v0, v1}, Lcom/mediatek/common/jpe/JpeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method public native aa()I
.end method
