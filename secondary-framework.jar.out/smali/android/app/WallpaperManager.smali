.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 63
    sput-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 340
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    const/high16 v0, -0x4080

    .line 351
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 65
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 352
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 354
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 806
    if-nez p1, :cond_1

    .line 807
    const/16 p1, 0x0

    .line 866
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 810
    .restart local p1
    :cond_1
    const-string v12, "window"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 811
    .local v11, wm:Landroid/view/WindowManager;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 812
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 813
    iget v12, v6, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 815
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move/from16 v0, p3

    if-eq v12, v0, :cond_0

    .line 822
    :cond_2
    const-wide/16 v12, 0x2

    :try_start_0
    const-string v14, "Bitmap.createBitmap"

    invoke-static {v12, v13, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 823
    sget-object v12, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createBitmap begin width = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , height = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 825
    .local v7, newbm:Landroid/graphics/Bitmap;
    sget-object v12, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v13, "createBitmap end"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 827
    iget v12, v6, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v7, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 829
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 830
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 831
    .local v10, targetRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 832
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 834
    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int v4, p2, v12

    .line 835
    .local v4, deltaw:I
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v12

    .line 837
    .local v3, deltah:I
    if-gtz v4, :cond_3

    if-lez v3, :cond_4

    .line 840
    :cond_3
    if-le v4, v3, :cond_5

    .line 841
    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, v10, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 845
    .local v9, scale:F
    :goto_1
    iget v12, v10, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 846
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 847
    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int v4, p2, v12

    .line 848
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v12

    .line 851
    .end local v9           #scale:F
    :cond_4
    div-int/lit8 v12, v4, 0x2

    div-int/lit8 v13, v3, 0x2

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 853
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 854
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 855
    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 856
    const-wide/16 v12, 0x2

    const-string v14, "drawBitmap"

    invoke-static {v12, v13, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 857
    sget-object v12, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawBitmap begin targetRect = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 859
    sget-object v12, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v13, "drawBitmap end"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 862
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p1, v7

    .line 863
    goto/16 :goto_0

    .line 843
    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_5
    move/from16 v0, p3

    int-to-float v12, v0

    iget v13, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v13, v13

    div-float v9, v12, v13

    .restart local v9       #scale:F
    goto :goto_1

    .line 864
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #deltah:I
    .end local v4           #deltaw:I
    .end local v7           #newbm:Landroid/graphics/Bitmap;
    .end local v9           #scale:F
    .end local v10           #targetRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v5

    .line 865
    .local v5, e:Ljava/lang/OutOfMemoryError;
    sget-object v12, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v13, "Can\'t generate default bitmap"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 360
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 344
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 348
    :cond_0
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    const v2, 0x8000

    new-array v1, v2, [B

    .line 600
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_0

    .line 601
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 603
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    const v0, 0x108021e

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 803
    return-void
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .parameter "windowToken"

    .prologue
    .line 783
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerGlobal;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x4080

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    const/high16 v5, -0x4080

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 459
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 460
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 449
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 666
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 667
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_0
    return v1

    .line 671
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDesiredMinimumWidth()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 639
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 640
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_0
    return v1

    .line 644
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 379
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 381
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 382
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 385
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 421
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 423
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 425
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 469
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 470
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    return-object v1

    .line 473
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hasResourceWallpaper(I)Z
    .locals 6
    .parameter "resid"

    .prologue
    const/4 v3, 0x0

    .line 611
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 612
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    return v3

    .line 616
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 617
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, name:Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 619
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 398
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 400
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 401
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 404
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 436
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 438
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 440
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .parameter "windowToken"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"

    .prologue
    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerGlobal;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 535
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 540
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 548
    if-eqz v2, :cond_0

    .line 549
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 552
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 548
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    .line 549
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 548
    :cond_2
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResource(I)V
    .locals 7
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 496
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 502
    .local v3, resources:Landroid/content/res/Resources;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 504
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 505
    const/4 v1, 0x0

    .line 507
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 510
    if-eqz v2, :cond_0

    .line 511
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 515
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 510
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 510
    :cond_2
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 574
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 579
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 584
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 587
    if-eqz v2, :cond_0

    .line 588
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 591
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 587
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    .line 588
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 587
    :cond_2
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 742
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 743
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 744
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerGlobal;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 2
    .parameter "minimumWidth"
    .parameter "minimumHeight"

    .prologue
    .line 699
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 700
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_0
    return-void

    .line 702
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setDimensionHints(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    goto :goto_0
.end method
