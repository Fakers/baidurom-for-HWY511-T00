.class public Lcom/mediatek/media/MediaRecorderEx;
.super Ljava/lang/Object;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/media/MediaRecorderEx$HDRecordMode;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.media.MediaRecorder"

.field private static final METHOD_NAME:Ljava/lang/String; = "setParameter"

.field private static final METHOD_TYPES:[Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "MediaRecorderEx"

.field private static sSetParameter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 52
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    sput-object v2, Lcom/mediatek/media/MediaRecorderEx;->METHOD_TYPES:[Ljava/lang/Class;

    .line 56
    :try_start_0
    const-string v2, "android.media.MediaRecorder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, cls:Ljava/lang/Class;
    const-string v2, "setParameter"

    sget-object v3, Lcom/mediatek/media/MediaRecorderEx;->METHOD_TYPES:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    .line 58
    sget-object v2, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "MediaRecorderEx"

    const-string v3, "NoSuchMethodException: setParameter"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "MediaRecorderEx"

    const-string v3, "ClassNotFoundException: android.media.MediaRecorder"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static captureLivePhoto(Landroid/media/MediaRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 219
    const-string v0, "media-param-capture-livephoto=1"

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static pause(Landroid/media/MediaRecorder;)V
    .locals 2
    .parameter "recorder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string v0, "MediaRecorderEx"

    const-string v1, "Null MediaRecorder!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "media-param-pause=1"

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAlbumTag(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 2
    .parameter "recorder"
    .parameter "album"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-tag-album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static setArtistTag(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 2
    .parameter "recorder"
    .parameter "artist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-tag-artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static setHDRecordMode(Landroid/media/MediaRecorder;IZ)V
    .locals 3
    .parameter "recorder"
    .parameter "mode"
    .parameter "isVideo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal HDRecord mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    if-eqz p2, :cond_2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvideomode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvoicemode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLivePhotoMode(Landroid/media/MediaRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 198
    const-string v0, "media-param-livephoto=1"

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static setLivePhotoTag(Landroid/media/MediaRecorder;I)V
    .locals 2
    .parameter "recorder"
    .parameter "value"

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-tag-livephoto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private static setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 7
    .parameter "recorder"
    .parameter "nameValuePair"

    .prologue
    .line 69
    sget-object v4, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 71
    :try_start_0
    sget-object v4, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 84
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, ae:Ljava/lang/IllegalAccessException;
    const-string v4, "MediaRecorderEx"

    const-string v5, "IllegalAccessException!"

    invoke-static {v4, v5, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v0           #ae:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 75
    .local v3, te:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "MediaRecorderEx"

    const-string v5, "InvocationTargetException!"

    invoke-static {v4, v5, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v3           #te:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 77
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaRecorderEx"

    const-string v5, "IllegalArgumentException!"

    invoke-static {v4, v5, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 79
    .local v2, npe:Ljava/lang/NullPointerException;
    const-string v4, "MediaRecorderEx"

    const-string v5, "NullPointerException!"

    invoke-static {v4, v5, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :cond_0
    const-string v4, "MediaRecorderEx"

    const-string v5, "setParameter: Null method!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPreprocessEffect(Landroid/media/MediaRecorder;I)V
    .locals 2
    .parameter "recorder"
    .parameter "effectOption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-preprocesseffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static setVideoBitOffSet(Landroid/media/MediaRecorder;IZ)V
    .locals 3
    .parameter "recorder"
    .parameter "offset"
    .parameter "video"

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-use-64bit-offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 187
    const-string v0, "MediaRecorderEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoBitOffSet is true,offset= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    return-void
.end method
