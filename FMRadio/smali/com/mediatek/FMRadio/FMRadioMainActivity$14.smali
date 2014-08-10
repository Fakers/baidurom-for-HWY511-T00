.class Lcom/mediatek/FMRadio/FMRadioMainActivity$14;
.super Landroid/os/Handler;
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
    .line 815
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 819
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 821
    :sswitch_0
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mOnTop:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 822
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    goto :goto_0

    .line 826
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 827
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "key_is_power_up"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 829
    .local v4, isPowerup:Z
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iput-boolean v4, v6, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsPlaying:Z

    .line 830
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    .line 831
    const-string v6, "FMRadioMainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateFMState: FMRadio is powerup = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #isPowerup:Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 835
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v7, "key_is_power_down"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 837
    .local v3, isPowerdown:Z
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    if-nez v3, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, v7, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsPlaying:Z

    .line 838
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    goto :goto_0

    .line 841
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #isPowerdown:Z
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 842
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v6, "key_is_power_up"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 844
    .local v2, isPowerUp:Z
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iget-boolean v7, v7, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsPlaying:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iget-boolean v2, v7, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsPlaying:Z

    .end local v2           #isPowerUp:Z
    :cond_2
    iput-boolean v2, v6, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsPlaying:Z

    .line 846
    const-string v6, "key_tune_to_station"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 847
    .local v1, frequency:F
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)I

    .line 850
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 851
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->hide()V

    .line 853
    :cond_3
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I

    move-result v7

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshStationUI(I)V
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)V

    .line 854
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    goto/16 :goto_0

    .line 857
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #frequency:F
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 858
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v7, "key_is_switch_anntenna"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 860
    .local v5, isSwitch:Z
    if-nez v5, :cond_0

    .line 861
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080039

    invoke-static {v7, v8, v6}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 865
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v5           #isSwitch:Z
    :sswitch_5
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080047

    invoke-static {v7, v8, v6}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 868
    :sswitch_6
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->finish()V

    goto/16 :goto_0

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_6
        0xf -> :sswitch_3
        0x22 -> :sswitch_5
        0x67 -> :sswitch_0
    .end sparse-switch
.end method
