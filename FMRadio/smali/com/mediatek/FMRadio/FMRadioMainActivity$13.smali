.class Lcom/mediatek/FMRadio/FMRadioMainActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioMainActivity.java"


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
    .line 641
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/16 v4, 0x67

    const/4 v5, 0x0

    .line 646
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshStationUI(I)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)V

    .line 653
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 654
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v2, v5}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1402(Lcom/mediatek/FMRadio/FMRadioMainActivity;Z)Z

    .line 655
    const-string v2, "FMRadioMainActivity"

    const-string v3, "auto tune complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :cond_2
    const-string v2, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 657
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 658
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->isAutoTune:Z
    invoke-static {v2, v5}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1402(Lcom/mediatek/FMRadio/FMRadioMainActivity;Z)Z

    .line 659
    const-string v2, "FMRadioMainActivity"

    const-string v3, "cancel auto tune complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :cond_3
    const-string v2, "com.huawei.android.FMRadio.manualtunecomplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 661
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 662
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 664
    :cond_4
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 665
    const-string v2, "FMRadioMainActivity"

    const-string v3, "manual tune complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 666
    :cond_5
    const-string v2, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 667
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)I

    .line 668
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 669
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 670
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 672
    :cond_6
    const-string v2, "FMRadioMainActivity"

    const-string v3, "play fm complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 673
    :cond_7
    const-string v2, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 674
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iget-boolean v2, v2, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsPlaying:Z

    if-nez v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 678
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 679
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 681
    :cond_8
    const-string v2, "FMRadioMainActivity"

    const-string v3, "stop fm complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 682
    :cond_9
    const-string v2, "com.huawei.android.FMRadio.operationfail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 683
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 684
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 686
    :cond_a
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 688
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 689
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 690
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 692
    :cond_b
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    const-string v2, "FMRadioMainActivity"

    const-string v3, "operation error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 694
    :cond_c
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 695
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 696
    .local v1, mValueHeadSetPlug:I
    if-nez v1, :cond_0

    .line 697
    const-string v2, "FMRadioMainActivity"

    const-string v3, "headset is unplug"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 699
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 702
    :cond_d
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 703
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 704
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 705
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 706
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 708
    :cond_e
    const-string v2, "FMRadioMainActivity"

    const-string v3, "unplug headset during auto search"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_f
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 712
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmManualTuning(Z)V

    .line 713
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 714
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 716
    :cond_10
    const-string v2, "FMRadioMainActivity"

    const-string v3, "unplug headset during manual search"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_11
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const v2, 0x7f080039

    invoke-static {p1, v2, v5}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 722
    .end local v1           #mValueHeadSetPlug:I
    :cond_12
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 723
    const-string v2, "FMRadioMainActivity"

    const-string v3, "headset is unplug"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 725
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 728
    :cond_13
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 729
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 730
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 731
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 732
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 734
    :cond_14
    const-string v2, "FMRadioMainActivity"

    const-string v3, "unplug headset during auto search"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_15
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 737
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmManualTuning(Z)V

    .line 738
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 739
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 741
    :cond_16
    const-string v2, "FMRadioMainActivity"

    const-string v3, "unplug headset during manual search"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_17
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080047

    invoke-static {v2, v3, v5}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 746
    :cond_18
    const-string v2, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 747
    const-string v2, "FMRadioMainActivity"

    const-string v3, "receive headset plug event and do play"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mOnTop:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 754
    :cond_19
    const-string v2, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 755
    const-string v2, "FMRadioMainActivity"

    const-string v3, "receive headset plug event and do search"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mOnTop:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-virtual {v2, v5}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->startAutoTune(Z)V

    goto/16 :goto_0

    .line 759
    :cond_1a
    const-string v2, "com.huawei.android.FMRadio.opensoundsuccess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 760
    const-string v2, "FMRadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 762
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 764
    :cond_1b
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 766
    :cond_1c
    const-string v2, "com.huawei.android.FMRadio.callingstate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 767
    const-string v2, "FMRadioMainActivity"

    const-string v3, "calling state can not play FM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 769
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 771
    :cond_1d
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    goto/16 :goto_0

    .line 774
    :cond_1e
    const-string v2, "com.huawei.android.FMRadio.open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0
.end method
