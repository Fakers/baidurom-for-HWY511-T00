.class Lcom/mediatek/FMRadio/SleepDialog$2;
.super Ljava/lang/Object;
.source "SleepDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/SleepDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/SleepDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/SleepDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/FMRadio/SleepDialog$2;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog$2;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog$2;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    #getter for: Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/FMRadio/SleepDialog;->access$400(Lcom/mediatek/FMRadio/SleepDialog;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog$2;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    #getter for: Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/mediatek/FMRadio/SleepDialog;->access$400(Lcom/mediatek/FMRadio/SleepDialog;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    #setter for: Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/SleepDialog;->access$302(Lcom/mediatek/FMRadio/SleepDialog;F)F

    .line 93
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog$2;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    #calls: Lcom/mediatek/FMRadio/SleepDialog;->refreshCurTextView()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/SleepDialog;->access$500(Lcom/mediatek/FMRadio/SleepDialog;)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog$2;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    #calls: Lcom/mediatek/FMRadio/SleepDialog;->refreshGraduationView()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/SleepDialog;->access$600(Lcom/mediatek/FMRadio/SleepDialog;)V

    .line 95
    return-void
.end method
