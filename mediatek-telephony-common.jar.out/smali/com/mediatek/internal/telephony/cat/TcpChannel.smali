.class Lcom/mediatek/internal/telephony/cat/TcpChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final TCP_CONN_TIMEOUT:I = 0x3a98


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

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

    .line 990
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V

    .line 984
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 985
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 986
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 991
    return-void
.end method

.method private onOpenChannelCompleted()V
    .locals 0

    .prologue
    .line 1087
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    .line 1113
    .local v0, ret:I
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 1
    .parameter "cmdMsg"

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 1057
    .local v0, ret:I
    return v0
.end method

.method public receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .locals 1
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    .line 1240
    const/4 v0, 0x0

    .line 1297
    .local v0, ret:I
    return v0
.end method

.method public receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .locals 1
    .parameter "requestCount"

    .prologue
    .line 1118
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1174
    .local v0, ret:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    return-object v0
.end method

.method public sendData([BI)I
    .locals 1
    .parameter "data"
    .parameter "mode"

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1226
    .local v0, ret:I
    return v0
.end method
