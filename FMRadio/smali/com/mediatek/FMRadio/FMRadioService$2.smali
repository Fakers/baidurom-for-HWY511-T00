.class Lcom/mediatek/FMRadio/FMRadioService$2;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->doStartOrStopFM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1383
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1384
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1385
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mServiceStartId:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->stopSelf(I)V

    .line 1386
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v3, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1416
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1389
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioService;->mWidgetToastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1390
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v3, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_0

    .line 1393
    :cond_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1394
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioService;->mWidgetToastHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1395
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v3, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_0

    .line 1399
    :cond_2
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 1401
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v2

    .line 1402
    .local v2, mCurFrequency:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1403
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 1405
    const/16 v1, 0x3e8

    .line 1406
    .local v1, hundredMillisecond:I
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    :goto_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 1414
    .end local v1           #hundredMillisecond:I
    :goto_2
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v3, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_0

    .line 1407
    .restart local v1       #hundredMillisecond:I
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1412
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #hundredMillisecond:I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->intoApplication()V
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto :goto_2
.end method
