.class Landroid/server/BluetoothAdapterStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$1;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 871
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    const-string v1, "Boot Complete onReceive"

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$1;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mIsBootComplete:Z
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$902(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    .line 876
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$1;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mIsNeedToEnableAfterBootComplete:Z
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    const-string/jumbo v1, "mIsNeedToEnableAfterBootComplete = true, turn on"

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$1;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 879
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$1;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mIsNeedToEnableAfterBootComplete:Z
    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$1002(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    const-string v1, "Shutdown onReceive"

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$1;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mIsBootComplete:Z
    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$902(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    goto :goto_0
.end method
