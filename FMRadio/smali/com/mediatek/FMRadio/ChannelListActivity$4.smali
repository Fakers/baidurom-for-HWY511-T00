.class Lcom/mediatek/FMRadio/ChannelListActivity$4;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/ChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/mediatek/FMRadio/ChannelListActivity$4;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameResult(ILjava/lang/String;)V
    .locals 5
    .parameter "frequency"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 316
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$4;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$000(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/mediatek/FMRadio/FMRadioUtils;->doRenameStation(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    .line 317
    .local v1, result:Z
    if-nez v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$4;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$000(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080024

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$4;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$100(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$4;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$000(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080023

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.huawei.android.FMRadio.namechanged"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$4;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-virtual {v2, v0}, Lcom/mediatek/FMRadio/ChannelListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    const-string v2, "ChannelListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New name is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
