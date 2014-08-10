.class public Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.super Ljava/lang/Object;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;,
        Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalSwitchState;,
        Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThermalSwitchManager"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;-><init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThermalSwitchManager"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;-><init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    .line 92
    const-string v0, "ThermalSwitchManager"

    const-string v1, "Created and started thermal switch thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V

    return-void
.end method

.method private changeToDynamicThermalManagement()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    invoke-direct {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private changeToThermalProtection()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    invoke-direct {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private execShellCommand(Ljava/lang/String;)V
    .locals 7
    .parameter "shellCommand"

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, proc:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 120
    .local v1, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 121
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #osw:Ljava/io/OutputStreamWriter;
    .local v2, osw:Ljava/io/OutputStreamWriter;
    if-eqz v2, :cond_0

    .line 123
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 124
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 125
    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 127
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 135
    :cond_0
    if-eqz v2, :cond_1

    .line 137
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 148
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const-string v4, "ThermalSwitchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execCommandLine() Err exit code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v1, v2

    .line 151
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v1       #osw:Ljava/io/OutputStreamWriter;
    :cond_3
    :goto_2
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v4, "ThermalSwitchManager"

    const-string v5, "execCommandLine() IO Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    if-eqz v1, :cond_3

    .line 137
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 139
    :catch_1
    move-exception v4

    goto :goto_2

    .line 135
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_4

    .line 137
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 139
    :cond_4
    :goto_5
    throw v4

    .end local v1           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v1       #osw:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 146
    .end local v1           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v4

    goto :goto_1

    .line 135
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v1       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 130
    .end local v1           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v1       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method


# virtual methods
.method public notifyAppState(Ljava/lang/String;Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;)V
    .locals 3
    .parameter "appPackage"
    .parameter "appState"

    .prologue
    .line 104
    sget-object v1, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Resumed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    sget-object v1, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 111
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 96
    const-string v0, "ThermalSwitchManager"

    const-string v1, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mHandler:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    return-void
.end method
