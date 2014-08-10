.class Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/ValuePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/ValuePicker;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/ValuePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1541
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #setter for: Lcom/mediatek/FMRadio/ValuePicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->access$002(Lcom/mediatek/FMRadio/ValuePicker;I)I

    .line 1542
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/ValuePicker;->access$100(Lcom/mediatek/FMRadio/ValuePicker;)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/ValuePicker;->access$200(Lcom/mediatek/FMRadio/ValuePicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #calls: Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/ValuePicker;->access$300(Lcom/mediatek/FMRadio/ValuePicker;)V

    .line 1553
    :goto_0
    return-void

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/ValuePicker;->access$100(Lcom/mediatek/FMRadio/ValuePicker;)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/ValuePicker;->access$200(Lcom/mediatek/FMRadio/ValuePicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 1548
    .local v4, deltaY:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/ValuePicker;->access$400(Lcom/mediatek/FMRadio/ValuePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 1549
    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/ValuePicker;->access$400(Lcom/mediatek/FMRadio/ValuePicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 1551
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ValuePicker;->access$500(Lcom/mediatek/FMRadio/ValuePicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1552
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0

    .line 1549
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/mediatek/FMRadio/ValuePicker;

    #getter for: Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/ValuePicker;->access$400(Lcom/mediatek/FMRadio/ValuePicker;)I

    move-result v0

    goto :goto_1
.end method
