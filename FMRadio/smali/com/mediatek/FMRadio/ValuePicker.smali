.class public Lcom/mediatek/FMRadio/ValuePicker;
.super Landroid/widget/LinearLayout;
.source "ValuePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;,
        Lcom/mediatek/FMRadio/ValuePicker$Formatter;,
        Lcom/mediatek/FMRadio/ValuePicker$OnScrollListener;,
        Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0x3c

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lcom/mediatek/FMRadio/ValuePicker$Formatter;


# instance fields
.field isEnable:Z

.field isTouch:Z

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mBeginEditOnUpEvent:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field public mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lcom/mediatek/FMRadio/ValuePicker$Formatter;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/TextView;

.field private mIsAccessibilityEnabled:Z

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/mediatek/FMRadio/ValuePicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/mediatek/FMRadio/ValuePicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 144
    new-instance v0, Lcom/mediatek/FMRadio/ValuePicker$1;

    invoke-direct {v0}, Lcom/mediatek/FMRadio/ValuePicker$1;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/ValuePicker;->TWO_DIGIT_FORMATTER:Lcom/mediatek/FMRadio/ValuePicker$Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/FMRadio/ValuePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 454
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v10, 0x7f070042

    const v8, 0x7f070041

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 464
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 252
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 269
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    .line 369
    iput v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mScrollState:I

    .line 380
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->isTouch:Z

    .line 381
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->isEnable:Z

    .line 383
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mIsAccessibilityEnabled:Z

    .line 466
    iget-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 467
    .local v0, accessibilityMgr:Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mIsAccessibilityEnabled:Z

    .line 469
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingable:Z

    .line 470
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinHeight:I

    .line 471
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxHeight:I

    .line 473
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinWidth:I

    .line 474
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxWidth:I

    .line 475
    iget v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxWidth:I

    const v7, 0x7fffffff

    if-ne v4, v7, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mComputeMaxWidth:Z

    .line 477
    invoke-virtual {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->setWillNotDraw(Z)V

    .line 478
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 480
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 482
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    invoke-virtual {v2, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 485
    const v4, 0x7f0b0042

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    .line 488
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTouchSlop:I

    .line 489
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 490
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTouchSlop:I

    .line 491
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinimumFlingVelocity:I

    .line 492
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaximumFlingVelocity:I

    .line 494
    iget-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTextSize:I

    .line 497
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 498
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 499
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 500
    iget v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 501
    iget-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 502
    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    iput-object v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 506
    const-string v4, "selectorPaintAlpha"

    new-array v6, v9, [I

    fill-array-data v6, :array_1

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 508
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 511
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 512
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x4020

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v4, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 514
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    .line 516
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v4, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 518
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 528
    :cond_0
    :goto_2
    return-void

    .end local v1           #configuration:Landroid/view/ViewConfiguration;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_1
    move v4, v6

    .line 467
    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 475
    goto/16 :goto_1

    .line 524
    .restart local v1       #configuration:Landroid/view/ViewConfiguration;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #paint:Landroid/graphics/Paint;
    :cond_3
    invoke-direct {p0, v9}, Lcom/mediatek/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 525
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_2

    .line 252
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 506
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/ValuePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/ValuePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/ValuePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/ValuePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/ValuePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/ValuePicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1281
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1285
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1286
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/ValuePicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1288
    :cond_1
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    .line 1289
    .local v0, previous:I
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/ValuePicker;->setValue(I)V

    .line 1290
    invoke-direct {p0, v0, p1}, Lcom/mediatek/FMRadio/ValuePicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1439
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1440
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1439
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1442
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1443
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1444
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    .line 1446
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1447
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->ensureCachedScrollSelectorValue(I)V

    .line 1448
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3
    .parameter "selectorIndex"

    .prologue
    .line 1455
    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1456
    .local v1, scrollSelectorValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1470
    :goto_0
    return-void

    .line 1459
    :cond_0
    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    if-lt p1, v2, :cond_1

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    if-le p1, v2, :cond_2

    .line 1460
    :cond_1
    const-string v1, ""

    .line 1469
    :goto_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1462
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1463
    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int v0, p1, v2

    .line 1464
    .local v0, displayedValueIndex:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 1465
    goto :goto_1

    .line 1466
    .end local v0           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/ValuePicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1384
    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mPreviousScrollerY:I

    .line 1386
    if-lez p1, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1392
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->invalidate()V

    .line 1393
    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1300
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1301
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1302
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1303
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1304
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/FMRadio/ValuePicker;->scrollBy(II)V

    .line 1306
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1473
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1410
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1411
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iget v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1415
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1412
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1413
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iget v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1400
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1401
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1423
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1424
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1426
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1427
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1428
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    .line 1430
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1431
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->ensureCachedScrollSelectorValue(I)V

    .line 1432
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1348
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBottom:I

    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->setFadingEdgeLength(I)V

    .line 1349
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1331
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 1332
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1333
    .local v4, totalTextHeight:I
    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBottom:I

    iget v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1334
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    int-to-float v2, v5

    .line 1335
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    .line 1336
    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTextSize:I

    iget v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I

    .line 1339
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1340
    .local v0, editTextTextPosition:I
    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    .line 1342
    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 1343
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1344
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 4

    .prologue
    .line 1260
    iget-object v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1261
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getValue()I

    move-result v0

    .line 1262
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1263
    add-int/lit8 v3, v1, -0x1

    add-int v2, v0, v3

    .line 1264
    .local v2, selectorIndex:I
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v3, :cond_0

    .line 1265
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/ValuePicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1267
    :cond_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    aput v2, v3, v1

    .line 1268
    iget-object v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/ValuePicker;->ensureCachedScrollSelectorValue(I)V

    .line 1262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1270
    .end local v2           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1218
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1229
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1221
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1222
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1223
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1227
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1229
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1223
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mOnValueChangeListener:Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mOnValueChangeListener:Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;

    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;->onValueChange(Lcom/mediatek/FMRadio/ValuePicker;II)V

    .line 1511
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1371
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    iput p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mScrollState:I

    .line 1375
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mOnScrollListener:Lcom/mediatek/FMRadio/ValuePicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mOnScrollListener:Lcom/mediatek/FMRadio/ValuePicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/FMRadio/ValuePicker$OnScrollListener;->onScrollStateChange(Lcom/mediatek/FMRadio/ValuePicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1355
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1356
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1357
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/ValuePicker;->postAdjustScrollerCommand(I)V

    .line 1358
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 1365
    :goto_0
    return-void

    .line 1360
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    goto :goto_0

    .line 1363
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 1528
    new-instance v0, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;-><init>(Lcom/mediatek/FMRadio/ValuePicker;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

    .line 1532
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/FMRadio/ValuePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1533
    return-void

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/mediatek/FMRadio/ValuePicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1520
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1246
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1247
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1248
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/mediatek/FMRadio/ValuePicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1250
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1313
    iput p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    .line 1314
    if-ne p1, v3, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1318
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1320
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1321
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    const v2, 0x10404be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1325
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1327
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 924
    iget-boolean v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    const/4 v4, 0x0

    .line 928
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 929
    const/4 v3, 0x0

    .line 930
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 931
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 932
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 933
    move v3, v1

    .line 930
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 936
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 937
    .local v5, numberOfDigits:I
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    .line 938
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 939
    add-int/lit8 v5, v5, 0x1

    .line 940
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 942
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 952
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 953
    iget v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 954
    iget v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 955
    iput v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxWidth:I

    .line 959
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0

    .line 944
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 945
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 946
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 947
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 948
    float-to-int v4, v6

    .line 945
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 957
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinWidth:I

    iput v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1490
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/ValuePicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    const v2, 0x10404bd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1501
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 1492
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    iget v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 763
    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 767
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 769
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 774
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 775
    .local v0, currentScrollerY:I
    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 776
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mPreviousScrollerY:I

    .line 778
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/FMRadio/ValuePicker;->scrollBy(II)V

    .line 779
    iput v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mPreviousScrollerY:I

    .line 780
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 781
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 783
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1134
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 746
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 749
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 651
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 715
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 736
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 717
    :pswitch_0
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 719
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 721
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->isTouch:Z

    goto :goto_0

    .line 724
    :pswitch_1
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->isEnable:Z

    if-eqz v1, :cond_0

    .line 725
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->isTouch:Z

    goto :goto_0

    .line 730
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 731
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->isTouch:Z

    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 755
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 758
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1146
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1150
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1152
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getDrawingTime()J

    move-result-wide v2

    .line 1153
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1154
    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/ValuePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1155
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1153
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1158
    :cond_1
    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/ValuePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/mediatek/FMRadio/ValuePicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1161
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1111
    const v0, 0x3f666666

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1106
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isTouch()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->isTouch:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1119
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 1128
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 1165
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1166
    iget v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-nez v10, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mRight:I

    iget v11, p0, Lcom/mediatek/FMRadio/ValuePicker;->mLeft:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->floatValue()F

    move-result v8

    .line 1171
    .local v8, x:F
    iget v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->floatValue()F

    move-result v9

    .line 1173
    .local v9, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1175
    .local v3, restoreCount:I
    iget-object v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 1177
    .local v6, selectorIndices:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v10, v6

    if-ge v1, v10, :cond_3

    .line 1178
    aget v5, v6, v1

    .line 1179
    .local v5, selectorIndex:I
    iget-object v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1187
    .local v4, scrollSelectorValue:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v10, v10

    div-int/lit8 v10, v10, 0x2

    aget v0, v6, v10

    .line 1188
    .local v0, Index:I
    iget-object v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1189
    .local v7, value:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1190
    iget-object v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1204
    :goto_2
    iget v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1191
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1193
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1194
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1195
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1196
    iget v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1197
    iget-object v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1198
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1199
    iget v10, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTextSize:I

    int-to-float v10, v10

    const v11, 0x3f970a3d

    mul-float/2addr v10, v11

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1200
    invoke-virtual {p1, v4, v8, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1202
    .end local v2           #paint:Landroid/graphics/Paint;
    :cond_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "--scrollSelectorValue-or--value = null->>"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1207
    .end local v0           #Index:I
    .end local v4           #scrollSelectorValue:Ljava/lang/String;
    .end local v5           #selectorIndex:I
    .end local v7           #value:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_0

    .line 640
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 646
    :goto_0
    return v0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestAccessibilityFocus()Z

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 644
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->sendAccessibilityEvent(I)V

    .line 646
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 589
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 634
    :goto_0
    return v3

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 634
    goto :goto_0

    .line 594
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mLastDownEventY:F

    iput v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mLastMotionEventY:F

    .line 595
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 596
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 597
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 598
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 599
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    .line 600
    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 601
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 602
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 604
    .local v2, scrollersFinished:Z
    :goto_1
    if-nez v2, :cond_3

    .line 605
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 606
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 607
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 609
    :cond_3
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 610
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    .line 611
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_0

    .end local v2           #scrollersFinished:Z
    :cond_4
    move v2, v4

    .line 602
    goto :goto_1

    .line 618
    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    .line 619
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 620
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_0

    .line 623
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 624
    .local v0, currentMoveY:F
    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 625
    .local v1, deltaDownY:I
    iget v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 626
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 627
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 628
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 629
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getMeasuredWidth()I

    move-result v7

    .line 533
    .local v7, msrdWdth:I
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getMeasuredHeight()I

    move-result v6

    .line 546
    .local v6, msrdHght:I
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 547
    .local v3, inptTxtMsrdWdth:I
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 548
    .local v2, inptTxtMsrdHght:I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 549
    .local v1, inptTxtLeft:I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 550
    .local v5, inptTxtTop:I
    add-int v4, v1, v3

    .line 551
    .local v4, inptTxtRight:I
    add-int v0, v5, v2

    .line 552
    .local v0, inptTxtBottom:I
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 564
    iget-boolean v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mScrollWheelAndFadingEdgesInitialized:Z

    if-nez v8, :cond_0

    .line 565
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 567
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeSelectorWheel()V

    .line 568
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeFadingEdges()V

    .line 570
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 575
    iget v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/mediatek/FMRadio/ValuePicker;->makeMeasureSpec(II)I

    move-result v2

    .line 576
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/mediatek/FMRadio/ValuePicker;->makeMeasureSpec(II)I

    move-result v1

    .line 577
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 580
    iget v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/mediatek/FMRadio/ValuePicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 582
    .local v3, widthSize:I
    iget v4, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/mediatek/FMRadio/ValuePicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 584
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Lcom/mediatek/FMRadio/ValuePicker;->setMeasuredDimension(II)V

    .line 585
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 709
    :goto_0
    return v6

    .line 660
    :cond_0
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 661
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 663
    :cond_1
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 665
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v6, v7

    .line 709
    goto :goto_0

    .line 667
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 668
    .local v1, currentMoveY:F
    iget-boolean v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    if-nez v8, :cond_2

    iget v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mScrollState:I

    if-eq v8, v7, :cond_3

    .line 670
    :cond_2
    iget v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mLastDownEventY:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v2, v8

    .line 671
    .local v2, deltaDownY:I
    iget v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mTouchSlop:I

    if-le v2, v8, :cond_3

    .line 672
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 673
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 676
    .end local v2           #deltaDownY:I
    :cond_3
    iget v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mLastMotionEventY:F

    sub-float v8, v1, v8

    float-to-int v3, v8

    .line 677
    .local v3, deltaMoveY:I
    invoke-virtual {p0, v6, v3}, Lcom/mediatek/FMRadio/ValuePicker;->scrollBy(II)V

    .line 678
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->invalidate()V

    .line 679
    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mLastMotionEventY:F

    goto :goto_1

    .line 682
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    iget-boolean v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    if-eqz v8, :cond_4

    .line 683
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    move v6, v7

    .line 685
    goto :goto_0

    .line 687
    :cond_4
    iget-object v5, p0, Lcom/mediatek/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 688
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 689
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 690
    .local v4, initialVelocity:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinimumFlingVelocity:I

    if-le v8, v9, :cond_6

    .line 691
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/ValuePicker;->fling(I)V

    .line 692
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 703
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 704
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mediatek/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 694
    :cond_6
    iget-boolean v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v8, :cond_7

    .line 695
    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/mediatek/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 696
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->postAdjustScrollerCommand(I)V

    .line 697
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 700
    :cond_7
    sget v6, Lcom/mediatek/FMRadio/ValuePicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/ValuePicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 798
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 802
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 804
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 807
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 809
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 812
    :cond_3
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 814
    if-lez p2, :cond_5

    .line 815
    :cond_4
    :goto_1
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 816
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 817
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->decrementSelectorIndices([I)V

    .line 818
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->changeCurrent(I)V

    .line 819
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 820
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 825
    :cond_5
    if-gez p2, :cond_0

    .line 826
    :cond_6
    :goto_2
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 827
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 828
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->incrementSelectorIndices([I)V

    .line 829
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->changeCurrent(I)V

    .line 830
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    aget v1, v0, v3

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    if-lt v1, v2, :cond_6

    .line 831
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1098
    :goto_0
    return-void

    .line 1087
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/ValuePicker;->setmDisplayedValues([Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1095
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1096
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1097
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 789
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 790
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->isEnable:Z

    .line 794
    return-void
.end method

.method public setFormatter(Lcom/mediatek/FMRadio/ValuePicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFormatter:Lcom/mediatek/FMRadio/ValuePicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 870
    :cond_0
    iput-object p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mFormatter:Lcom/mediatek/FMRadio/ValuePicker$Formatter;

    .line 871
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 872
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1052
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1055
    :cond_0
    if-gez p1, :cond_1

    .line 1056
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1058
    :cond_1
    iput p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    .line 1059
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1060
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    .line 1062
    :cond_2
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1063
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->setWrapSelectorWheel(Z)V

    .line 1064
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1065
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1066
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1062
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1020
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1023
    :cond_0
    if-gez p1, :cond_1

    .line 1024
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1026
    :cond_1
    iput p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    .line 1027
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1028
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    iput v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    .line 1030
    :cond_2
    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iget v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1031
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ValuePicker;->setWrapSelectorWheel(Z)V

    .line 1032
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1033
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1034
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1030
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnScrollListener(Lcom/mediatek/FMRadio/ValuePicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 852
    iput-object p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mOnScrollListener:Lcom/mediatek/FMRadio/ValuePicker$OnScrollListener;

    .line 853
    return-void
.end method

.method public setOnValueChangedListener(Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 843
    iput-object p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mOnValueChangeListener:Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;

    .line 844
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 904
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 918
    :goto_0
    return-void

    .line 907
    :cond_0
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 908
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    .line 910
    :cond_1
    :goto_1
    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 911
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    .line 914
    :cond_2
    :goto_2
    iput p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mValue:I

    .line 915
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 916
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ValuePicker;->updateInputTextView()V

    .line 917
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0

    .line 908
    :cond_3
    iget p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    goto :goto_1

    .line 911
    :cond_4
    iget p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 987
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMaxValue:I

    iget v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 988
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 991
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    .line 994
    :cond_1
    return-void
.end method

.method public setmDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .parameter "mDisplayedValues"

    .prologue
    .line 1101
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1102
    return-void
.end method
