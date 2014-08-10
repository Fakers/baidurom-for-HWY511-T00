.class public Lcom/mediatek/FMRadio/SleepDialog;
.super Ljava/lang/Object;
.source "SleepDialog.java"


# static fields
.field private static final mDefaultSleepMinutes:I = 0x1e


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurSeekTime:I

.field private mCurTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mMoveParameter:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView15:Landroid/widget/TextView;

.field private mTextView30:Landroid/widget/TextView;

.field private mTextView45:Landroid/widget/TextView;

.field private mTextView60:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/SleepDialog;->initDialog()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/SleepDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/SleepDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/FMRadio/SleepDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/SleepDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/SleepDialog;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/SleepDialog;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/SleepDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mediatek/FMRadio/SleepDialog;->refreshCurTextView()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/SleepDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mediatek/FMRadio/SleepDialog;->refreshGraduationView()V

    return-void
.end method

.method static newInstance(Landroid/content/Context;)Lcom/mediatek/FMRadio/SleepDialog;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    new-instance v0, Lcom/mediatek/FMRadio/SleepDialog;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/SleepDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private refreshCurTextView()V
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3ba3d70a

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 155
    return-void

    .line 152
    :cond_0
    iget v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    goto :goto_0
.end method

.method private refreshGraduationView()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 159
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView15:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView15:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4170

    iget v3, p0, Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView30:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView30:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x41f0

    iget v3, p0, Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView45:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView45:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4234

    iget v3, p0, Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 167
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView60:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView60:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4270

    iget v3, p0, Lcom/mediatek/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 169
    return-void
.end method


# virtual methods
.method public initDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/FMRadio/SleepDialog$1;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/SleepDialog$1;-><init>(Lcom/mediatek/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    new-instance v1, Lcom/mediatek/FMRadio/SleepDialog$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/SleepDialog$2;-><init>(Lcom/mediatek/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView1:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView15:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView30:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView45:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mTextView60:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 106
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 107
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/FMRadio/SleepDialog$3;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/SleepDialog$3;-><init>(Lcom/mediatek/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/mediatek/FMRadio/SleepDialog$4;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/SleepDialog$4;-><init>(Lcom/mediatek/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 136
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmSleepMinutes()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    iput v5, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 148
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 144
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmSleepMinutes()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    .line 145
    iget-object v0, p0, Lcom/mediatek/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/FMRadio/SleepDialog;->mCurSeekTime:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
