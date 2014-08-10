.class Lcom/mediatek/FMRadio/ChannelListActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "ChannelListActivity.java"


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
    .line 331
    iput-object p1, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 335
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, action:Ljava/lang/String;
    const-string v2, "ChannelListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBroadcastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v2, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->isAutoTune:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$200(Lcom/mediatek/FMRadio/ChannelListActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$000(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$100(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$300(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 344
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #setter for: Lcom/mediatek/FMRadio/ChannelListActivity;->isAutoTune:Z
    invoke-static {v2, v5}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$202(Lcom/mediatek/FMRadio/ChannelListActivity;Z)Z

    goto :goto_0

    .line 345
    :cond_3
    const-string v2, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 347
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    iget-object v2, v2, Lcom/mediatek/FMRadio/ChannelListActivity;->mListAdapter:Lcom/mediatek/FMRadio/ChannelListAdapter;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    .line 350
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->refreshMenu()V

    .line 351
    const-string v2, "ChannelListActivity"

    const-string v3, "play complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_5
    const-string v2, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 353
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 354
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 356
    :cond_6
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    iget-object v2, v2, Lcom/mediatek/FMRadio/ChannelListActivity;->mListAdapter:Lcom/mediatek/FMRadio/ChannelListAdapter;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    .line 357
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->refreshMenu()V

    .line 358
    const-string v2, "ChannelListActivity"

    const-string v3, "stop fm complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 359
    :cond_7
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 360
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, mValueHeadSetPlug:I
    if-nez v1, :cond_0

    .line 362
    const-string v2, "ChannelListActivity"

    const-string v3, "headset is unplug"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 364
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 366
    :cond_8
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 367
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 368
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$300(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 369
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$300(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 370
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$300(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 372
    :cond_9
    const-string v2, "ChannelListActivity"

    const-string v3, "unplug headset during auto search"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_a
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    const v2, 0x7f080039

    invoke-static {p1, v2, v5}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 378
    .end local v1           #mValueHeadSetPlug:I
    :cond_b
    const-string v2, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 379
    const-string v2, "ChannelListActivity"

    const-string v3, "receive headset plug event and do play"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mOnTop:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$500(Lcom/mediatek/FMRadio/ChannelListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/ChannelListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 386
    :cond_c
    const-string v2, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 387
    const-string v2, "ChannelListActivity"

    const-string v3, "receive headset plug event and do search"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mOnTop:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$500(Lcom/mediatek/FMRadio/ChannelListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-virtual {v2, v5}, Lcom/mediatek/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    goto/16 :goto_0

    .line 391
    :cond_d
    const-string v2, "com.huawei.android.FMRadio.open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$000(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$100(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/ChannelListActivity$5;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$300(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0
.end method
