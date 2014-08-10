.class Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecvDataRunnable"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field requestDataSize:I

.field response:Landroid/os/Message;

.field result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/cat/BipManager;ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "size"
    .parameter "result"
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->requestDataSize:I

    .line 1044
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 1045
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1046
    iput-object p5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    .line 1047
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1051
    .local v1, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    const/4 v0, 0x0

    .line 1053
    .local v0, errCode:I
    const-string v2, "[BIP]"

    const-string v3, "BM-receiveData: start to receive data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v1

    .line 1055
    if-nez v1, :cond_0

    .line 1056
    const/4 v0, 0x5

    .line 1060
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 1061
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    .line 1062
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 1063
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1064
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->response:Landroid/os/Message;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1065
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: end to receive data. Result code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void

    .line 1058
    :cond_0
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->requestDataSize:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;->result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/cat/Channel;->receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I

    move-result v0

    goto :goto_0
.end method
