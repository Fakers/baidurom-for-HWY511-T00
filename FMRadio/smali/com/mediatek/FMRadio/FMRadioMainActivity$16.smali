.class Lcom/mediatek/FMRadio/FMRadioMainActivity$16;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 958
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 962
    const-string v0, "FMRadioMainActivity"

    const-string v1, "FMRadioActivity.onServiceConnected start"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    check-cast p2, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;->getService()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioMainActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;

    .line 964
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmService(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 965
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 966
    const-string v0, "FMRadioMainActivity"

    const-string v1, "ServiceConnection: Error: can\'t get Service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->finish()V

    .line 989
    :goto_0
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->registerFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 972
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080047

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 988
    :cond_1
    :goto_1
    const-string v0, "FMRadioMainActivity"

    const-string v1, "FMRadioActivity.onServiceConnected end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 975
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    goto :goto_1

    .line 979
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->startAutoTune(Z)V

    goto :goto_1

    .line 983
    :cond_4
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 984
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->stopFMFocusLoss(I)V

    .line 986
    :cond_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080039

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 992
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method
