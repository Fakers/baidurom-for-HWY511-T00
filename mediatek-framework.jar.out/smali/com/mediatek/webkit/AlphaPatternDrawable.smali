.class public Lcom/mediatek/webkit/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaPatternDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintWhite:Landroid/graphics/Paint;

.field private mRectangleSize:I

.field private numRectanglesHorizontal:I

.field private numRectanglesVertical:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "rectangleSize"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    .line 50
    iput p1, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    .line 51
    iget-object v0, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v1, -0x343435

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    return-void
.end method

.method private generatePatternBitmap()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/webkit/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/webkit/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-gtz v6, :cond_1

    .line 119
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/webkit/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p0}, Lcom/mediatek/webkit/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .local v4, r:Landroid/graphics/Rect;
    const/4 v5, 0x1

    .line 105
    .local v5, verticalStartWhite:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->numRectanglesVertical:I

    if-gt v1, v6, :cond_0

    .line 106
    move v2, v5

    .line 107
    .local v2, isWhite:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-gt v3, v6, :cond_4

    .line 108
    iget v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v6, v1

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 109
    iget v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 110
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v6, v9

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 111
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v6, v9

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 113
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    if-nez v2, :cond_3

    move v2, v7

    .line 107
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    :cond_2
    iget-object v6, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    move v2, v8

    .line 115
    goto :goto_3

    .line 117
    :cond_4
    if-nez v5, :cond_5

    move v5, v7

    .line 105
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v5, v8

    .line 117
    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/webkit/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "bounds"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 80
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 82
    .local v1, width:I
    iget v2, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    div-int v2, v1, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->numRectanglesHorizontal:I

    .line 83
    iget v2, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->mRectangleSize:I

    div-int v2, v0, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/mediatek/webkit/AlphaPatternDrawable;->numRectanglesVertical:I

    .line 85
    invoke-direct {p0}, Lcom/mediatek/webkit/AlphaPatternDrawable;->generatePatternBitmap()V

    .line 86
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Alpha is not supported by this drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .parameter "cf"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ColorFilter is not supported by this drawable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
