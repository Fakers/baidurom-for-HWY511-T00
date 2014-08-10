.class Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppErrorDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTargetProcess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .parameter "context"
    .parameter "service"
    .parameter "result"
    .parameter "app"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 155
    new-instance v8, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v8, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 55
    .local v7, res:Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 57
    iput-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 61
    const-string v8, "devicestoragemonitor"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceStorageMonitorService;

    .line 63
    .local v3, dsm:Lcom/android/server/DeviceStorageMonitorService;
    invoke-virtual {v3}, Lcom/android/server/DeviceStorageMonitorService;->isMemoryCriticalLow()Z

    move-result v2

    .line 64
    .local v2, criticalLow:Z
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, name:Ljava/lang/CharSequence;
    if-eqz v6, :cond_4

    .line 66
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 67
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 68
    const v8, 0x2050045

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, message:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 103
    const/4 v8, -0x1

    const v9, 0x10403db

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 107
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    .line 108
    const/4 v8, -0x2

    const v9, 0x10403dc

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 113
    :cond_0
    const/4 v4, 0x0

    .line 115
    .local v4, lsh:Lcom/mediatek/common/lowstorage/ILowStorageHandle;
    :try_start_0
    const-class v8, Lcom/mediatek/common/lowstorage/ILowStorageHandle;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/mediatek/common/lowstorage/ILowStorageHandle;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_2
    if-eqz v4, :cond_8

    .line 120
    invoke-interface {v4}, Lcom/mediatek/common/lowstorage/ILowStorageHandle;->GetCurrentFlag()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 121
    const/4 v8, -0x3

    const v9, 0x2050047

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v4}, Lcom/mediatek/common/lowstorage/ILowStorageHandle;->getLowStorageFlag()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 129
    :cond_1
    :goto_3
    const v8, 0x10403d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x4000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 132
    .local v1, attrs:Landroid/view/WindowManager$LayoutParams;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 135
    move-object/from16 v0, p4

    iget-boolean v8, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v8, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7da

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 140
    :cond_2
    const/4 v8, 0x1

    if-ne v2, v8, :cond_9

    iget-boolean v8, p0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    if-eqz v8, :cond_9

    .line 141
    const-string v8, "AppErrorDialog"

    const-string v9, "do not show the error dialog!"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v8, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    :goto_4
    return-void

    .line 73
    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #lsh:Lcom/mediatek/common/lowstorage/ILowStorageHandle;
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_3
    const v8, 0x10403d4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #message:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 79
    .end local v5           #message:Ljava/lang/CharSequence;
    .end local v6           #name:Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 81
    .restart local v6       #name:Ljava/lang/CharSequence;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mediatek.bluetooth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.process.acore"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 83
    :cond_5
    const-string v8, "AppErrorDialog"

    const-string v9, "got target error process"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 89
    :goto_5
    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    .line 90
    const v8, 0x2050046

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .restart local v5       #message:Ljava/lang/CharSequence;
    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 86
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    goto :goto_5

    .line 94
    :cond_7
    const v8, 0x10403d5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #message:Ljava/lang/CharSequence;
    goto :goto_6

    .line 126
    .restart local v4       #lsh:Lcom/mediatek/common/lowstorage/ILowStorageHandle;
    :cond_8
    const-string v8, "AppErrorDialog"

    const-string v9, "Failed to get ILowStorageHandle instance"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 147
    .restart local v1       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_9
    iget-object v8, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 116
    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v8

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method
