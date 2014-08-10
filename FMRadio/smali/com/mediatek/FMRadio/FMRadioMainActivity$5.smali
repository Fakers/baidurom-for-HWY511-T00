.class Lcom/mediatek/FMRadio/FMRadioMainActivity$5;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioMainActivity;->initViews()V
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
    .line 199
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 202
    const-string v1, "FMRadioMainActivity"

    const-string v2, "mPowerButton : OnClick"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->exitService()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    .line 205
    const-string v1, "FMRadioMainActivity"

    const-string v2, "start to stop fm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I

    move-result v0

    .line 209
    .local v0, frequency:I
    :goto_1
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 211
    const-string v1, "FMRadioMainActivity"

    const-string v2, "start to play fm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v0           #frequency:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 213
    .restart local v0       #frequency:I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->startAutoTune(Z)V

    .line 214
    const-string v1, "FMRadioMainActivity"

    const-string v2, "start to auto search"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
