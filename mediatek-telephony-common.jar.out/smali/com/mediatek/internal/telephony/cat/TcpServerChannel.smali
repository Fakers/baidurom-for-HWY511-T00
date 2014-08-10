.class Lcom/mediatek/internal/telephony/cat/TcpServerChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# instance fields
.field private mCloseBackToTcpListen:Z

.field protected mInput:Ljava/io/DataInputStream;

.field protected mOutput:Ljava/io/BufferedOutputStream;

.field protected mSSocket:Ljava/net/ServerSocket;

.field protected mSocket:Ljava/net/Socket;

.field private rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V
    .locals 9
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"
    .parameter "bipManager"

    .prologue
    .line 670
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 671
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 759
    .local v0, ret:I
    return v0
.end method

.method public getTcpStatus()B
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public isCloseBackToTcpListen()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 1
    .parameter "cmdMsg"

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 705
    .local v0, ret:I
    return v0
.end method

.method public receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .locals 3
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    .line 885
    const-string v1, "[BIP]"

    const-string v2, "[UICC]new receiveData method"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const/4 v0, 0x0

    .line 943
    .local v0, ret:I
    return v0
.end method

.method public receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .locals 1
    .parameter "requestCount"

    .prologue
    .line 764
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 820
    .local v0, ret:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    return-object v0
.end method

.method public sendData([BI)I
    .locals 1
    .parameter "data"
    .parameter "mode"

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 871
    .local v0, ret:I
    return v0
.end method

.method public setCloseBackToTcpListen(Z)V
    .locals 0
    .parameter "isBackToTcpListen"

    .prologue
    .line 976
    return-void
.end method

.method public setTcpStatus(BZ)V
    .locals 0
    .parameter "status"
    .parameter "isPackED"

    .prologue
    .line 958
    return-void
.end method
