.class public Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;
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
    name = "UdpReceiverThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/Channel;

.field udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    .line 256
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 260
    const/16 v7, 0x578

    new-array v1, v7, [B

    .line 262
    .local v1, localBuffer:[B
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr run"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v1

    invoke-direct {v6, v1, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 265
    .local v6, recvPacket:Ljava/net/DatagramPacket;
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    #getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v7}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 266
    const/4 v5, 0x0

    .line 267
    .local v5, recvLen:I
    const-string v7, "[BIP]"

    const-string v8, "[UDP]Before RecTr: Receive data from network"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 270
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 271
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 279
    :try_start_2
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]RecTr: Receive data from network:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-ltz v5, :cond_9

    .line 281
    const/4 v4, 0x0

    .line 282
    .local v4, rSize:I
    const/4 v3, 0x0

    .local v3, localBufferOffset:I
    const/4 v2, 0x0

    .line 283
    .local v2, localBufferCount:I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v8, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :try_start_3
    const-string v7, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[UDP]RecTr:mRxBufferCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v7, :cond_3

    .line 288
    const/4 v7, 0x0

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v10, 0x0

    invoke-static {v1, v7, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v5, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 290
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v9, 0x0

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 291
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v9}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V

    .line 310
    :cond_0
    :goto_1
    const/4 v7, 0x1

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mIOTTest:I

    if-ne v7, v9, :cond_5

    .line 311
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v7, :cond_8

    .line 312
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 346
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 354
    .end local v2           #localBufferCount:I
    .end local v3           #localBufferOffset:I
    .end local v4           #rSize:I
    .end local v5           #recvLen:I
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr:Error."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 272
    .restart local v5       #recvLen:I
    :catch_1
    move-exception v0

    .line 273
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr:read io exception."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 275
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    const/4 v8, 0x0

    iput v8, v7, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 276
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 350
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #recvLen:I
    :cond_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    #getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v7}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 352
    const-string v7, "[BIP]"

    const-string v8, "[UDP]RecTr: stop"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 295
    .restart local v2       #localBufferCount:I
    .restart local v3       #localBufferOffset:I
    .restart local v4       #rSize:I
    .restart local v5       #recvLen:I
    :cond_3
    :try_start_6
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v9

    if-gt v5, v7, :cond_4

    .line 297
    move v4, v5

    .line 302
    :goto_3
    const/4 v7, 0x0

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v1, v7, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v9, v4

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 305
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v9, 0x0

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 306
    const-string v7, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RecTr:rSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRxBufferCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 299
    :cond_4
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int v4, v7, v9

    move v3, v4

    .line 300
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    sub-int v9, v5, v4

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    goto :goto_3

    .line 317
    :cond_5
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lt v7, v9, :cond_8

    .line 319
    :try_start_7
    const-string v7, "[BIP]"

    const-string v9, "[UDP]RecTr:mRxBuffer is full."

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 325
    :goto_4
    :try_start_8
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    if-lez v7, :cond_0

    .line 326
    const-string v7, "[BIP]"

    const-string v9, "[UDP]RecTr:RxBuffer>0."

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v7, :cond_6

    .line 328
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    :cond_6
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v9, v10

    if-gt v7, v9, :cond_7

    .line 331
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 335
    :goto_5
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v1, v3, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v9, v4

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 337
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    sub-int/2addr v9, v4

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 338
    add-int/2addr v3, v4

    .line 339
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    const/4 v9, 0x0

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    goto/16 :goto_1

    .line 321
    :catch_2
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v7, "[BIP]"

    const-string v9, "[UDP]RecTr:InterruptedException: mRxBufferCount >= mBufferSize"

    invoke-static {v7, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 333
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_7
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int v4, v7, v9

    goto :goto_5

    .line 346
    :cond_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 348
    .end local v2           #localBufferCount:I
    .end local v3           #localBufferOffset:I
    .end local v4           #rSize:I
    :cond_9
    :try_start_9
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]RecTr: buffer data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0
.end method
