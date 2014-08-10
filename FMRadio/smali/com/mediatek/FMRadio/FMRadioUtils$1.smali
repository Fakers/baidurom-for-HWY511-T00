.class final Lcom/mediatek/FMRadio/FMRadioUtils$1;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioUtils;->doManualSearch(Landroid/content/Context;Landroid/app/ProgressDialog;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$direction:Z

.field final synthetic val$station:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioUtils$1;->val$station:I

    iput-boolean p2, p0, Lcom/mediatek/FMRadio/FMRadioUtils$1;->val$direction:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 435
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->access$000()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioUtils$1;->val$station:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioUtils$1;->val$direction:Z

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->seekStationAsync(FZ)V

    .line 437
    return-void
.end method
