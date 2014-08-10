.class public Lcom/mediatek/bluetooth/BluetoothAdapterEx;
.super Ljava/lang/Object;
.source "BluetoothAdapterEx.java"


# static fields
.field private static sAdapterEx:Lcom/mediatek/bluetooth/BluetoothAdapterEx;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method private constructor <init>(Landroid/bluetooth/IBluetooth;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "BluetoothAdapterEx"

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothAdapterEx;->TAG:Ljava/lang/String;

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothAdapterEx;->mService:Landroid/bluetooth/IBluetooth;

    .line 58
    return-void
.end method

.method public static declared-synchronized getDefaultAdapterEx()Lcom/mediatek/bluetooth/BluetoothAdapterEx;
    .locals 4

    .prologue
    .line 34
    const-class v3, Lcom/mediatek/bluetooth/BluetoothAdapterEx;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/mediatek/bluetooth/BluetoothAdapterEx;->sAdapterEx:Lcom/mediatek/bluetooth/BluetoothAdapterEx;

    if-nez v2, :cond_0

    .line 35
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 38
    .local v1, service:Landroid/bluetooth/IBluetooth;
    new-instance v2, Lcom/mediatek/bluetooth/BluetoothAdapterEx;

    invoke-direct {v2, v1}, Lcom/mediatek/bluetooth/BluetoothAdapterEx;-><init>(Landroid/bluetooth/IBluetooth;)V

    sput-object v2, Lcom/mediatek/bluetooth/BluetoothAdapterEx;->sAdapterEx:Lcom/mediatek/bluetooth/BluetoothAdapterEx;

    .line 41
    .end local v1           #service:Landroid/bluetooth/IBluetooth;
    :cond_0
    sget-object v2, Lcom/mediatek/bluetooth/BluetoothAdapterEx;->sAdapterEx:Lcom/mediatek/bluetooth/BluetoothAdapterEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 34
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getSSPDebugMode()Z
    .locals 3

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothAdapterEx;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getSSPDebugMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapterEx"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSSPDebugMode(Z)Z
    .locals 3
    .parameter "on"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothAdapterEx;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setSSPDebugMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapterEx"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method
