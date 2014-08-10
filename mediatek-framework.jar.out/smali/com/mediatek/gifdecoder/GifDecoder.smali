.class public Lcom/mediatek/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"

# interfaces
.implements Lcom/mediatek/common/gifdecoder/IGifDecoder;


# static fields
.field public static final INVALID_VALUE:I = 0x0

.field private static final MINIMAL_DURATION:I = 0x28


# instance fields
.field private mMovie:Landroid/graphics/Movie;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "GifDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GifDecoder(is="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "pathName"

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string v0, "GifDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GifDecoder(pathName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    goto :goto_0
.end method

.method public constructor <init>([BII)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->closeGif()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrameBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "frameIndex"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 218
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, p1}, Landroid/graphics/Movie;->gifFrameBitmap(I)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrameDuration(I)I
    .locals 2
    .parameter "frameIndex"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 201
    const/4 v0, 0x0

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 202
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1, p1}, Landroid/graphics/Movie;->gifFrameDuration(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 203
    .local v0, duration:I
    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 204
    const/16 v0, 0x28

    goto :goto_0

    .line 200
    .end local v0           #duration:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 162
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalDuration()I
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 175
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalFrameCount()I
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 188
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->gifTotalFrameCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 149
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
