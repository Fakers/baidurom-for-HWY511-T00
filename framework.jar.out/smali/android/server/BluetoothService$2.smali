.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 1984
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1987
    const-string v4, "[API] onReceive()"

    #calls: Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/server/BluetoothService;->access$500(Ljava/lang/String;)V

    .line 1988
    if-nez p2, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1991
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1992
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1995
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1996
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1998
    :cond_2
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/16 v5, 0x38

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2000
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2001
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2003
    .local v3, state:I
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    if-nez v3, :cond_4

    .line 2005
    invoke-static {v7}, Landroid/server/BluetoothService;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 2006
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v4, v7}, Landroid/server/BluetoothService;->access$802(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2008
    :cond_4
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "bluetooth_service_settings"

    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/content/Context;

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2011
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dock_bluetooth_address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/server/BluetoothService;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2012
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2014
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #state:I
    :cond_5
    const-string v4, "android.server.BluetoothService.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2015
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2016
    :cond_6
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2017
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v4

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v5}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v5

    const/16 v6, 0x64

    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/server/BluetoothService$UserSwitchedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService$UserSwitchedHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
