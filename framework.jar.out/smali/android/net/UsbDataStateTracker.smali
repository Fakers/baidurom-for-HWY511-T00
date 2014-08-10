.class public Landroid/net/UsbDataStateTracker;
.super Ljava/lang/Object;
.source "UsbDataStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UsbDataStateTracker$1;,
        Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;,
        Landroid/net/UsbDataStateTracker$UdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_DNS1:Ljava/lang/String; = "192.168.0.1"

.field private static final DEFAULT_DNS2:Ljava/lang/String; = "208.67.222.222"

.field private static final TAG:Ljava/lang/String; = "UsbDataStateTracker"

.field private static final USB_IFACE_ADDR:Ljava/lang/String; = "192.168.0.100"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true

.field private static mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mHandler:Landroid/os/Handler;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMessenger:Landroid/os/Messenger;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field protected mUserDataEnabled:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/INetworkManagementService;)V
    .locals 3
    .parameter "netType"
    .parameter "tag"
    .parameter "netd"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v2, p0, Landroid/net/UsbDataStateTracker;->mTeardownRequested:Z

    .line 80
    iput-boolean v2, p0, Landroid/net/UsbDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 81
    iput-boolean v2, p0, Landroid/net/UsbDataStateTracker;->mDefaultRouteSet:Z

    .line 95
    iput-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mUserDataEnabled:Z

    .line 96
    iput-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mPolicyDataEnabled:Z

    .line 110
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, "internet"

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 111
    iput-object p3, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    .line 112
    const-string/jumbo v0, "usbinternet"

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;

    .line 114
    return-void
.end method

.method static synthetic access$102(Landroid/net/UsbDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/UsbDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/UsbDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/UsbDataStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/net/UsbDataStateTracker;->onHandleReadyForUsbInternet()V

    return-void
.end method

.method private checkNullmCm()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 286
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v8, 0x0

    .line 352
    const-string v9, "UsbDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureUsbIface("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v9, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/net/UsbDataStateTracker;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 358
    new-array v5, v8, [Ljava/lang/String;

    .line 360
    .local v5, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 365
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v4, v1, v3

    .line 366
    .local v4, iface:Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/net/UsbDataStateTracker;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 367
    const/4 v6, 0x0

    .line 369
    .local v6, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v9, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 370
    if-eqz v6, :cond_0

    .line 371
    const-string v9, "192.168.0.100"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 372
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v9, Landroid/net/LinkAddress;

    const/16 v10, 0x18

    invoke-direct {v9, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 373
    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 378
    :goto_1
    const-string/jumbo v9, "running"

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 379
    iget-object v9, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 380
    iget-object v9, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->cfgUsbInternet()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 365
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .line 362
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "UsbDataStateTracker"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v2           #e:Ljava/lang/Exception;
    :goto_3
    return v8

    .line 376
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v7       #len$:I
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 382
    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 383
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "UsbDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 384
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 385
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "UsbDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 392
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_2
    const/4 v8, 0x1

    goto :goto_3
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    .line 480
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 481
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 483
    :cond_1
    return-void
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"

    .prologue
    .line 396
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 397
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 399
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 396
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onHandleReadyForUsbInternet()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "UsbDataStateTracker"

    const-string/jumbo v1, "onHandleReadyForUsbInternet"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v1, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/UsbDataStateTracker;->configureUsbIface(Z)Z

    .line 407
    :cond_0
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v3, 0x1

    .line 298
    const-string v4, "UsbDataStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDetailed state, old ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and new state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 301
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v2, v3

    .line 302
    .local v2, wasConnecting:Z
    :goto_0
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 310
    move-object p2, v0

    .line 311
    :cond_0
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 313
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 315
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wasConnecting:Z
    :cond_1
    return-void

    .line 301
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "s"

    .prologue
    .line 176
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 183
    :goto_0
    return-object v0

    .line 178
    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 183
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method


# virtual methods
.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 334
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mDefaultRouteSet:Z

    .line 335
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 346
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 347
    return-void
.end method

.method public reconnect()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    const-string v2, "UsbDataStateTracker"

    const-string/jumbo v3, "reconnect"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, retValue:Z
    invoke-virtual {p0, v4}, Landroid/net/UsbDataStateTracker;->setTeardownRequested(Z)V

    .line 429
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 430
    .local v1, wifimgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 432
    invoke-direct {p0}, Landroid/net/UsbDataStateTracker;->checkNullmCm()V

    .line 433
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 434
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 436
    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 323
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 476
    const-string v0, "UsbDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 330
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mTeardownRequested:Z

    .line 331
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 471
    const-string v0, "UsbDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 123
    iput-object p2, p0, Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    .line 126
    new-instance v1, Landroid/net/UsbDataStateTracker$UdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/net/UsbDataStateTracker$UdstHandler;-><init>(Landroid/os/Looper;Landroid/net/UsbDataStateTracker;)V

    iput-object v1, p0, Landroid/net/UsbDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 127
    sget-object v1, Landroid/net/UsbDataStateTracker;->mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;-><init>(Landroid/net/UsbDataStateTracker;Landroid/net/UsbDataStateTracker$1;)V

    sput-object v1, Landroid/net/UsbDataStateTracker;->mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.net.conn.READY_FOR_USBINTERNET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/net/UsbDataStateTracker;->mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, p0, Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 137
    return-void
.end method

.method public teardown()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 446
    invoke-virtual {p0, v2}, Landroid/net/UsbDataStateTracker;->setTeardownRequested(Z)V

    .line 447
    const-string v0, "UsbDataStateTracker"

    const-string/jumbo v1, "teardown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Landroid/net/UsbDataStateTracker;->checkNullmCm()V

    .line 450
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 457
    return v2
.end method
