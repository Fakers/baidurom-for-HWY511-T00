.class public Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TcpReceiverThread"
.end annotation


# instance fields
.field di:Ljava/io/DataInputStream;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    .line 366
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 370
    const/16 v6, 0x578

    new-array v1, v6, [B

    .line 372
    .local v1, localBuffer:[B
    const-string v6, "[BIP]"

    const-string v7, "[TCP]RecTr: run"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    #getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 376
    const/4 v5, 0x0

    .line 377
    .local v5, recvLen:I
    const-string v6, "[BIP]"

    const-string v7, "[TCP]RecTr: Receive data from network"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 380
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v6, v1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 387
    :try_start_2
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]RecTr: recvLen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    if-ltz v5, :cond_8

    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, rSize:I
    const/4 v3, 0x0

    .local v3, localBufferOffset:I
    const/4 v2, 0x0

    .line 391
    .local v2, localBufferCount:I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v7, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    :try_start_3
    const-string v6, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TCP]RecTr:mRxBufferCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v6, :cond_4

    .line 396
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v9, 0x0

    invoke-static {v1, v6, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v5, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 398
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v8, 0x0

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 399
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v6, v8}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V

    .line 417
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v6, v8, :cond_7

    .line 419
    :try_start_4
    const-string v6, "[BIP]"

    const-string v8, "[TCP]RecTr:mRxBuffer is full."

    invoke-static {v6, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 425
    :goto_2
    :try_start_5
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    if-lez v6, :cond_0

    .line 426
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v6, :cond_1

    .line 427
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v6, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    :cond_1
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v8, v9

    if-gt v6, v8, :cond_6

    .line 430
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 434
    :goto_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v1, v3, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v8, v4

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 436
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    sub-int/2addr v8, v4

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 437
    add-int/2addr v3, v4

    .line 438
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v8, 0x0

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    goto :goto_1

    .line 444
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 459
    .end local v2           #localBufferCount:I
    .end local v3           #localBufferOffset:I
    .end local v4           #rSize:I
    .end local v5           #recvLen:I
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "[BIP]"

    const-string v7, "[TCP]RecTr:Error"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 381
    .restart local v5       #recvLen:I
    :catch_1
    move-exception v0

    .line 382
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    const-string v6, "[BIP]"

    const-string v7, "[TCP]RecTr:read io exception."

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    const/4 v6, 0x0

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 384
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 455
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #recvLen:I
    :cond_3
    :goto_5
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    #getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 457
    const-string v6, "[BIP]"

    const-string v7, "[TCP]RecTr: stop"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .line 403
    .restart local v2       #localBufferCount:I
    .restart local v3       #localBufferOffset:I
    .restart local v4       #rSize:I
    .restart local v5       #recvLen:I
    :cond_4
    :try_start_8
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v6, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, v8

    if-gt v5, v6, :cond_5

    .line 405
    move v4, v5

    .line 410
    :goto_6
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v1, v6, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v8, v4

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 413
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v8, 0x0

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 414
    const-string v6, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TCP]RecTr:rSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mRxBufferCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mRxBufferCacheCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    :cond_5
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int v4, v6, v8

    move v3, v4

    .line 408
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    sub-int v8, v5, v4

    iput v8, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    goto :goto_6

    .line 421
    :catch_2
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v6, "[BIP]"

    const-string v8, "[TCP]RecTr:InterruptedException: mRxBufferCount >= mBufferSize"

    invoke-static {v6, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 432
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int v4, v6, v8

    goto/16 :goto_3

    .line 444
    :cond_7
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 453
    :try_start_9
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]RecTr: buffer data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    .end local v2           #localBufferCount:I
    .end local v3           #localBufferOffset:I
    .end local v4           #rSize:I
    :cond_8
    const-string v6, "[BIP]"

    const-string v7, "[TCP]RecTr: socket connection is lost."

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 448
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 449
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 450
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/cat/Channel;->changeChannelStatus(B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5
.end method
