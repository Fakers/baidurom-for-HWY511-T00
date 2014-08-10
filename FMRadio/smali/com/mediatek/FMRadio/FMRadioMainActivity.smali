.class public Lcom/mediatek/FMRadio/FMRadioMainActivity;
.super Landroid/app/Activity;
.source "FMRadioMainActivity.java"


# static fields
.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FMRadioMainActivity"

.field private static finshShow:Z


# instance fields
.field private isAutoTune:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoTuneDialog:Landroid/app/ProgressDialog;

.field private mCollectAdapter:Lcom/mediatek/FMRadio/CollectAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurFrequency:I

.field private mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

.field private mFreqIndicator:Landroid/widget/ImageView;

.field private mFrequencyView:Landroid/widget/TextView;

.field private mGridView:Landroid/widget/GridView;

.field private mHeadsetButton:Landroid/widget/ImageButton;

.field private mInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

.field public mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mListButton:Landroid/widget/ImageButton;

.field private final mMainHandler:Landroid/os/Handler;

.field private mManualTuneDialog:Landroid/app/ProgressDialog;

.field private mMaskView:Landroid/widget/ImageView;

.field private mNeedTuneto:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mOnTop:Z

.field private mPowerButton:Landroid/widget/ImageButton;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mScreenWidth:I

