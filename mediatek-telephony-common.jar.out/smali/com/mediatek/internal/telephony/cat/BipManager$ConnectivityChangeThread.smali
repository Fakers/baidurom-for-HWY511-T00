.class public Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectivityChangeThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/BipManager;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "in"

    .prologue
    .line 895
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const-string v0, "[BIP]"

    const-string v1, "ConnectivityChangeThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    .line 898
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 903
    const-string v11, "[BIP]"

    const-string v12, "ConnectivityChangeThread Enter"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v11, "[BIP]"

    const-string v12, "Connectivity changed"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const/4 v8, 0x0

    .line 906
    .local v8, ret:I
    const/4 v7, 0x0

    .line 908
    .local v7, response:Landroid/os/Message;
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string v12, "networkInfo"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 910
    .local v4, info:Landroid/net/NetworkInfo;
    if-nez v4, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    .line 915
    .local v10, type:I
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    .line 916
    .local v9, state:Landroid/net/NetworkInfo$State;
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "network type is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "network state is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 920
    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v11, :cond_7

    .line 921
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$200(Lcom/mediatek/internal/telephony/cat/BipManager;)Z

    move-result v12

    if-ne v11, v12, :cond_5

    .line 922
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #calls: Lcom/mediatek/internal/telephony/cat/BipManager;->requestRouteToHost()Z
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$300(Lcom/mediatek/internal/telephony/cat/BipManager;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 923
    const-string v11, "[BIP]"

    const-string v12, "Fail - requestRouteToHost"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    const/4 v8, 0x2

    .line 926
    :cond_2
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #calls: Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$400(Lcom/mediatek/internal/telephony/cat/BipManager;)I

    move-result v8

    .line 927
    const/16 v11, 0xa

    if-eq v8, v11, :cond_0

    .line 928
    if-eqz v8, :cond_3

    const/4 v11, 0x3

    if-ne v8, v11, :cond_4

    .line 929
    :cond_3
    const-string v11, "[BIP]"

    const-string v12, "channel is activated"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    const/16 v12, 0x80

    #calls: Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$500(Lcom/mediatek/internal/telephony/cat/BipManager;I)V

    .line 935
    :goto_1
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$202(Lcom/mediatek/internal/telephony/cat/BipManager;Z)Z

    .line 936
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1e

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$600(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v14

    invoke-virtual {v11, v12, v8, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 937
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 932
    :cond_4
    const-string v11, "[BIP]"

    const-string v12, "channel is un-activated"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    const/4 v12, 0x0

    #calls: Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$500(Lcom/mediatek/internal/telephony/cat/BipManager;I)V

    goto :goto_1

    .line 940
    :cond_5
    const-string v11, "[BIP]"

    const-string v12, "Error in channel state."

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    const/4 v11, 0x1

    if-gt v3, v11, :cond_0

    .line 942
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v2

    .line 943
    .local v2, channel:Lcom/mediatek/internal/telephony/cat/Channel;
    if-eqz v2, :cond_6

    .line 944
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">cid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",protocolType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 947
    .end local v2           #channel:Lcom/mediatek/internal/telephony/cat/Channel;
    .end local v3           #i:I
    :cond_7
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v11, :cond_0

    .line 948
    const-string v11, "[BIP]"

    const-string v12, "network state - disconnected"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$200(Lcom/mediatek/internal/telephony/cat/BipManager;)Z

    move-result v12

    if-ne v11, v12, :cond_9

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$700(Lcom/mediatek/internal/telephony/cat/BipManager;)I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_9

    .line 951
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$800(Lcom/mediatek/internal/telephony/cat/BipManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v2

    .line 952
    .restart local v2       #channel:Lcom/mediatek/internal/telephony/cat/Channel;
    const/4 v8, 0x2

    .line 954
    if-eqz v2, :cond_8

    .line 955
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 956
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$800(Lcom/mediatek/internal/telephony/cat/BipManager;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 961
    :goto_3
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    const/4 v12, 0x2

    #setter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$702(Lcom/mediatek/internal/telephony/cat/BipManager;I)I

    .line 962
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$600(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    const/4 v12, 0x0

    iput v12, v11, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 963
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$202(Lcom/mediatek/internal/telephony/cat/BipManager;Z)Z

    .line 964
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1e

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$600(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v14

    invoke-virtual {v11, v12, v8, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 965
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 958
    :cond_8
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$800(Lcom/mediatek/internal/telephony/cat/BipManager;)I

    move-result v12

    iget-object v13, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    iget-object v13, v13, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v13, v13, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    goto :goto_3

    .line 967
    .end local v2           #channel:Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_9
    const/4 v3, 0x0

    .line 968
    .restart local v3       #i:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v1, alByte:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 970
    .local v0, additionalInfo:[B
    const-string v11, "[BIP]"

    const-string v12, "this is a drop link"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    const/4 v12, 0x2

    #setter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$702(Lcom/mediatek/internal/telephony/cat/BipManager;I)I

    .line 972
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$600(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    const/4 v12, 0x0

    iput v12, v11, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 974
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v11, 0xa

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 976
    .local v6, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v3, 0x1

    :goto_4
    const/4 v11, 0x1

    if-gt v3, v11, :cond_c

    .line 977
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v12

    if-ne v11, v12, :cond_b

    .line 979
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v2

    .line 980
    .restart local v2       #channel:Lcom/mediatek/internal/telephony/cat/Channel;
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "channel protocolType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const/4 v11, 0x1

    iget v12, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-eq v11, v12, :cond_a

    const/4 v11, 0x2

    iget v12, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v11, v12, :cond_b

    .line 983
    :cond_a
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 984
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 985
    const/16 v11, -0x48

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget v11, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    or-int/lit8 v11, v11, 0x0

    int-to-byte v11, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .end local v2           #channel:Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 990
    :catch_0
    move-exception v5

    .line 991
    .local v5, ne:Ljava/lang/NullPointerException;
    const-string v11, "[BIP]"

    const-string v12, "NE,channel null"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 992
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 996
    .end local v5           #ne:Ljava/lang/NullPointerException;
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_e

    .line 997
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v0, v11, [B

    .line 998
    const/4 v3, 0x0

    :goto_6
    array-length v11, v0

    if-ge v3, v11, :cond_d

    .line 999
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    aput-byte v11, v0, v3

    .line 998
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1001
    :cond_d
    const/16 v11, 0x82

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 1002
    const/16 v11, 0x81

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 1003
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1004
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 1005
    const-string v11, "[BIP]"

    const-string v12, "onEventDownload: for channel status"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v11, v6}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 1008
    :cond_e
    const-string v11, "[BIP]"

    const-string v12, "onEventDownload: No client channels are opened."

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
