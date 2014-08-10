.class public Lcom/mediatek/FMRadio/FMRadioUtils;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"


# static fields
.field public static final CONVERT_RATE:I = 0xa

.field private static final DEFAULT_AF_ENABLED:Z = false

.field private static final DEFAULT_PSRT_ENABLED:Z = false

.field public static final DEFAULT_STATION:I = 0x3e8

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_STATION_FLOAT:F = 0.0f

.field private static final DEFAULT_TA_ENABLED:Z = false

.field public static final HIGHEST_STATION:I = 0x438

.field public static final LOWEST_STATION:I = 0x36b

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final RDS_SETTING_FREQ_AF:I = 0x2

.field public static final RDS_SETTING_FREQ_PSRT:I = 0x1

.field public static final RDS_SETTING_FREQ_TA:I = 0x3

.field public static final RDS_SETTING_VALUE_DISABLED:Ljava/lang/String; = "DISABLED"

.field public static final RDS_SETTING_VALUE_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final STEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FmRx/Utils"

.field private static fromFind:Z = false

.field private static mAutoTuning:Z = false

.field private static mBroadcastOn:Z = false

.field static mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder; = null

.field private static mCurFrequency:I = 0x0

.field public static final mDefaultId:I = -0x1

.field private static mItemComparator:Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;

.field private static mManualTuning:Z

.field private static mNotification:Landroid/app/Notification;

.field private static mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private static mSleepTime:J

.field private static mStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/FMRadio/ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static speakerUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sput-boolean v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    .line 108
    sput-boolean v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mAutoTuning:Z

    .line 109
    sput-boolean v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mManualTuning:Z

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 111
    sput-boolean v2, Lcom/mediatek/FMRadio/FMRadioUtils;->fromFind:Z

    .line 112
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mSleepTime:J

    .line 113
    sput v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    .line 115
    sput-boolean v2, Lcom/mediatek/FMRadio/FMRadioUtils;->speakerUsed:Z

    .line 121
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v0

    sput v0, Lcom/mediatek/FMRadio/FMRadioUtils;->DEFAULT_STATION_FLOAT:F

    .line 123
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mediatek/FMRadio/ItemHolder;

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder;

    .line 124
    new-instance v0, Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;

    invoke-direct {v0}, Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mItemComparator:Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_frequency"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_favorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_favoriteid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    return v0
.end method

.method public static changeSleepMode(Landroid/content/Context;ZJ)V
    .locals 9
    .parameter "context"
    .parameter "isSleep"
    .parameter "sleepMinutes"

    .prologue
    .line 957
    const-string v3, "FmRx/Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeSleepMode---isSleep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sleepMinutes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 960
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.FMRadio.servicecommand.sleep_stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .local v2, serviceIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.mediatek.FMRadio.FMRadioService"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 962
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 965
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 966
    if-eqz p1, :cond_0

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    mul-long/2addr v5, p2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    sput-wide v3, Lcom/mediatek/FMRadio/FMRadioUtils;->mSleepTime:J

    .line 968
    const/4 v3, 0x2

    sget-wide v4, Lcom/mediatek/FMRadio/FMRadioUtils;->mSleepTime:J

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/mediatek/FMRadio/FMRadioUtils;->mSleepTime:J

    goto :goto_0
.end method

