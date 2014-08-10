.class public interface abstract Lcom/mediatek/common/aee/IExceptionLog;
.super Ljava/lang/Object;
.source "IExceptionLog.java"


# static fields
.field public static final AEE_EXCEPTION_JNI:B = 0x1t

.field public static final AEE_WARNING_JNI:B


# virtual methods
.method public abstract getNativeExceptionPidList([I)Z
.end method

.method public abstract handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
