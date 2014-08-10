.class final Lcom/mediatek/FMRadio/FMRadioUtils$2;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioUtils;->doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$keepCollected:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioUtils$2;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/mediatek/FMRadio/FMRadioUtils$2;->val$keepCollected:Z

    iput-object p3, p0, Lcom/mediatek/FMRadio/FMRadioUtils$2;->val$handler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->access$000()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->setFromFind(Z)V

    .line 468
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->access$000()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->powerDownAsync()V

    .line 469
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->setFromFind(Z)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioUtils$2;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioUtils$2;->val$keepCollected:Z

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doClearStations(Landroid/content/Context;Z)Z

    .line 472
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioUtils$2;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->access$000()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->startScanAsync()V

    .line 474
    return-void
.end method
