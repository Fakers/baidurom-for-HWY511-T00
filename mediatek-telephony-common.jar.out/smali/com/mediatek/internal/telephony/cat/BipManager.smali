.class public Lcom/mediatek/internal/telephony/cat/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IBipManagerExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;,
        Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;,
        Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field private static instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

.field private static instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

.field private static instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

.field private static instance4:Lcom/mediatek/internal/telephony/cat/BipManager;


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

.field private mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

.field mBufferSize:I

.field private mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/mediatek/common/telephony/ChannelStatus;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsOpenInProgress:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field mPassword:Ljava/lang/String;

.field private mSimId:I

.field mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 95
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 96
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 97
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5
    .parameter "context"
    .parameter "handler"
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 102
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 104
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 106
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 107
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 108
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 109
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    .line 110
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 111
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 112
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 114
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 118
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->NETWORK_TYPE:I

    .line 120
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 121
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    .line 122
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 123
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatusDataObject:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 124
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    .line 128
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 129
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 130
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 1016
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/cat/BipManager$1;-><init>(Lcom/mediatek/internal/telephony/cat/BipManager;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-nez p1, :cond_0

    .line 136
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 140
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    .line 141
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 143
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 146
    if-nez p3, :cond_2

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_2

    .line 147
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 160
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, connFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void

    .line 149
    .end local v0           #connFilter:Landroid/content/IntentFilter;
    :cond_2
    if-ne p3, v4, :cond_3

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_3

    .line 150
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 152
    :cond_3
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_4

    .line 153
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 155
    :cond_4
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_1

    .line 156
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/cat/BipManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/cat/BipManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/cat/BipManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .parameter "nwInfo"
    .parameter "exState"

    .prologue
    const/4 v3, 0x0

    .line 657
    if-nez p1, :cond_0

    move v2, v3

    .line 670
    :goto_0
    return v2

    .line 661
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 662
    .local v1, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 663
    .local v0, state:Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 667
    const/4 v2, 0x1

    goto :goto_0

    .line 663
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 670
    goto :goto_0
.end method

.method private establishLink()I
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x1

    .line 674
    const/4 v11, 0x0

    .line 675
    .local v11, ret:I
    const/4 v9, 0x0

    .line 721
    .local v9, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v1, v1, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-ne v1, v12, :cond_2

    .line 723
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/cat/UdpChannel;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v3, v3, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v4, v4, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v5, v5, Lcom/mediatek/common/telephony/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v9           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .local v0, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 734
    if-eqz v11, :cond_0

    const/4 v1, 0x3

    if-ne v11, v1, :cond_1

    .line 735
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 736
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    .line 747
    :goto_0
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 748
    :goto_1
    return v1

    .line 728
    .end local v0           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v9       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    :catch_0
    move-exception v10

    .line 729
    .local v10, ne:Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 731
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v0       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    goto :goto_1

    .line 738
    .end local v10           #ne:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 739
    iput v13, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 742
    .end local v0           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v9       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v11, 0x4

    .line 744
    iput v13, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    move-object v0, v9

    .end local v9           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v0       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    goto :goto_0
.end method

.method private getDataConnectionFromSetting()I
    .locals 7

    .prologue
    .line 184
    const/4 v2, -0x1

    .line 187
    .local v2, currentDataConnectionSimId:I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 188
    .local v0, currentDataConnectionMultiSimId:J
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 193
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Data Setting value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v2
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 639
    const-string v3, "[BIP]"

    const-string v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v1, 0x0

    .line 641
    .local v1, addressBytes:[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    if-eqz v3, :cond_0

    .line 642
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v3, v3, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, addr:I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 653
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0           #addr:I
    :goto_0
    return v2

    .line 644
    :cond_0
    const-string v3, "[BIP]"

    const-string v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "apn"
    .parameter "user"
    .parameter "pwd"

    .prologue
    .line 752
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    if-nez p1, :cond_0

    .line 754
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :goto_0
    return-void

    .line 758
    :cond_0
    const/4 v13, 0x0

    .line 759
    .local v13, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 760
    .local v12, numeric:Ljava/lang/String;
    const/4 v9, 0x0

    .line 761
    .local v9, mcc:Ljava/lang/String;
    const/4 v10, 0x0

    .line 762
    .local v10, mnc:Ljava/lang/String;
    const-string v7, "supl"

    .line 768
    .local v7, apnType:Ljava/lang/String;
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: URI use telephony provider enhancement"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    if-nez v1, :cond_4

    .line 770
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 771
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 790
    :goto_1
    if-nez v13, :cond_1

    .line 791
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 795
    const/4 v8, 0x0

    .line 796
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 797
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 798
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-setApnParams: mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, selection:Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    if-nez v1, :cond_8

    .line 803
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 820
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 821
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 822
    .local v14, values:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "BIP"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 834
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: insert one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 836
    .local v11, newRow:Landroid/net/Uri;
    if-eqz v11, :cond_b

    .line 837
    const-string v1, "[BIP]"

    const-string v2, "insert a new record into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .end local v11           #newRow:Landroid/net/Uri;
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 851
    .end local v4           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: exit"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 772
    :cond_4
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 773
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 774
    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 775
    :cond_5
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 776
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 777
    const-string v1, "gsm.sim.operator.numeric.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 778
    :cond_6
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 779
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 780
    const-string v1, "gsm.sim.operator.numeric.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 782
    :cond_7
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: invalid sim id"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 805
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_8
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 806
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 808
    :cond_9
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 809
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 811
    :cond_a
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 812
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 839
    .restart local v11       #newRow:Landroid/net/Uri;
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_b
    const-string v1, "[BIP]"

    const-string v2, "Fail to insert apn params into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 842
    .end local v11           #newRow:Landroid/net/Uri;
    :cond_c
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: update one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v14, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->updateChannelStatus(II)V

    .line 632
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput p1, v1, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, ne:Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeChannel(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 431
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new closeChannel, mCloseCid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 434
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x7

    .line 361
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 366
    .local v1, cId:I
    iput v10, p2, Landroid/os/Message;->arg1:I

    .line 368
    if-ltz v1, :cond_0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_1

    .line 369
    :cond_0
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 420
    :goto_0
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 422
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void

    .line 373
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 374
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iput v9, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 375
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-ne v7, v5, :cond_3

    .line 376
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 378
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v3

    .line 379
    if-nez v3, :cond_4

    .line 380
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 384
    :cond_4
    const/4 v4, 0x0

    .line 385
    .local v4, tcpSerCh:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;
    iget v5, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_7

    .line 386
    instance-of v5, v3, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 387
    move-object v0, v3

    check-cast v0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    move-object v4, v0

    .line 388
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 402
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 403
    iget v5, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_8

    .line 404
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 405
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 411
    :cond_6
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 412
    const/4 v5, 0x2

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 391
    :cond_7
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v6, 0x0

    const-string v7, "enableSUPL"

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    goto :goto_1

    .line 408
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getBipChannelManager()Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 855
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 544
    const-string v1, "[BIP]"

    const-string v2, "new getChannelStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 547
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 548
    return-void
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 8
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v7, 0x1

    .line 607
    const/4 v3, 0x0

    .line 608
    .local v3, ret:I
    const/4 v0, 0x1

    .line 609
    .local v0, cId:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v1, csList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/ChannelStatus;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    if-gt v0, v7, :cond_1

    .line 613
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v4

    if-ne v7, v4, :cond_0

    .line 614
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChannelStatus: cId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :catch_0
    move-exception v2

    .line 620
    .local v2, ne:Ljava/lang/NullPointerException;
    const-string v4, "[BIP]"

    const-string v5, "getChannelStatus: NE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 623
    .end local v2           #ne:Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 624
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 625
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method public getInstance(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "simId"

    .prologue
    .line 166
    if-nez p3, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 181
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_1

    .line 170
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_2

    .line 173
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_3

    .line 176
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 179
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bip instance was generated. sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openChannel(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 551
    const-string v1, "[BIP]"

    const-string v2, "new openChannel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 553
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 554
    return-void
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 10
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    const/4 v1, 0x2

    .line 200
    .local v1, result:I
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: enter"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, ret:I
    const/4 v0, 0x0

    .line 204
    .local v0, channel:Lcom/mediatek/internal/telephony/cat/Channel;
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: init channel status object"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 208
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v7, v7, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->acquireChannelId(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    .line 209
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    if-nez v4, :cond_0

    .line 210
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: acquire channel id = 0"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v4, 0x5

    iput v4, p2, Landroid/os/Message;->arg1:I

    .line 212
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 214
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v4, Lcom/mediatek/common/telephony/ChannelStatus;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-direct {v4, v7, v5, v5}, Lcom/mediatek/common/telephony/ChannelStatus;-><init>(III)V

    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 218
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 220
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 221
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    if-eqz v4, :cond_3

    .line 222
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: bearer type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v8, v8, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_1
    iget v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 228
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: buffer size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 231
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    if-eqz v4, :cond_4

    .line 232
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: local address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v8, v8, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_2
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    .line 238
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    if-eqz v4, :cond_5

    .line 239
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v8, v8, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v8, v8, Lcom/mediatek/common/telephony/TransportProtocol;->portNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_3
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 246
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    if-eqz v4, :cond_6

    .line 247
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: dest address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v8, v8, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_4
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v4, "TestGp.rs"

    :goto_5
    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 253
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 254
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: apn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_6
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 261
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: login "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 263
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: password "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_9

    move v4, v5

    :goto_7
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 268
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: mLinkMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_a

    move v4, v5

    :goto_8
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 281
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8}, Lcom/mediatek/internal/telephony/cat/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v4, "gsm.stk.bip"

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v4, v4, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-ne v9, v4, :cond_c

    .line 289
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I

    move-result v2

    .line 291
    if-eqz v2, :cond_1

    if-ne v2, v9, :cond_b

    .line 292
    :cond_1
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: channel is activated"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v0

    .line 294
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v5, v5, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    iput v5, v4, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 300
    :goto_9
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 301
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    :cond_2
    :goto_a
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: exit"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_3
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: bearer type is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    :cond_4
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: local address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 242
    :cond_5
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: transport protocol is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 249
    :cond_6
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: dest address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 252
    :cond_7
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_5

    .line 256
    :cond_8
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: apn default TestGp.rs"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_6

    :cond_9
    move v4, v6

    .line 265
    goto/16 :goto_7

    :cond_a
    move v4, v6

    .line 270
    goto/16 :goto_8

    .line 296
    :cond_b
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput v5, v4, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    goto :goto_9

    .line 305
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->getDataConnectionFromSetting()I

    move-result v4

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    if-ne v4, v7, :cond_d

    .line 306
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to establish data connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v7, "enableSUPL"

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v4, v5, v7, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v1

    .line 314
    :cond_d
    if-nez v1, :cond_11

    .line 315
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: APN already active"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v4

    if-nez v4, :cond_e

    .line 317
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: Fail - requestRouteToHost"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v2, 0x2

    .line 320
    :cond_e
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 321
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 322
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: establish data channel"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I

    move-result v2

    .line 325
    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 326
    if-eqz v2, :cond_f

    if-ne v2, v9, :cond_10

    .line 327
    :cond_f
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: channel is activated"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/16 v4, 0x80

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V

    .line 333
    :goto_b
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    if-ne v6, v4, :cond_2

    .line 334
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 335
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 336
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 330
    :cond_10
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V

    goto :goto_b

    .line 340
    :cond_11
    if-ne v1, v6, :cond_12

    .line 341
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: APN request started"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 343
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 344
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 345
    .local v3, timerMsg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 348
    .end local v3           #timerMsg:Landroid/os/Message;
    :cond_12
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: startUsingNetworkFeature FAIL"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v2, 0x2

    .line 350
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput v5, v4, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 352
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 353
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a
.end method

.method public openChannelCompleted(ILcom/mediatek/internal/telephony/cat/Channel;)V
    .locals 6
    .parameter "ret"
    .parameter "lChannel"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 864
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    if-ne p1, v5, :cond_0

    .line 867
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 869
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 870
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 871
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    .line 876
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 878
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 879
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 880
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 881
    .local v0, response:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 882
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 883
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 885
    .end local v0           #response:Landroid/os/Message;
    :cond_2
    return-void

    .line 873
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 874
    const/4 v1, 0x7

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method public receiveData(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 470
    const-string v1, "[BIP]"

    const-string v2, "new receiveData"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 472
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 473
    return-void
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v5, 0x5

    .line 437
    iget v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 438
    .local v2, requestCount:I
    new-instance v3, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 439
    .local v3, result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    const/4 v7, 0x0

    .line 440
    .local v7, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 442
    .local v6, cId:I
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v7

    .line 443
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    if-nez v7, :cond_0

    .line 446
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 448
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 467
    :goto_0
    return-void

    .line 452
    :cond_0
    iget v0, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 454
    :cond_1
    const/16 v0, 0xd2

    if-le v2, v0, :cond_2

    .line 455
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/16 v2, 0xd2

    .line 458
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;-><init>(Lcom/mediatek/internal/telephony/cat/BipManager;ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 459
    .local v8, recvThread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 462
    .end local v8           #recvThread:Ljava/lang/Thread;
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 464
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 538
    const-string v1, "[BIP]"

    const-string v2, "new sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 540
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 541
    return-void
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 477
    const-string v1, "[BIP]"

    const-string v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;-><init>(Lcom/mediatek/internal/telephony/cat/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 533
    .local v0, rt:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 534
    const-string v1, "[BIP]"

    const-string v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1031
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 1032
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1034
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 1035
    return-void
.end method
