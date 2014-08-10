.class Lcom/mediatek/internal/telephony/cat/UdpChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final UDP_SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field mSocket:Ljava/net/DatagramSocket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V
    .locals 1
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"
    .parameter "bipManager"

    .prologue
    const/4 v0, 0x0

    .line 1307
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V

    .line 1302
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1304
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1308
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1345
    const/4 v0, 0x0

    .line 1347
    .local v0, ret:I
    const-string v1, "[BIP]"

    const-string v2, "[UDP]closeChannel."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->requestStop()V

    .line 1352
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1354
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 1356
    const-string v1, "[BIP]"

    const-string v2, "[UDP]closeSocket."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 1359
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 1361
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1362
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 1363
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 1366
    :cond_1
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 1485
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 1486
    .local v0, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UDP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 6
    .parameter "cmdMsg"

    .prologue
    .line 1311
    const/4 v2, 0x0

    .line 1313
    .local v2, ret:I
    :try_start_0
    const-string v3, "persist.service.bip.iot.test"

    sget v4, Lcom/mediatek/internal/telephony/cat/UdpChannel;->DEFAULT_IOTTEST_VALUE:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mIOTTest:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :goto_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UDP]link mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLinkMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIOTTest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mIOTTest:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLinkMode:I

    if-nez v3, :cond_1

    .line 1322
    :try_start_1
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1323
    const/4 v3, 0x4

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 1324
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    const/16 v4, 0x80

    iput v4, v3, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 1325
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v4, p0, v5}, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;-><init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1326
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1327
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UDP]: sock status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1332
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->checkBufferSize()I

    move-result v2

    .line 1333
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1334
    const-string v3, "[BIP]"

    const-string v4, "[UDP]openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 1337
    :cond_0
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 1338
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 1341
    :cond_1
    return v2

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]key is illegal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1316
    sget v3, Lcom/mediatek/internal/telephony/cat/UdpChannel;->DEFAULT_IOTTEST_VALUE:I

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mIOTTest:I

    goto/16 :goto_0

    .line 1328
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1329
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .locals 9
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    const/4 v2, 0x5

    .line 1491
    const-string v3, "[BIP]"

    const-string v4, "[UDP]new receiveData method"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const/4 v1, 0x0

    .line 1494
    .local v1, ret:I
    if-nez p2, :cond_0

    .line 1495
    const-string v3, "[BIP]"

    const-string v4, "[UDP]rdr is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    :goto_0
    return v2

    .line 1499
    :cond_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UDP]receiveData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    new-array v3, p1, [B

    iput-object v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1502
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v3, p1, :cond_3

    .line 1503
    const-string v3, "[BIP]"

    const-string v4, "[UDP]rx buffer has enough data - begin"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1508
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 1509
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 1510
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 1511
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 1513
    :cond_1
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1514
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-ge v3, v5, :cond_2

    .line 1515
    const-string v3, "[BIP]"

    const-string v5, ">= [UDP]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1518
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    const-string v2, "[BIP]"

    const-string v3, "[UDP]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 1549
    goto :goto_0

    .line 1518
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1525
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v3, "[BIP]"

    const-string v4, "[UDP]rx buffer is insufficient - being"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :try_start_4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1529
    :try_start_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1530
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 1531
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 1533
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-ge v3, v5, :cond_4

    .line 1534
    const-string v3, "[BIP]"

    const-string v5, "< [UDP]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1537
    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1538
    const/4 v3, 0x0

    :try_start_6
    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1539
    const/16 v1, 0x9

    .line 1546
    const-string v2, "[BIP]"

    const-string v3, "[UDP]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1537
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1541
    :catch_1
    move-exception v0

    .line 1543
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .locals 11
    .parameter "requestCount"

    .prologue
    .line 1370
    new-instance v6, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1371
    .local v6, ret:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    new-array v7, p1, [B

    iput-object v7, v6, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1373
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]receiveData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v7, p1, :cond_1

    .line 1377
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1378
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, p1

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 1379
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, p1

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 1380
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v7, v6, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1428
    :cond_0
    :goto_0
    return-object v6

    .line 1384
    :cond_1
    move v4, p1

    .line 1385
    .local v4, needCopy:I
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 1386
    .local v0, canCopy:I
    const/4 v2, 0x0

    .line 1387
    .local v2, countCopied:I
    const/4 v1, 0x0

    .line 1389
    .local v1, canExitLoop:Z
    :goto_1
    if-nez v1, :cond_0

    .line 1390
    if-le v4, v0, :cond_2

    .line 1392
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    add-int/2addr v2, v0

    .line 1395
    sub-int/2addr v4, v0

    .line 1396
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 1397
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1412
    :goto_2
    if-nez v4, :cond_3

    .line 1413
    const/4 v1, 0x1

    goto :goto_1

    .line 1402
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1404
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 1405
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1406
    add-int/2addr v2, v4

    .line 1407
    const/4 v4, 0x0

    goto :goto_2

    .line 1416
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v8, 0xbb8

    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1417
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v8, v8

    invoke-direct {v5, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1418
    .local v5, packet:Ljava/net/DatagramPacket;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1419
    const/4 v7, 0x0

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 1420
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1421
    .end local v5           #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v3

    .line 1422
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1408
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 1398
    :catch_2
    move-exception v7

    goto :goto_2

    .line 1381
    .end local v0           #canCopy:I
    .end local v1           #canExitLoop:Z
    .end local v2           #countCopied:I
    .end local v4           #needCopy:I
    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 12
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v10, 0x5

    const/4 v11, 0x1

    .line 1432
    const/4 v8, 0x0

    .line 1433
    .local v8, ret:I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v9, v2, v3

    .line 1434
    .local v9, txRemaining:I
    const/4 v1, 0x0

    .line 1436
    .local v1, tmpBuffer:[B
    if-nez p1, :cond_0

    .line 1437
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData - data null:"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v10

    .line 1481
    :goto_0
    return v2

    .line 1440
    :cond_0
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]sendData: size of data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]sendData: size of buffer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :try_start_0
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    if-nez v2, :cond_2

    if-ne v11, p2, :cond_2

    .line 1444
    move-object v1, p1

    .line 1445
    array-length v2, p1

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 1460
    :goto_1
    if-ne p2, v11, :cond_1

    .line 1461
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]Send data("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mPort:I

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1464
    .local v0, packet:Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 1466
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1467
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #packet:Ljava/net/DatagramPacket;
    :cond_1
    :goto_2
    move v2, v8

    .line 1481
    goto/16 :goto_0

    .line 1447
    :cond_2
    :try_start_2
    array-length v2, p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    if-lt v9, v2, :cond_3

    .line 1449
    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v5, p1

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1450
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1457
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    goto :goto_1

    .line 1451
    :catch_0
    move-exception v6

    .line 1452
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData - IndexOutOfBoundsException"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1476
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 1477
    .local v7, ne:Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData NE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1479
    const/4 v8, 0x5

    goto :goto_2

    .line 1455
    .end local v7           #ne:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_5
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]sendData - tx buffer is not enough:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1468
    .restart local v0       #packet:Ljava/net/DatagramPacket;
    :catch_2
    move-exception v6

    .line 1469
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "[BIP]"

    const-string v3, "[UDP]sendData - Exception"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1470
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 1471
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    move v2, v10

    .line 1472
    goto/16 :goto_0
.end method
