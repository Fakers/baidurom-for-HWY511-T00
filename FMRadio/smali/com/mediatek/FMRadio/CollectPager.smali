.class public Lcom/mediatek/FMRadio/CollectPager;
.super Landroid/view/ViewGroup;
.source "CollectPager.java"


# static fields
.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "CollectPager"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mCurScreen:I

.field private mDefaultScreen:I

.field private mLastMotionX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalScreen:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/FMRadio/CollectPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mTotalScreen:I

    .line 21
    iput v1, p0, Lcom/mediatek/FMRadio/CollectPager;->mDefaultScreen:I

    .line 27
    iput v1, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    .line 38
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    .line 39
    iget v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mDefaultScreen:I

    iput v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    .line 40
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchSlop:I

    .line 41
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/FMRadio/CollectPager;->scrollTo(II)V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->postInvalidate()V

    .line 109
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 189
    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    if-eqz v3, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v5

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 194
    .local v1, x:F
    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_2
    :goto_1
    iget v3, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    .line 196
    :pswitch_0
    iget v3, p0, Lcom/mediatek/FMRadio/CollectPager;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 197
    .local v2, xDiff:I
    iget v3, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 198
    iput v5, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    goto :goto_1

    .line 203
    .end local v2           #xDiff:I
    :pswitch_1
    iput v1, p0, Lcom/mediatek/FMRadio/CollectPager;->mLastMotionX:F

    .line 204
    iget-object v3, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput v3, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    .line 209
    :pswitch_2
    iput v4, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getChildCount()I

    move-result v0

    .line 48
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 49
    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/CollectPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 52
    .local v2, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 48
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v1           #childView:Landroid/view/View;
    :cond_1
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/CollectPager;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/CollectPager;->view:Landroid/view/View;

    .line 57
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 64
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 65
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 66
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ScrollLayout only canmCurScreen run at EXACTLY mode!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 70
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 71
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ScrollLayout only can run at EXACTLY mode!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getChildCount()I

    move-result v0

    .line 75
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 76
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/CollectPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mTotalScreen:I

    mul-int/2addr v6, p1

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_2
    iget v5, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/FMRadio/CollectPager;->scrollTo(II)V

    .line 80
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 113
    iget-object v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 114
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 116
    :cond_0
    iget-object v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 119
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 121
    .local v4, x:F
    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    const/4 v5, 0x1

    :cond_1
    :goto_1
    return v5

    .line 123
    :pswitch_0
    const-string v5, "CollectPager"

    const-string v6, "event down!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v5, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 125
    iget-object v5, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 127
    :cond_2
    iput v4, p0, Lcom/mediatek/FMRadio/CollectPager;->mLastMotionX:F

    goto :goto_0

    .line 131
    :pswitch_1
    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mLastMotionX:F

    sub-float/2addr v6, v4

    float-to-int v1, v6

    .line 132
    .local v1, deltaX:I
    const-string v6, "CollectPager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event : move  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v6

    if-nez v6, :cond_3

    if-gez v1, :cond_3

    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    if-eqz v6, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_4

    if-lez v1, :cond_4

    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    iget v7, p0, Lcom/mediatek/FMRadio/CollectPager;->mTotalScreen:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_1

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v6

    add-int/2addr v6, v1

    if-gtz v6, :cond_5

    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    if-nez v6, :cond_5

    .line 139
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/CollectPager;->setScrollX(I)V

    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_6

    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    iget v7, p0, Lcom/mediatek/FMRadio/CollectPager;->mTotalScreen:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getWidth()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/FMRadio/CollectPager;->setScrollX(I)V

    goto/16 :goto_1

    .line 148
    :cond_6
    iget-object v6, p0, Lcom/mediatek/FMRadio/CollectPager;->view:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iput v4, p0, Lcom/mediatek/FMRadio/CollectPager;->mLastMotionX:F

    .line 150
    invoke-virtual {p0, v1, v5}, Lcom/mediatek/FMRadio/CollectPager;->scrollBy(II)V

    goto/16 :goto_0

    .line 154
    .end local v1           #deltaX:I
    :pswitch_2
    const-string v6, "CollectPager"

    const-string v7, "event : up"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/mediatek/FMRadio/CollectPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 156
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 157
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v3, v6

    .line 159
    .local v3, velocityX:I
    const/16 v6, 0x258

    if-le v3, v6, :cond_8

    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    if-lez v6, :cond_8

    .line 160
    const-string v6, "CollectPager"

    const-string v7, "snap left"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/mediatek/FMRadio/CollectPager;->snapToScreen(I)V

    .line 168
    :goto_2
    iget-object v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_7

    .line 169
    iget-object v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 170
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 172
    :cond_7
    iput v5, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    .line 173
    iget-object v5, p0, Lcom/mediatek/FMRadio/CollectPager;->view:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 162
    :cond_8
    const/16 v6, -0x258

    if-ge v3, v6, :cond_9

    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    iget v7, p0, Lcom/mediatek/FMRadio/CollectPager;->mTotalScreen:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_9

    .line 163
    const-string v6, "CollectPager"

    const-string v7, "snap right"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v6, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/mediatek/FMRadio/CollectPager;->snapToScreen(I)V

    goto :goto_2

    .line 166
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->snapToDestination()V

    goto :goto_2

    .line 176
    .end local v2           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v3           #velocityX:I
    :pswitch_3
    iput v5, p0, Lcom/mediatek/FMRadio/CollectPager;->mTouchState:I

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getWidth()I

    move-result v1

    .line 88
    .local v1, screenWidth:I
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 89
    .local v0, destScreen:I
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/CollectPager;->snapToScreen(I)V

    .line 90
    return-void
.end method

.method public snapToScreen(I)V
    .locals 6
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 93
    iget v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mTotalScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 97
    .local v3, delta:I
    iget-object v0, p0, Lcom/mediatek/FMRadio/CollectPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 98
    iput p1, p0, Lcom/mediatek/FMRadio/CollectPager;->mCurScreen:I

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/CollectPager;->invalidate()V

    .line 101
    .end local v3           #delta:I
    :cond_0
    return-void
.end method