.field private mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private mStationNameView:Landroid/widget/TextView;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mUnitView:Landroid/widget/TextView;

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->finshShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 88
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsPlaying:Z

    .line 89
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceBinded:Z

    .line 90
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceStarted:Z

    .line 91
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mNeedTuneto:Z

    .line 102
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioMainActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 641
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$13;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 815
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$14;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    .line 876
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioMainActivity$15;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$15;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    .line 958
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$16;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshCollect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->isAutoTune:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/FMRadio/FMRadioMainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->isAutoTune:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshStationUI(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mOnTop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioMainActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->setSpeakerPhoneOn(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->enterChannelList()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->exitService()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/FMRadio/FMRadioMainActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/CollectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/mediatek/FMRadio/CollectAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioMainActivity;ILcom/mediatek/FMRadio/ItemHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->onCollectItemClick(ILcom/mediatek/FMRadio/ItemHolder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioMainActivity;Landroid/view/ContextMenu;ILcom/mediatek/FMRadio/ItemHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->onCollectItemLongClick(Landroid/view/ContextMenu;ILcom/mediatek/FMRadio/ItemHolder;)V

    return-void
.end method

.method private enterChannelList()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 363
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 364
    return-void
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    const-string v1, "FMRadioMainActivity"

    const-string v2, "exitService"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 592
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceBinded:Z

    .line 595
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 596
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 598
    .local v0, isSuccess:Z
    if-nez v0, :cond_1

    .line 599
    const-string v1, "FMRadioMainActivity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceStarted:Z

    .line 603
    .end local v0           #isSuccess:Z
    :cond_2
    return-void
.end method

.method private initParameter()V
    .locals 5

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 477
    .local v1, orientation:I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 478
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 480
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 481
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    .line 486
    :goto_0
    const-string v2, "FMRadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initParameter mScreenWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 483
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    .line 163
    const-string v0, "FMRadioMainActivity"

    const-string v1, "initViews"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMaskView:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    .line 181
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mListButton:Landroid/widget/ImageButton;

    .line 190
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mListButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    .line 221
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$6;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$6;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 230
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$7;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$7;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    .line 241
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lcom/mediatek/FMRadio/CollectAdapter;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/CollectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/mediatek/FMRadio/CollectAdapter;

    .line 244
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/mediatek/FMRadio/CollectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$8;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$8;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioMainActivity$9;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$9;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 265
    :cond_0
    return-void
.end method

.method public static isFishShow()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->finshShow:Z

    return v0
.end method

.method private onCollectItemClick(ILcom/mediatek/FMRadio/ItemHolder;)V
    .locals 6
    .parameter "position"
    .parameter "itemHolder"

    .prologue
    const v5, 0x7f08003a

    const/4 v4, 0x0

    .line 269
    if-nez p2, :cond_3

    .line 270
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/mediatek/FMRadio/ItemHolder;

    move-result-object p2

    .line 272
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    .line 273
    .local v0, mFrequency:I
    const-string v1, "FMRadioMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCollectItemClick mFrequency=: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-nez p2, :cond_1

    .line 275
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doSaveCollectStation(Landroid/content/Context;ILjava/lang/String;I)Z

    .line 277
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshCollect()V

    .line 278
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 291
    .end local v0           #mFrequency:I
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v0       #mFrequency:I
    :cond_1
    invoke-virtual {p2}, Lcom/mediatek/FMRadio/ItemHolder;->ismCollected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f08003b

    invoke-static {v1, v2, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doUpdateCollectStatus(Landroid/content/Context;IZI)Z

    .line 284
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshCollect()V

    .line 285
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 289
    .end local v0           #mFrequency:I
    :cond_3
    invoke-virtual {p2}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->tuneToStation(I)V

    goto :goto_0
.end method

.method private onCollectItemLongClick(Landroid/view/ContextMenu;ILcom/mediatek/FMRadio/ItemHolder;)V
    .locals 6
    .parameter "menu"
    .parameter "position"
    .parameter "itemHolder"

    .prologue
    const/16 v5, 0x66

    const/16 v3, 0x65

    const/4 v4, 0x0

    .line 295
    if-eqz p3, :cond_0

    .line 297
    const v2, 0x7f08003d

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 299
    invoke-virtual {p3}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v0

    .line 300
    .local v0, frequency:I
    invoke-virtual {p3}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, stationName:Ljava/lang/String;
    const v2, 0x7f08000c

    invoke-interface {p1, v4, v3, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 313
    const v2, 0x7f080035

    invoke-interface {p1, v4, v5, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;

    invoke-direct {v3, p0, v0, p2}, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;II)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 327
    .end local v0           #frequency:I
    .end local v1           #stationName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private refreshCollect()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/mediatek/FMRadio/CollectAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/CollectAdapter;->notifyDataSetChanged()V

    .line 371
    :cond_0
    return-void
.end method

.method private refreshIndicator(I)V
    .locals 7
    .parameter "currStation"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x4040

    const/high16 v3, 0x4000

    .line 444
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, indicatorPos:F
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 449
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    add-int/lit16 v5, p1, -0x36b

    int-to-float v0, v5

    .line 453
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    .line 455
    .local v1, isPortrait:Z
    :goto_0
    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    const/16 v5, 0x1e0

    if-ne v2, v5, :cond_4

    .line 456
    if-eqz v1, :cond_3

    move v2, v3

    :goto_1
    mul-float/2addr v0, v2

    .line 466
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    float-to-int v3, v0

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 470
    .end local v1           #isPortrait:Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 453
    goto :goto_0

    .line 456
    .restart local v1       #isPortrait:Z
    :cond_3
    const/high16 v2, 0x4020

    goto :goto_1

    .line 458
    :cond_4
    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    const/16 v5, 0x21c

    if-ne v2, v5, :cond_6

    .line 459
    if-eqz v1, :cond_5

    :goto_3
    mul-float/2addr v0, v3

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    .line 461
    :cond_6
    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_0

    .line 462
    if-eqz v1, :cond_7

    :goto_4
    mul-float/2addr v0, v4

    goto :goto_2

    :cond_7
    const/high16 v4, 0x4080

    goto :goto_4
.end method

.method private refreshStationUI(I)V
    .locals 2
    .parameter "station"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->isStationSaved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 376
    const-string v2, "FMRadioMainActivity"

    const-string v3, "refreshViews"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    .line 379
    .local v0, isBroadcastOn:Z
    const-string v2, "FMRadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBroadcastOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    .line 383
    :cond_0
    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    .line 384
    .local v1, isFreqValid:Z
    const-string v2, "FMRadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFreqValid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 386
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getSpeakerUsed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 393
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 394
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 395
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 397
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMaskView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 409
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    :goto_1
    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshIndicator(I)V

    .line 439
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshCollect()V

    .line 441
    return-void

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 413
    :cond_3
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 414
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 415
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 417
    if-eqz v1, :cond_4

    .line 418
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :goto_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMaskView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    const v3, 0x7f02001b

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 436
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 429
    :cond_4
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 797
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 799
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v1, "com.huawei.android.FMRadio.manualtunecomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v1, "com.huawei.android.FMRadio.operationfail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v1, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v1, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v1, "com.huawei.android.FMRadio.opensoundsuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v1, "com.huawei.android.FMRadio.callingstate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v1, "com.huawei.android.FMRadio.open"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 813
    return-void
.end method

.method private seekStation(IZ)V
    .locals 2
    .parameter "station"
    .parameter "direction"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/FMRadio/FMRadioService;->seekStationAsync(FZ)V

    .line 341
    return-void
.end method

.method public static setFishShow(Z)V
    .locals 0
    .parameter "isFish"

    .prologue
    .line 100
    sput-boolean p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->finshShow:Z

    .line 101
    return-void
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 2
    .parameter "isSpeaker"

    .prologue
    .line 781
    if-eqz p1, :cond_0

    .line 782
    const-string v0, "FMRadioMainActivity"

    const-string v1, "UseSpeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 788
    :goto_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getSpeakerUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 793
    :goto_1
    return-void

    .line 785
    :cond_0
    const-string v0, "FMRadioMainActivity"

    const-string v1, "UseEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    goto :goto_0

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method private tuneToStation(I)V
    .locals 3
    .parameter "station"

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f080047

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f080039

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    goto :goto_0
.end method

.method private updateCurrentStation()V
    .locals 3

    .prologue
    .line 936
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->getFrequency()I

    move-result v0

    .line 937
    .local v0, freq:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    if-eq v1, v0, :cond_0

    .line 939
    const-string v1, "FMRadioMainActivity"

    const-string v2, "frequency in service isn\'t same as in database"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    .line 942
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 943
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshStationUI(I)V

    .line 946
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 906
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    .line 907
    if-eq v3, p1, :cond_0

    .line 908
    const-string v1, "FMRadioMainActivity"

    const-string v2, "Error: Invalid requestcode."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :goto_0
    return-void

    .line 911
    :cond_0
    const-string v1, "ACTIVITY_RESULT"

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 914
    .local v0, iStation:I
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    .line 917
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_1

    .line 918
    const-string v1, "FMRadioMainActivity"

    const-string v2, "activity.onActivityResult mService is null"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mNeedTuneto:Z

    goto :goto_0

    .line 922
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->tuneToStation(I)V

    goto :goto_0

    .line 927
    .end local v0           #iStation:I
    :cond_2
    const-string v1, "FMRadioMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The activity for requestcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not return any data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->setContentView(I)V

    .line 157
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->initViews()V

    .line 158
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->setVolumeControlStream(I)V

    .line 131
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->setContentView(I)V

    .line 133
    iput-object p0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    .line 134
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 135
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/CommonUI;->initWaitProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 137
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->initViews()V

    .line 139
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->initParameter()V

    .line 140
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    .line 145
    :goto_0
    const-string v0, "FMRadioMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurFrequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->setFishShow(Z)V

    .line 148
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->registerBroadcastReceiver()V

    .line 149
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 546
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 551
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 553
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 555
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceBinded:Z

    .line 556
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    const-string v0, "FMRadioMainActivity"

    const-string v1, "unbind service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 561
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 562
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 565
    :cond_3
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->setFishShow(Z)V

    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 568
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 572
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 575
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doStopAutoTuning(Landroid/content/Context;Landroid/os/Handler;)V

    .line 577
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 578
    const/4 v0, 0x1

    .line 582
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 526
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 492
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mOnTop:Z

    .line 494
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->registerMediaButtonEventReceiver(Landroid/content/Context;)V

    .line 496
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V

    .line 497
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->checkCurStatus(Landroid/content/Context;)Z

    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 499
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 503
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 506
    const-string v0, "FMRadioMainActivity"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    return-void

    .line 510
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceStarted:Z

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceBinded:Z

    .line 515
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_1

    .line 516
    const-string v0, "FMRadioMainActivity"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->finish()V

    goto :goto_0

    .line 520
    :cond_1
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 531
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 532
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mOnTop:Z

    .line 535
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 539
    :cond_0
    return-void
.end method

.method public showChooserDialog()V
    .locals 4

    .prologue
    .line 625
    new-instance v0, Lcom/mediatek/FMRadio/FrequencyPicker;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FrequencyPicker;-><init>(Landroid/content/Context;)V

    .line 626
    .local v0, frequencyPicker:Lcom/mediatek/FMRadio/FrequencyPicker;
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FrequencyPicker;->setCurrentFrequency(Ljava/lang/Integer;)V

    .line 627
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;-><init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;Lcom/mediatek/FMRadio/FrequencyPicker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 639
    return-void
.end method

.method public startAutoTune(Z)V
    .locals 3
    .parameter "keepCollected"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/CommonUI;->initAutoTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->isAutoTune:Z

    .line 612
    return-void
.end method

.method public startManualTune(IZ)V
    .locals 2
    .parameter "station"
    .parameter "direction"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/CommonUI;->initManualTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, p2, p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doManualSearch(Landroid/content/Context;Landroid/app/ProgressDialog;ZI)V

    .line 621
    return-void
.end method
