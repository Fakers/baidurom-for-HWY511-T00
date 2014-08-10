.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "/cache"

.field private static final CRITICAL_LOW_THRESHOLD_BYTES:I = 0x1400000

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:I = 0x100000

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x3200000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final DEVICE_MEMORY_CRITICAL_LOW:I = 0x2

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final EMAIL_CHECK_SIZE:I = 0xa00000

.field private static final EXCEPTION_LOW_THRESHOLD_BYTES:I = 0xa00000

.field private static final FULL_THRESHOLD_BYTES:I = 0x1400000

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final LOW_THRESHOLD_BYTES:I = 0xa00000

.field private static final MONITOR_INTERVAL:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private final CUSTOM_MEM_THRESHOLD:J

.field private final KEY_FREEZE_THRESHOLD:J

.field private final NOTICE_INTERVAL:J

.field private final mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mCacheSize:J

.field private mCheckAppSize:Z

.field private mCheckInterval:J

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mCodeSize:J

.field private mConfigChanged:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDataSize:J

.field private mDialog:Landroid/app/AlertDialog;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private mGetSize:Z

.field mHandler:Landroid/os/Handler;

.field private mIPOBootup:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyFreezeIntent:Landroid/content/Intent;

.field private mKeyResumeIntent:Landroid/content/Intent;

.field private mLastNoticeTime:J

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:I

.field private mMemLowThreshold:J

