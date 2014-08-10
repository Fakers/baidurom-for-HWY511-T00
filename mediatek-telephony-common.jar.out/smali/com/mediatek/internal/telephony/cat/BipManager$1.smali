.class Lcom/mediatek/internal/telephony/cat/BipManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/BipManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 1018
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$200(Lcom/mediatek/internal/telephony/cat/BipManager;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$900(Lcom/mediatek/internal/telephony/cat/BipManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->isClientChannelOpened()Z

    move-result v1

    if-ne v3, v1, :cond_2

    .line 1020
    :cond_1
    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1023
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$1;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v1, v2, p2}, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;-><init>(Lcom/mediatek/internal/telephony/cat/BipManager;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1024
    .local v0, rt:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1025
    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .end local v0           #rt:Ljava/lang/Thread;
    :cond_2
    return-void
.end method
