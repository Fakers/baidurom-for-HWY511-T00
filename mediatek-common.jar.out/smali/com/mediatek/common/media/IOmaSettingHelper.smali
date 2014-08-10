.class public interface abstract Lcom/mediatek/common/media/IOmaSettingHelper;
.super Ljava/lang/Object;
.source "IOmaSettingHelper.java"


# static fields
.field public static final STREAMING_HTTP:I = 0x1

.field public static final STREAMING_LOCAL:I = 0x0

.field public static final STREAMING_RTSP:I = 0x2

.field public static final STREAMING_UNKNOWN:I = -0x1


# virtual methods
.method public abstract setSettingHeader(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
