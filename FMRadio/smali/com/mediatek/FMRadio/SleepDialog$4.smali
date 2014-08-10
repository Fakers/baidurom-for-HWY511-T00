.class Lcom/mediatek/FMRadio/SleepDialog$4;
.super Ljava/lang/Object;
.source "SleepDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 115
    iput-object p1, p0, Lcom/mediatek/FMRadio/SleepDialog$4;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 130
    if-eqz p3, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog$4;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    #setter for: Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I
    invoke-static {v0, p2}, Lcom/mediatek/FMRadio/SleepDialog;->access$102(Lcom/mediatek/FMRadio/SleepDialog;I)I

    .line 132
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog$4;->this$0:Lcom/mediatek/FMRadio/SleepDialog;

    #calls: Lcom/mediatek/FMRadio/SleepDialog;->refreshCurTextView()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/SleepDialog;->access$500(Lcom/mediatek/FMRadio/SleepDialog;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 125
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 120
    return-void
.end method
