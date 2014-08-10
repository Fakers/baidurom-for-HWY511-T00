.class public interface abstract Lcom/mediatek/common/tvout/ITVOUTNative;
.super Ljava/lang/Object;
.source "ITVOUTNative.java"


# static fields
.field public static final NTSC:I = 0x0

.field public static final PAL:I = 0x1


# virtual methods
.method public abstract IPOPowerOff()Z
.end method

.method public abstract disableVideoMode(Z)Z
.end method

.method public abstract enableTvOut(Z)Z
.end method

.method public abstract enableTvOutManual(Z)Z
.end method

.method public abstract isShowButton()Z
.end method

.method public abstract leavePattern()Z
.end method

.method public abstract setTvSystem(I)Z
.end method

.method public abstract showPattern(I)Z
.end method

.method public abstract tvoutPowerEnable(Z)Z
.end method