.method public static checkCurStatus(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 389
    if-nez p0, :cond_0

    .line 390
    const-string v1, "FmRx/Utils"

    const-string v2, "checkCurStatus null == context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return v0

    .line 391
    :cond_0
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    const v1, 0x7f080047

    invoke-static {p0, v1, v0}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 393
    :cond_1
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 394
    const-string v1, "FmRx/Utils"

    const-string v2, "headset is unplug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const v1, 0x7f080039

    invoke-static {p0, v1, v0}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 397
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static computeDecreaseStation(I)I
    .locals 2
    .parameter "station"

    .prologue
    .line 572
    add-int/lit8 v0, p0, -0x1

    .line 573
    .local v0, result:I
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 574
    const/16 v0, 0x438

    .line 576
    :cond_0
    return v0
.end method

.method public static computeFrequency(I)F
    .locals 2
    .parameter "station"

    .prologue
    .line 594
    int-to-float v0, p0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    return v0
.end method

.method public static computeIncreaseStation(I)I
    .locals 2
    .parameter "station"

    .prologue
    .line 502
    add-int/lit8 v0, p0, 0x1

    .line 503
    .local v0, result:I
    const/16 v1, 0x438

    if-le v0, v1, :cond_0

    .line 504
    const/16 v0, 0x36b

    .line 506
    :cond_0
    return v0
.end method

.method public static computeStation(F)I
    .locals 1
    .parameter "frequency"

    .prologue
    .line 585
    const/high16 v0, 0x4120

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "mAutoTuneDialog"
    .parameter "keepCollected"

    .prologue
    const/4 v3, 0x0

    .line 444
    const-string v1, "FmRx/Utils"

    const-string v2, "doAutoTuning"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, isAutoTune:Z
    sget-boolean v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mAutoTuning:Z

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "FmRx/Utils"

    const-string v2, "mAutoTuning==true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return v0

    .line 448
    :cond_0
    if-nez p0, :cond_1

    .line 449
    const-string v1, "FmRx/Utils"

    const-string v2, "play null == context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_1
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_2

    .line 451
    const-string v1, "FmRx/Utils"

    const-string v2, "null == sService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const v1, 0x7f08001f

    invoke-static {p0, v1, v3}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 453
    :cond_2
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    const v1, 0x7f080047

    invoke-static {p0, v1, v3}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 455
    :cond_3
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 456
    const-string v1, "FmRx/Utils"

    const-string v2, "headset is unplug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const v1, 0x7f080039

    invoke-static {p0, v1, v3}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 460
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    .line 461
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mAutoTuning:Z

    .line 462
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioUtils$2;

    invoke-direct {v2, p0, p3, p1}, Lcom/mediatek/FMRadio/FMRadioUtils$2;-><init>(Landroid/content/Context;ZLandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 477
    invoke-static {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioUtils;->enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 478
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static doClearStations(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "keepCollected"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 597
    const-string v6, "FmRx/Utils"

    const-string v7, "doClearStation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez p0, :cond_0

    .line 600
    const-string v5, "FmRx/Utils"

    const-string v6, "doClearStation null == context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_0
    return v4

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 606
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 607
    const-string v5, "FmRx/Utils"

    const-string v6, "doClearStation null == resolvert"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_1
    if-eqz p1, :cond_2

    .line 616
    :try_start_0
    const-string v3, "_favorite=?"

    .line 621
    .local v3, where:Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 625
    .local v1, nRet:I
    if-gtz v1, :cond_3

    .line 626
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete fail, return value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    .end local v1           #nRet:I
    .end local v3           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 618
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "_frequency>?"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_1

    .line 634
    .restart local v1       #nRet:I
    :cond_3
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 636
    const-string v4, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doClearStation--the size of mStationList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 638
    goto :goto_0
.end method

.method public static doManualSearch(Landroid/content/Context;Landroid/app/ProgressDialog;ZI)V
    .locals 2
    .parameter "context"
    .parameter "manualTuneDialog"
    .parameter "direction"
    .parameter "station"

    .prologue
    .line 422
    const-string v0, "FmRx/Utils"

    const-string v1, "doManualSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v0, :cond_0

    .line 425
    const-string v0, "FmRx/Utils"

    const-string v1, "doManualSearch mService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const v0, 0x7f08001f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 441
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 432
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioUtils$1;

    invoke-direct {v1, p3, p2}, Lcom/mediatek/FMRadio/FMRadioUtils$1;-><init>(IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 440
    const-string v0, "FmRx/Utils"

    const-string v1, "doManualSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static doRenameStation(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "frequency"
    .parameter "strName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 767
    const-string v7, "FmRx/Utils"

    const-string v8, "doRenameStation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    if-nez p0, :cond_1

    .line 770
    const-string v6, "FmRx/Utils"

    const-string v7, "doRenameStation null == context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    :goto_0
    return v5

    .line 774
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 776
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_2

    .line 777
    const-string v6, "FmRx/Utils"

    const-string v7, "doRenameStation null == resolvert"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4

    .line 783
    :cond_3
    const-string v6, "FmRx/Utils"

    const-string v7, "input parameter invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 787
    :cond_4
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/mediatek/FMRadio/ItemHolder;

    move-result-object v3

    .line 789
    .local v3, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    if-eqz v3, :cond_0

    .line 793
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 795
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "_name"

    invoke-virtual {v4, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :try_start_0
    sget-object v7, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_frequency=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v7, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 802
    .local v1, nRet:I
    if-gtz v1, :cond_5

    .line 803
    const-string v6, "FmRx/Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update fail, return value is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    .end local v1           #nRet:I
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 811
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #nRet:I
    :cond_5
    invoke-virtual {v3, p2}, Lcom/mediatek/FMRadio/ItemHolder;->setmStationName(Ljava/lang/String;)V

    move v5, v6

    .line 813
    goto :goto_0
.end method

.method public static doSaveCollectStation(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 10
    .parameter "context"
    .parameter "frequency"
    .parameter "name"
    .parameter "collectId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 715
    const-string v7, "FmRx/Utils"

    const-string v8, "doSaveCollectStation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-nez p0, :cond_1

    .line 718
    const-string v6, "FmRx/Utils"

    const-string v7, "doSaveCollectStation null == context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    :goto_0
    return v5

    .line 722
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 724
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 725
    const-string v6, "FmRx/Utils"

    const-string v7, "input frequency invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    :cond_2
    if-nez v2, :cond_3

    .line 730
    const-string v6, "FmRx/Utils"

    const-string v7, "input parameter invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    :cond_3
    new-instance v3, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-direct {v3}, Lcom/mediatek/FMRadio/ItemHolder;-><init>()V

    .line 735
    .local v3, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    const-string v7, "FmRx/Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FMRadio frequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v3, p1}, Lcom/mediatek/FMRadio/ItemHolder;->setmFrequency(I)V

    .line 737
    invoke-virtual {v3, p2}, Lcom/mediatek/FMRadio/ItemHolder;->setmStationName(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v3, v6, p3}, Lcom/mediatek/FMRadio/ItemHolder;->setmCollected(ZI)V

    .line 740
    sget-object v7, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 744
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 745
    .local v4, value:Landroid/content/ContentValues;
    const-string v7, "_frequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string v7, "_name"

    invoke-virtual {v4, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v7, "_favorite"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 748
    const-string v7, "_favoriteid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    :try_start_0
    sget-object v7, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    sget-object v5, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    sget-object v5, Lcom/mediatek/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder;

    aput-object v3, v5, p3

    .line 759
    sget-object v5, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    sget-object v7, Lcom/mediatek/FMRadio/FMRadioUtils;->mItemComparator:Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 761
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.savecollect"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 763
    goto/16 :goto_0

    .line 752
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static doSaveSearchStations(Landroid/content/Context;Ljava/util/List;)Z
    .locals 20
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, frequencyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "FmRx/Utils"

    const-string v2, "doSaveSearchStations"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-nez p0, :cond_0

    .line 849
    const-string v1, "FmRx/Utils"

    const-string v2, "doSaveSearchStations null == context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v1, 0x0

    .line 940
    :goto_0
    return v1

    .line 853
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 855
    .local v13, resolver:Landroid/content/ContentResolver;
    if-nez v13, :cond_1

    .line 856
    const-string v1, "FmRx/Utils"

    const-string v2, "doSaveSearchStations null == resolvert"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v1, 0x0

    goto :goto_0

    .line 860
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 862
    .local v11, nCount:I
    if-gtz v11, :cond_2

    .line 863
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSaveSearchStations search station number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v1, 0x0

    goto :goto_0

    .line 867
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v10, insertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/FMRadio/ItemHolder;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_5

    .line 871
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 872
    .local v15, tmpFreq:I
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frequencyList["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-static {v15}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 875
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 879
    :cond_3
    new-instance v16, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/FMRadio/ItemHolder;-><init>()V

    .line 880
    .local v16, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/mediatek/FMRadio/ItemHolder;->setmFrequency(I)V

    .line 882
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 883
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStationList contains"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 887
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 890
    .end local v15           #tmpFreq:I
    .end local v16           #tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 892
    .local v14, size:I
    if-lez v14, :cond_9

    .line 894
    new-array v0, v14, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 896
    .local v18, values:[Landroid/content/ContentValues;
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v14, :cond_8

    .line 897
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .local v17, value:Landroid/content/ContentValues;
    const-string v2, "_frequency"

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string v2, "_favorite"

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ItemHolder;->ismCollected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 900
    const-string v2, "_favoriteid"

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ItemHolder;->getmCollectId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v2, "FmRx/Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put station "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to ContentValues"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    aput-object v17, v18, v9

    .line 904
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_frequency"

    aput-object v5, v3, v4

    const-string v4, "_frequency=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/16 v19, 0x0

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v19

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 910
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 912
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 914
    const-string v1, "FmRx/Utils"

    const-string v2, "Config.DATABASE_FREQ is exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    :cond_6
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 896
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 917
    .restart local v7       #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 920
    .end local v7           #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_4

    .line 926
    .end local v17           #value:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    sget-object v1, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v12

    .line 927
    .local v12, nRet:I
    if-gtz v12, :cond_9

    .line 928
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert fail, return value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 929
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 931
    .end local v12           #nRet:I
    :catch_1
    move-exception v8

    .line 932
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 937
    .end local v8           #e:Ljava/lang/Exception;
    .end local v18           #values:[Landroid/content/ContentValues;
    :cond_9
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 938
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mItemComparator:Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 939
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSaveSearchStations--the size of mStationList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static doStopAutoTuning(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 254
    const-string v0, "FmRx/Utils"

    const-string v1, "doStopAutoTuning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "FmRx/Utils"

    const-string v1, "doStopAutoTuning null == mService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const v0, 0x7f08001f

    invoke-static {p0, v0, v2}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 270
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 265
    :cond_1
    const-string v0, "FmRx/Utils"

    const-string v1, "cancelAutoTune"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 269
    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static doUpdateCollectStatus(Landroid/content/Context;IZI)Z
    .locals 11
    .parameter "context"
    .parameter "frequency"
    .parameter "isCollected"
    .parameter "collectId"

    .prologue
    .line 642
    const-string v5, "FmRx/Utils"

    const-string v6, "doUpdateCollectStatus"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-nez p0, :cond_0

    .line 645
    const-string v5, "FmRx/Utils"

    const-string v6, "doUpdateCollectStatus null == context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v5, 0x0

    .line 688
    :goto_0
    return v5

    .line 649
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 651
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 652
    const-string v5, "FmRx/Utils"

    const-string v6, "doUpdateCollectStatus null == resolvert"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v5, 0x0

    goto :goto_0

    .line 656
    :cond_1
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/mediatek/FMRadio/ItemHolder;

    move-result-object v3

    .line 658
    .local v3, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    if-nez v3, :cond_2

    .line 659
    const/4 v5, 0x0

    goto :goto_0

    .line 662
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "_favorite"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 665
    const-string v6, "_favoriteid"

    if-eqz p2, :cond_3

    move v5, p3

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    :try_start_0
    sget-object v5, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_frequency=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 673
    .local v1, nRet:I
    if-gtz v1, :cond_4

    .line 674
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update fail, return value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    const/4 v5, 0x0

    goto :goto_0

    .line 665
    .end local v1           #nRet:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    const/4 v5, 0x0

    goto :goto_0

    .line 682
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #nRet:I
    :cond_4
    invoke-virtual {v3, p2, p3}, Lcom/mediatek/FMRadio/ItemHolder;->setmCollected(ZI)V

    .line 684
    sget-object v5, Lcom/mediatek/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder;

    if-eqz p2, :cond_5

    .end local v3           #tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :goto_2
    aput-object v3, v5, p3

    .line 686
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCollectStatus()--frequency:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   isCollected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   collectId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 684
    .restart local v3       #tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static doWithNotify(Landroid/content/Context;I)V
    .locals 14
    .parameter "context"
    .parameter "type"

    .prologue
    .line 277
    const-string v11, "FmRx/Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doWithNotify---"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-nez p0, :cond_1

    .line 280
    const-string v11, "FmRx/Utils"

    const-string v12, "stateNotify null == context"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v11

    sput v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    .line 284
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 287
    .local v4, mNotificationManager:Landroid/app/NotificationManager;
    const/4 v11, 0x2

    if-eq p1, v11, :cond_2

    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 290
    :cond_2
    const v11, 0x10001

    invoke-virtual {v4, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 291
    const/4 v11, 0x0

    sput-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    goto :goto_0

    .line 292
    :cond_3
    const/4 v11, 0x1

    if-eq p1, v11, :cond_4

    if-nez p1, :cond_0

    .line 296
    :cond_4
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    if-nez v11, :cond_6

    .line 297
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    sput-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    .line 298
    new-instance v10, Landroid/widget/RemoteViews;

    const-string v11, "com.mediatek.FMRadio"

    const v12, 0x7f03000a

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 303
    .local v10, views:Landroid/widget/RemoteViews;
    :goto_1
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v11

    if-eqz v11, :cond_b

    sget v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 304
    const-string v11, "FmRx/Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ismBroadcastOn() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v11, "FmRx/Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isValidStation(mCurFrequency) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, name:Ljava/lang/String;
    sget v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {p0, v11}, Lcom/mediatek/FMRadio/FMRadioUtils;->getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, defaultName:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_7

    .line 309
    :cond_5
    const v11, 0x7f0b0041

    invoke-virtual {v10, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 313
    :goto_2
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_8

    const/4 v3, 0x1

    .line 314
    .local v3, isEmpty:Z
    :goto_3
    const-string v11, "FmRx/Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isEmpty = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const v11, 0x7f0b0006

    const v12, 0x7f020052

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 316
    const v11, 0x7f0b0006

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08004d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 317
    const v12, 0x7f0b0002

    const-string v13, "setEnabled"

    if-nez v3, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v10, v12, v13, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 318
    const v12, 0x7f0b0007

    const-string v13, "setEnabled"

    if-nez v3, :cond_a

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v10, v12, v13, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 319
    const v11, 0x7f0b0041

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060008

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 339
    .end local v3           #isEmpty:Z
    :goto_6
    new-instance v9, Landroid/content/Intent;

    const-class v11, Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct {v9, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v9, statusIntent:Landroid/content/Intent;
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const/high16 v11, 0x1020

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    iput-object v10, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 346
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 347
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    const/4 v12, 0x2

    iput v12, v11, Landroid/app/Notification;->flags:I

    .line 351
    :goto_7
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    const v12, 0x7f02005c

    iput v12, v11, Landroid/app/Notification;->icon:I

    .line 352
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    iput-object v12, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 357
    new-instance v7, Landroid/content/ComponentName;

    const-string v11, "com.mediatek.FMRadio.FMRadioService"

    invoke-direct {v7, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    .local v7, serviceName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.huawei.android.FMRadio.servicecommand.togglepause"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 361
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v2, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 362
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const v11, 0x7f0b0006

    invoke-virtual {v10, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 364
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v11, "com.huawei.android.FMRadio.servicecommand.previous"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 366
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v2, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 367
    const v11, 0x7f0b0002

    invoke-virtual {v10, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 369
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v11, "com.huawei.android.FMRadio.servicecommand.next"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 371
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v2, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 372
    const v11, 0x7f0b0007

    invoke-virtual {v10, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 374
    const v11, 0x10001

    sget-object v12, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v11, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 300
    .end local v0           #defaultName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    .end local v7           #serviceName:Landroid/content/ComponentName;
    .end local v9           #statusIntent:Landroid/content/Intent;
    .end local v10           #views:Landroid/widget/RemoteViews;
    :cond_6
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    iget-object v10, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .restart local v10       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 311
    .restart local v0       #defaultName:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    :cond_7
    const v11, 0x7f0b0041

    invoke-virtual {v10, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 313
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 317
    .restart local v3       #isEmpty:Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 318
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 322
    .end local v0           #defaultName:Ljava/lang/String;
    .end local v3           #isEmpty:Z
    .end local v5           #name:Ljava/lang/String;
    :cond_b
    const-string v11, "com.mediatek.FMRadio"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 324
    .local v8, sharePerferences:Landroid/content/SharedPreferences;
    const-string v11, "last_freq"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 325
    .local v1, frequency:I
    sget v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v5

    .line 326
    .restart local v5       #name:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0       #defaultName:Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_d

    .line 328
    :cond_c
    const v11, 0x7f0b0041

    invoke-virtual {v10, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 332
    :goto_8
    const v11, 0x7f0b0006

    const v12, 0x7f02004f

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 333
    const v11, 0x7f0b0006

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08004e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 334
    const v11, 0x7f0b0002

    const-string v12, "setEnabled"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 335
    const v11, 0x7f0b0007

    const-string v12, "setEnabled"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 336
    const v11, 0x7f0b0041

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060009

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_6

    .line 330
    :cond_d
    const v11, 0x7f0b0041

    invoke-virtual {v10, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 349
    .end local v1           #frequency:I
    .end local v8           #sharePerferences:Landroid/content/SharedPreferences;
    .restart local v9       #statusIntent:Landroid/content/Intent;
    :cond_e
    sget-object v11, Lcom/mediatek/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    const/16 v12, 0x10

    iput v12, v11, Landroid/app/Notification;->flags:I

    goto/16 :goto_7
.end method

.method public static enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "mAutoTuneDialog"

    .prologue
    .line 485
    const-string v0, "FmRx/Utils"

    const-string v1, "enableCancelAutotune"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mAutoTuning:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioUtils$3;

    invoke-direct {v0, p2}, Lcom/mediatek/FMRadio/FMRadioUtils$3;-><init>(Landroid/app/ProgressDialog;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    :cond_0
    return-void
.end method

.method public static findPreviousOrNextStation(IZ)I
    .locals 7
    .parameter "curFrequency"
    .parameter "direction"

    .prologue
    .line 533
    const-string v5, "FmRx/Utils"

    const-string v6, "findPreviousOrNextStation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    move v3, p0

    .line 536
    .local v3, tmpFreq:I
    sget-object v5, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 538
    .local v1, nCount:I
    const/4 v5, 0x1

    if-ge v1, v5, :cond_0

    .line 539
    const-string v5, "FmRx/Utils"

    const-string v6, "stationlist is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 561
    .end local v3           #tmpFreq:I
    .local v4, tmpFreq:I
    :goto_0
    return v4

    .line 543
    .end local v4           #tmpFreq:I
    .restart local v3       #tmpFreq:I
    :cond_0
    const/4 v2, 0x0

    .line 545
    .local v2, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 546
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v5

    if-ne p0, v5, :cond_3

    .line 547
    if-eqz p1, :cond_2

    add-int/lit8 v5, v0, 0x1

    rem-int v2, v5, v1

    .line 559
    :cond_1
    :goto_2
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v3

    move v4, v3

    .line 561
    .end local v3           #tmpFreq:I
    .restart local v4       #tmpFreq:I
    goto :goto_0

    .line 547
    .end local v4           #tmpFreq:I
    .restart local v3       #tmpFreq:I
    :cond_2
    add-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    rem-int v2, v5, v1

    goto :goto_2

    .line 549
    :cond_3
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v5

    if-ge p0, v5, :cond_5

    .line 550
    if-eqz p1, :cond_4

    move v2, v0

    .line 551
    :goto_3
    goto :goto_2

    .line 550
    :cond_4
    add-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    rem-int v2, v5, v1

    goto :goto_3

    .line 552
    :cond_5
    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_7

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v5

    if-le p0, v5, :cond_7

    .line 554
    if-eqz p1, :cond_6

    const/4 v2, 0x0

    .line 555
    :goto_4
    goto :goto_2

    .line 554
    :cond_6
    add-int/lit8 v2, v1, -0x1

    goto :goto_4

    .line 545
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static formatStation(I)Ljava/lang/String;
    .locals 7
    .parameter "station"

    .prologue
    .line 987
    int-to-float v2, p0

    const/high16 v3, 0x4120

    div-float v0, v2, v3

    .line 988
    .local v0, frequency:F
    const/4 v1, 0x0

    .line 992
    .local v1, result:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 994
    return-object v1
.end method

.method public static getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "frequency"

    .prologue
    const-wide/high16 v4, 0x4024

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, stationName:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmFreqUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v2, p1

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p1

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmFreqUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDisplayFrequency(I)Ljava/lang/String;
    .locals 5
    .parameter "station"

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v1, p0

    const-wide/high16 v3, 0x4024

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemByFrequency(I)Lcom/mediatek/FMRadio/ItemHolder;
    .locals 2
    .parameter "frequency"

    .prologue
    .line 952
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->getPositionByFrequency(I)I

    move-result v0

    .line 954
    .local v0, index:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ItemHolder;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLastPlayValidFrequency(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 515
    const-string v2, "com.mediatek.FMRadio"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 518
    .local v1, sharePerferences:Landroid/content/SharedPreferences;
    const-string v2, "last_freq"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 520
    .local v0, frequency:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v0

    .line 524
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->findPreviousOrNextStation(IZ)I

    move-result v0

    .line 529
    :cond_0
    return v0
.end method

.method public static getPositionByFrequency(I)I
    .locals 3
    .parameter "frequency"

    .prologue
    .line 945
    new-instance v1, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/ItemHolder;-><init>(I)V

    .line 946
    .local v1, result:Lcom/mediatek/FMRadio/ItemHolder;
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 948
    .local v0, index:I
    return v0
.end method

.method public static getSpeakerUsed()Z
    .locals 1

    .prologue
    .line 414
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioUtils;->speakerUsed:Z

    return v0
.end method

.method public static getStationName(I)Ljava/lang/String;
    .locals 2
    .parameter "frequency"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, tmpName:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/mediatek/FMRadio/ItemHolder;

    move-result-object v0

    .line 233
    .local v0, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v1

    .line 237
    :cond_0
    return-object v1
.end method

.method public static getmCurFrequency()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    return v0
.end method

.method public static getmFreqUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 213
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getmService()Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method public static getmSleepMinutes()I
    .locals 5

    .prologue
    .line 975
    sget-wide v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mSleepTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x404e

    div-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 978
    .local v0, sleepMintues:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #sleepMintues:I
    :cond_0
    return v0
.end method

.method public static getmStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/FMRadio/ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    return-object v0
.end method

.method public static initFMDatabase(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 156
    :try_start_0
    const-string v0, ""

    .line 157
    .local v0, defaultStationName:Ljava/lang/String;
    const/4 v2, 0x4

    .line 158
    .local v2, size:I
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 159
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_frequency"

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v4, "_name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v4, "_favorite"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    const-string v4, "_favoriteid"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0           #defaultStationName:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    const-string v4, "FmRx/Utils"

    const-string v5, "FMRadioUtils.initFMDatabase"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static initStationRecord(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    .line 1030
    const-string v1, "FmRx/Utils"

    const-string v2, "initStationRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-nez p0, :cond_1

    .line 1033
    const-string v1, "FmRx/Utils"

    const-string v2, "getRecord input parameter invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1040
    .local v0, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/mediatek/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1042
    .local v8, tmpCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 1044
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v7, itemHolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/FMRadio/ItemHolder;>;"
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/mediatek/FMRadio/ItemHolder;

    sput-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder;

    .line 1046
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1048
    :cond_2
    new-instance v9, Lcom/mediatek/FMRadio/ItemHolder;

    invoke-direct {v9}, Lcom/mediatek/FMRadio/ItemHolder;-><init>()V

    .line 1049
    .local v9, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    const-string v1, "_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mediatek/FMRadio/ItemHolder;->setmStationName(Ljava/lang/String;)V

    .line 1051
    const-string v1, "_frequency"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-virtual {v9, v1}, Lcom/mediatek/FMRadio/ItemHolder;->setmFrequency(I)V

    .line 1053
    const-string v1, "_favorite"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_6

    move v1, v10

    :goto_1
    const-string v2, "_favoriteid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v1, v2}, Lcom/mediatek/FMRadio/ItemHolder;->setmCollected(ZI)V

    .line 1056
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemHolder:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/mediatek/FMRadio/ItemHolder;->ismCollected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    invoke-virtual {v9}, Lcom/mediatek/FMRadio/ItemHolder;->ismCollected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/mediatek/FMRadio/ItemHolder;->getmCollectId()I

    move-result v1

    if-ltz v1, :cond_3

    .line 1062
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder;

    invoke-virtual {v9}, Lcom/mediatek/FMRadio/ItemHolder;->getmCollectId()I

    move-result v2

    aput-object v9, v1, v2

    .line 1064
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1067
    .end local v9           #tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :cond_4
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1068
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1069
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioUtils;->mItemComparator:Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1072
    .end local v7           #itemHolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/FMRadio/ItemHolder;>;"
    :cond_5
    if-eqz v8, :cond_0

    .line 1073
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1075
    .end local v8           #tmpCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 1076
    .local v6, e:Landroid/database/SQLException;
    const-string v1, "FmRx/Utils"

    invoke-virtual {v6}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1053
    .end local v6           #e:Landroid/database/SQLException;
    .restart local v7       #itemHolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/FMRadio/ItemHolder;>;"
    .restart local v8       #tmpCursor:Landroid/database/Cursor;
    .restart local v9       #tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isApplicationTop(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 378
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 379
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 380
    .local v1, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 382
    .local v2, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 386
    .end local v2           #topActivity:Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static isFromFind()Z
    .locals 1

    .prologue
    .line 405
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioUtils;->fromFind:Z

    return v0
.end method

.method public static isNameExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "strName"

    .prologue
    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, exist:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1002
    :cond_0
    const/4 v4, 0x1

    .line 1020
    :goto_0
    return v4

    .line 1005
    :cond_1
    sget-object v4, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1006
    .local v2, nCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 1007
    sget-object v4, Lcom/mediatek/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/FMRadio/ItemHolder;

    .line 1009
    .local v3, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 1006
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1014
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1015
    const/4 v0, 0x1

    .end local v3           #tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :cond_4
    move v4, v0

    .line 1020
    goto :goto_0
.end method

.method public static isStationSaved(I)Z
    .locals 2
    .parameter "frequency"

    .prologue
    .line 1024
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->getPositionByFrequency(I)I

    move-result v0

    .line 1026
    .local v0, index:I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidStation(I)Z
    .locals 4
    .parameter "station"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, isValid:Z
    const/16 v1, 0x36b

    if-lt p0, v1, :cond_0

    const/16 v1, 0x438

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_0
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidStation: freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", valid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiredHeadsetAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 180
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 182
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ismAutoTuning()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mAutoTuning:Z

    return v0
.end method

.method public static ismBroadcastOn()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    return v0
.end method

.method public static ismManualTuning()Z
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mManualTuning:Z

    return v0
.end method

.method public static onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 6
    .parameter "context"
    .parameter "handler"
    .parameter "mAutoTuneDialog"

    .prologue
    const/16 v5, 0x67

    .line 818
    const-string v3, "FmRx/Utils"

    const-string v4, "onFinishAutoTuning"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 821
    if-eqz p2, :cond_0

    .line 822
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 823
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 826
    :cond_0
    sget-object v3, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->getSearchStationList()Ljava/util/List;

    move-result-object v1

    .line 828
    .local v1, frequencyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 829
    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doSaveSearchStations(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    .line 830
    .local v2, result:Z
    if-nez v2, :cond_1

    .line 831
    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 835
    .end local v2           #result:Z
    :cond_1
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    .line 837
    .local v0, frequency:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 838
    const/16 v0, 0x36b

    .line 841
    :cond_2
    sget-object v3, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 842
    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 843
    return-void
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 692
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 694
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.FMRadio"

    const-class v3, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 696
    return-void
.end method

.method public static saveLastFrequency(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "frequency"

    .prologue
    .line 246
    const-string v2, "com.mediatek.FMRadio"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 248
    .local v1, sharePerferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_freq"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void
.end method

.method public static setFromFind(Z)V
    .locals 0
    .parameter "fromFlag"

    .prologue
    .line 402
    sput-boolean p0, Lcom/mediatek/FMRadio/FMRadioUtils;->fromFind:Z

    .line 403
    return-void
.end method

.method public static setSpeakerUsed(Z)V
    .locals 0
    .parameter "speakerUsed"

    .prologue
    .line 418
    sput-boolean p0, Lcom/mediatek/FMRadio/FMRadioUtils;->speakerUsed:Z

    .line 419
    return-void
.end method

.method public static setmAutoTuning(Z)V
    .locals 0
    .parameter "mAutoTuning"

    .prologue
    .line 209
    sput-boolean p0, Lcom/mediatek/FMRadio/FMRadioUtils;->mAutoTuning:Z

    .line 210
    return-void
.end method

.method public static setmBroadcastOn(Z)V
    .locals 0
    .parameter "mBroadcastOn"

    .prologue
    .line 197
    sput-boolean p0, Lcom/mediatek/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    .line 198
    return-void
.end method

.method public static setmCurFrequency(I)V
    .locals 0
    .parameter "mCurFrequency"

    .prologue
    .line 175
    sput p0, Lcom/mediatek/FMRadio/FMRadioUtils;->mCurFrequency:I

    .line 176
    return-void
.end method

.method public static setmManualTuning(Z)V
    .locals 0
    .parameter "mManualTuning"

    .prologue
    .line 206
    sput-boolean p0, Lcom/mediatek/FMRadio/FMRadioUtils;->mManualTuning:Z

    .line 207
    return-void
.end method

.method public static setmService(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "mService"

    .prologue
    .line 411
    sput-object p0, Lcom/mediatek/FMRadio/FMRadioUtils;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 412
    return-void
.end method

.method public static unRegisterMediaButtonEventReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 700
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 702
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.FMRadio"

    const-class v3, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 704
    return-void
.end method
