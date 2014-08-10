.class abstract Lcom/mediatek/internal/telephony/cat/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;,
        Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;,
        Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_IOTTEST_VALUE:I = 0x0

.field protected static final DISABLE_IOTTEST_CONFIG:Ljava/lang/String; = "0"

.field protected static final ENABLE_IOTTEST_CONFIG:Ljava/lang/String; = "1"

.field protected static final PROPERTY_IOT_TEST:Ljava/lang/String; = "persist.service.bip.iot.test"

.field protected static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field protected isChannelOpened:Z

.field protected mAddress:Ljava/net/InetAddress;

.field protected mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

.field protected mBipManger:Lcom/mediatek/internal/telephony/cat/BipManager;

.field protected mBufferSize:I

.field protected mChannelId:I

.field protected mChannelStatus:I

.field protected mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

.field private mHandler:Lcom/android/internal/telephony/cat/CatService;

.field protected mIOTTest:I

.field protected mLinkMode:I

.field protected mLock:Ljava/lang/Object;

.field protected mPort:I

.field protected mProtocolType:I

.field protected mRecvDataRet:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

.field protected mRxBuffer:[B

.field protected mRxBufferCacheCount:I

.field protected mRxBufferCount:I

.field protected mRxBufferOffset:I

.field private volatile mStop:Z

.field protected mTxBuffer:[B

.field protected mTxBufferCount:I

.field protected needCopy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/cat/Channel;->DEFAULT_IOTTEST_VALUE:I

    return-void
.end method

.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V
    .locals 3
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"
    .parameter "bipManager"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    .line 89
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 90
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLinkMode:I

    .line 91
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    .line 93
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 94
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mPort:I

    .line 95
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 96
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipManger:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 97
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 98
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    .line 99
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 100
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 101
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 102
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 103
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 104
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 105
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRecvDataRet:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 106
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->needCopy:I

    .line 107
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->isChannelOpened:Z

    .line 109
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 111
    sget v0, Lcom/mediatek/internal/telephony/cat/Channel;->DEFAULT_IOTTEST_VALUE:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mIOTTest:I

    .line 243
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    .line 114
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    .line 115
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLinkMode:I

    .line 116
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    .line 117
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 118
    iput p5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mPort:I

    .line 119
    iput p6, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    .line 121
    iput-object p7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 122
    iput-object p8, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipManger:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipManger:Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipManager;->getBipChannelManager()Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 124
    new-instance v0, Lcom/mediatek/common/telephony/ChannelStatus;

    invoke-direct {v0, p1, v1, v1}, Lcom/mediatek/common/telephony/ChannelStatus;-><init>(III)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    return v0
.end method


# virtual methods
.method public changeChannelStatus(B)V
    .locals 0
    .parameter "status"

    .prologue
    .line 182
    return-void
.end method

.method protected checkBufferSize()I
    .locals 8

    .prologue
    const/16 v7, 0xd2

    const/4 v3, 0x3

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, minBufferSize:I
    const/4 v1, 0x0

    .line 207
    .local v1, maxBufferSize:I
    const/4 v0, 0x0

    .line 209
    .local v0, defaultBufferSize:I
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v4, v3, :cond_3

    .line 211
    :cond_0
    const/16 v2, 0xff

    .line 212
    const/16 v1, 0x578

    .line 213
    const/16 v0, 0x400

    .line 220
    :cond_1
    :goto_0
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBufferSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minBufferSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxBufferSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-lt v4, v2, :cond_5

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-gt v4, v1, :cond_5

    .line 223
    const-string v3, "[BIP]"

    const-string v4, "buffer size is normal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v3, 0x0

    .line 240
    :cond_2
    :goto_1
    return v3

    .line 214
    :cond_3
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 215
    :cond_4
    const/16 v2, 0xff

    .line 216
    const/16 v1, 0x578

    .line 217
    const/16 v0, 0x400

    goto :goto_0

    .line 226
    :cond_5
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-le v4, v1, :cond_6

    .line 227
    const-string v4, "[BIP]"

    const-string v5, "buffer size is too large, change it to maximum value"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    .line 235
    :goto_2
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-ge v4, v7, :cond_2

    .line 236
    const-string v4, "[BIP]"

    const-string v5, "buffer size is smaller than 255, change it to MAX_APDU_SIZE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    goto :goto_1

    .line 230
    :cond_6
    const-string v4, "[BIP]"

    const-string v5, "buffer size is too small, change it to default value"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    goto :goto_2
.end method

.method public clearChannelBuffer(Z)V
    .locals 3
    .parameter "resetBuffer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 200
    :goto_0
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 201
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 202
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 203
    return-void

    .line 197
    :cond_0
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 198
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    goto :goto_0
.end method

.method public abstract closeChannel()I
.end method

.method public dataAvailable(I)V
    .locals 8
    .parameter "bufferSize"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 142
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 143
    .local v0, additionalInfo:[B
    const/16 v2, -0x48

    aput-byte v2, v0, v4

    .line 144
    aput-byte v6, v0, v5

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/Channel;->getChannelId()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v3, v3, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 146
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 148
    const/4 v2, 0x4

    const/16 v3, -0x49

    aput-byte v3, v0, v2

    .line 149
    const/4 v2, 0x5

    aput-byte v5, v0, v2

    .line 151
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 152
    const/4 v2, -0x1

    aput-byte v2, v0, v7

    .line 157
    :goto_0
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 158
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 159
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 160
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 161
    const-string v2, "onEventDownload for dataAvailable"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 163
    return-void

    .line 154
    :cond_0
    int-to-byte v2, p1

    aput-byte v2, v0, v7

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    return v0
.end method

.method public getChannelStatus()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    return v0
.end method

.method public abstract getTxAvailBufferSize()I
.end method

.method public abstract openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
.end method

.method public abstract receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
.end method

.method public abstract receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
.end method

.method protected declared-synchronized requestStop()V
    .locals 3

    .prologue
    .line 247
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    .line 248
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendData([BI)I
.end method
