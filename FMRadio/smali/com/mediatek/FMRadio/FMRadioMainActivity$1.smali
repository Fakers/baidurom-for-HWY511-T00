.class Lcom/mediatek/FMRadio/FMRadioMainActivity$1;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Lcom/mediatek/FMRadio/FMRadioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 108
    const-string v2, "callback_flag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, flag:I
    const-string v2, "FMRadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call back method flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 121
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    return-void
.end method