.field private mSecondDialogFlag:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mStrings:[Ljava/lang/String;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J

.field private mTotalSize:J

.field private mkeyFreezeFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/high16 v5, 0x800

    const/4 v3, 0x0

    .line 543
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 120
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 121
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 147
    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 149
    const-wide/32 v1, 0x3200000

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->CUSTOM_MEM_THRESHOLD:J

    .line 155
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    .line 160
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 161
    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    .line 162
    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    .line 163
    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    .line 164
    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    .line 165
    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    .line 166
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    .line 173
    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->NOTICE_INTERVAL:J

    .line 174
    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastNoticeTime:J

    .line 175
    const-wide/32 v1, 0xa00000

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->KEY_FREEZE_THRESHOLD:J

    .line 176
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mkeyFreezeFlag:Z

    .line 177
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckInterval:J

    .line 178
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mSecondDialogFlag:Z

    .line 184
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 479
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 747
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    iput-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 545
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 546
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 548
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 549
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/system"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 550
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/cache"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 552
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    .line 554
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 555
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 557
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 561
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.FREEZE_KEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mKeyFreezeIntent:Landroid/content/Intent;

    .line 563
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mKeyFreezeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 564
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESUME_KEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mKeyResumeIntent:Landroid/content/Intent;

    .line 565
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mKeyResumeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v1, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 575
    const/high16 v1, 0x140

    iput v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    .line 576
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    .line 577
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    .line 579
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 580
    invoke-direct {p0, v8}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 582
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 583
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 584
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mSecondDialogFlag:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSecondDialogFlag:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/DeviceStorageMonitorService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/DeviceStorageMonitorService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->setDialogDismissTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/DeviceStorageMonitorService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getCustomDialogTitle()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastNoticeTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mkeyFreezeFlag:Z

    return v0
.end method

.method private cacelFreezeKeyIntent()V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mKeyFreezeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 777
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mKeyResumeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 778
    return-void
.end method

.method private final cancelFullNotification()V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 650
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 651
    return-void
.end method

.method private final cancelNotification()V
    .locals 4

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 630
    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 632
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 633
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 634
    return-void
.end method

.method private final checkMemory(Z)V
    .locals 9
    .parameter "checkCache"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 366
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v3, :cond_1

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v3, v5

    .line 370
    .local v0, diffTime:J
    const-wide/32 v3, 0x927c0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 371
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Thread that clears cache file seems to run for ever"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0           #diffTime:J
    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckInterval:J

    invoke-direct {p0, v8, v3, v4}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 476
    return-void

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 378
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 380
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    if-eqz v3, :cond_2

    .line 381
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 382
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 383
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.email"

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 385
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz p1, :cond_6

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 402
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 403
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    .line 432
    :cond_3
    :goto_1
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    .line 433
    const-string v3, "DeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running on storage full,freeStorage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v3, :cond_4

    .line 435
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    .line 436
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 446
    :cond_4
    :goto_2
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v5, 0x1400000

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 447
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "now device into < 20971520 storage"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    if-eqz v3, :cond_5

    .line 449
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    :cond_5
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v5, 0xa00000

    cmp-long v3, v3, v5

    if-gez v3, :cond_9

    .line 455
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckInterval:J

    .line 457
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mkeyFreezeFlag:Z

    if-nez v3, :cond_0

    .line 458
    invoke-direct {p0, v7}, Lcom/android/server/DeviceStorageMonitorService;->enableWIFI(Z)V

    .line 459
    invoke-direct {p0, v7}, Lcom/android/server/DeviceStorageMonitorService;->enableMobileData(Z)V

    .line 460
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFreezeKeyIntent()V

    .line 461
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mkeyFreezeFlag:Z

    goto/16 :goto_0

    .line 410
    :cond_6
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 411
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v3, :cond_3

    .line 414
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Running low on memory. Sending notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 416
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 423
    :cond_7
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 424
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v3, :cond_3

    .line 425
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 426
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    .line 427
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Memory available. Cancelling notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 429
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto/16 :goto_1

    .line 439
    :cond_8
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v3, :cond_4

    .line 440
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 441
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_2

    .line 464
    :cond_9
    const-wide/16 v3, 0x7530

    iput-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckInterval:J

    .line 465
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mkeyFreezeFlag:Z

    if-eqz v3, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cacelFreezeKeyIntent()V

    .line 469
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mkeyFreezeFlag:Z

    goto/16 :goto_0
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 345
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 349
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 352
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 357
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private enableMobileData(Z)V
    .locals 3
    .parameter "is"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 791
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "Fail to get ConnectivityManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableWIFI(Z)V
    .locals 3
    .parameter "is"

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 782
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "Fail to get WifiManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCustomDialogTitle()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 799
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 800
    .local v1, textView:Landroid/widget/TextView;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 801
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x20500b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 804
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 805
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 806
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 807
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 808
    const v2, 0x1080027

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 809
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 810
    return-object v1
.end method

.method private getMemFullThreshold()I
    .locals 4

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_full_threshold_bytes"

    const/high16 v3, 0x10

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 536
    .local v0, value:I
    return v0
.end method

.method private getMemThreshold()J
    .locals 2

    .prologue
    .line 522
    const-wide/32 v0, 0x3200000

    return-wide v0
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .parameter "clearCache"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 495
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 499
    return-void

    :cond_0
    move v0, v2

    .line 496
    goto :goto_0
.end method

.method private final restatDataDir()V
    .locals 20

    .prologue
    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    const-string v16, "/data"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 301
    :goto_0
    const-string v15, "debug.freemem"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, debugFreeMem:Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 303
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 306
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "sys_free_storage_log_interval"

    const-wide/16 v17, 0x2d0

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v7, v15, v17

    .line 310
    .local v7, freeMemLogInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 311
    .local v2, currTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sub-long v15, v2, v15

    cmp-long v15, v15, v7

    if-ltz v15, :cond_2

    .line 313
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 314
    const-wide/16 v11, -0x1

    .local v11, mFreeSystem:J
    const-wide/16 v9, -0x1

    .line 316
    .local v9, mFreeCache:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    const-string v16, "/system"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v11, v15, v17

    .line 323
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    const-string v16, "/cache"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v9, v15, v17

    .line 329
    :goto_2
    const/16 v15, 0xaba

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 333
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "disk_free_change_reporting_threshold"

    const-wide/32 v17, 0x200000

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 337
    .local v13, threshold:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .line 338
    .local v5, delta:J
    cmp-long v15, v5, v13

    if-gtz v15, :cond_3

    neg-long v15, v13

    cmp-long v15, v5, v15

    if-gez v15, :cond_4

    .line 339
    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 340
    const/16 v15, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 342
    :cond_4
    return-void

    .line 326
    .end local v5           #delta:J
    .end local v13           #threshold:J
    .restart local v9       #mFreeCache:J
    .restart local v11       #mFreeSystem:J
    :catch_0
    move-exception v15

    goto :goto_2

    .line 319
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 297
    .end local v2           #currTime:J
    .end local v4           #debugFreeMem:Ljava/lang/String;
    .end local v7           #freeMemLogInterval:J
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private sendFreezeKeyIntent()V
    .locals 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mKeyFreezeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 773
    return-void
.end method

.method private final sendFullNotification()V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 642
    return-void
.end method

.method private final sendNotification()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 595
    const/16 v0, 0xab9

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 597
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v2, lowMemIntent:Landroid/content/Intent;
    const-string v0, "memory"

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 601
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 605
    .local v8, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x10403c8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 607
    .local v10, title:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x10403c9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 609
    .local v6, details:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 611
    .local v7, intent:Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 612
    .local v9, notification:Landroid/app/Notification;
    const v0, 0x108056b

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 613
    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 614
    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 615
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 616
    const/4 v0, 0x1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v0, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 618
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 619
    return-void

    .line 597
    .end local v2           #lowMemIntent:Landroid/content/Intent;
    .end local v6           #details:Ljava/lang/CharSequence;
    .end local v7           #intent:Landroid/app/PendingIntent;
    .end local v8           #mNotificationMgr:Landroid/app/NotificationManager;
    .end local v9           #notification:Landroid/app/Notification;
    .end local v10           #title:Ljava/lang/CharSequence;
    :cond_0
    const-string v0, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto :goto_0
.end method

.method private setDialogDismissTime()V
    .locals 2

    .prologue
    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastNoticeTime:J

    .line 769
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump devicestoragemonitor from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    :goto_0
    return-void

    .line 704
    :cond_0
    const-string v0, "Current DeviceStorageMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    const-string v0, "  mFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    const-string v0, " mTotalMemory="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    const-string v0, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const-string v0, "  mLastReportedFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    const-string v0, " mLastReportedFreeMemTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 714
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 715
    const-string v0, "  mLowMemFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 716
    const-string v0, " mMemFullFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 717
    const-string v0, "  mClearSucceeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 718
    const-string v0, " mClearingCache="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 719
    const-string v0, "  mMemLowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    const-string v0, " mMemFullThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    const-string v0, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 725
    const-string v0, " mMemCacheTrimToThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 669
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryCriticalLow()Z
    .locals 4

    .prologue
    .line 736
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 737
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Return the MemoryCriticalLow flag true"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x1

    .line 740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public updateMemory()V
    .locals 4

    .prologue
    .line 654
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .line 655
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 660
    :goto_0
    return-void

    .line 659
    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
