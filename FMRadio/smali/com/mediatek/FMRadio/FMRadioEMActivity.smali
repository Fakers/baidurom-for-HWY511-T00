.class public Lcom/mediatek/FMRadio/FMRadioEMActivity;
.super Landroid/app/Activity;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field private static final MSGID_INIT_OK:I = 0x7

.field private static final MSGID_OK:I = 0x1

.field private static final MSGID_POWERUP:I = 0x8

.field private static final MSGID_TICK_EVENT:I = 0x6

.field private static final MSGID_TUNE_FNISHED:I = 0x9

.field private static final MSGID_UPDATE_CURRENT_STATION:I = 0x3

.field private static final MSGID_UPDATE_RDS:I = 0x2

.field private static final RDS_BLER_STRING:Ljava/lang/String; = "RDS_BLER_STRING"

.field private static final RDS_CAPARRAY_STRING:Ljava/lang/String; = "RDS_CAPARRAY_STRING"

.field private static final RDS_RSSI_STRING:Ljava/lang/String; = "RDS_RSSI_STRING"

.field private static final RDS_STEREMONO_STRING:Ljava/lang/String; = "RDS_STEREMONO_STRING"

.field public static final TAG:Ljava/lang/String; = "FmRx/EM"

.field private static final TYPE_MSGID:Ljava/lang/String; = "MSGID"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonTune:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurFrequency:I

.field private mEditFreq:Landroid/widget/EditText;

.field private mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

.field private mIsDestroying:Z

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mIsTickEventExit:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mRdAntennaL:Landroid/widget/RadioButton;

.field private mRdAntennaS:Landroid/widget/RadioButton;

.field private mRdMono:Landroid/widget/RadioButton;

.field private mRdStereo:Landroid/widget/RadioButton;

.field private mRgAntenna:Landroid/widget/RadioGroup;

.field private mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextCapArray:Landroid/widget/TextView;

.field private mTextChipID:Landroid/widget/TextView;

.field private mTextDSPVersion:Landroid/widget/TextView;

.field private mTextECOVersion:Landroid/widget/TextView;

.field private mTextPatchVersion:Landroid/widget/TextView;

.field private mTextRdsBler:Landroid/widget/TextView;

.field private mTextRdsPS:Landroid/widget/TextView;

.field private mTextRdsRT:Landroid/widget/TextView;

.field private mTextRssi:Landroid/widget/TextView;

.field private mTextStereoMono:Landroid/widget/TextView;

.field private mTickEventThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 85
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 86
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 88
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 91
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 92
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsTickEventExit:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 99
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 100
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 101
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 102
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 103
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 106
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 107
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 108
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 109
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 110
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 111
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 112
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 113
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 114
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 115
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    .line 116
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTickEventThread:Ljava/lang/Thread;

    .line 119
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurFrequency:I

    .line 120
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 121
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 145
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 194
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 278
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 354
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->initService(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isSpeakerUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurFrequency:I

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->showRDS()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurFrequency:I

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsTickEventExit:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->formatCapArray(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    return-object v0
.end method

.method private formatCapArray(I)Ljava/lang/String;
    .locals 9
    .parameter "raw"

    .prologue
    const/4 v8, 0x1

    .line 429
    const/16 v4, 0x8

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 431
    .local v2, pF:[F
    const/4 v3, 0x0

    .line 432
    .local v3, sum:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 433
    const/4 v0, 0x6

    .line 434
    .local v0, base:I
    float-to-double v6, v3

    add-int/lit8 v4, v1, 0x6

    shr-int v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v8, :cond_0

    aget v4, v2, v1

    float-to-double v4, v4

    :goto_1
    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 436
    .end local v0           #base:I
    :cond_1
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 429
    :array_0
    .array-data 0x4
        0xe7t 0xfbt 0x29t 0x3et
        0xe7t 0xfbt 0xa9t 0x3et
        0xe7t 0xfbt 0x29t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
        0x71t 0x3dt 0x2at 0x40t
        0x85t 0xebt 0xa9t 0x40t
        0x9at 0x99t 0x29t 0x41t
        0xcdt 0xcct 0x94t 0x41t
    .end array-data
.end method

.method private getFrequency()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getFrequency()I

    move-result v0

    .line 675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getLRText()Ljava/lang/String;

    move-result-object v0

    .line 641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getPS()Ljava/lang/String;

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initService(I)V
    .locals 1
    .parameter "iCurrentStation"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->initService(I)V

    .line 662
    :cond_0
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isDeviceOpen()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isDeviceOpen()Z

    move-result v0

    .line 619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 2

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 627
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRDSSupported()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v0

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceInit()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isServiceInit()Z

    move-result v0

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeakerUsed()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v0

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshTextStatus(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurFrequency:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 532
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showRDS()V
    .locals 3

    .prologue
    .line 547
    const-string v0, "FmRx/EM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioEMActivity.showRDS PS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RT :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    return-void
.end method

.method private stopTickEventThread()V
    .locals 2

    .prologue
    .line 829
    const-string v0, "FmRx/EM"

    const-string v1, ">>> stopTickEventThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTickEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsTickEventExit:Z

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTickEventThread:Ljava/lang/Thread;

    .line 834
    :cond_0
    const-string v0, "FmRx/EM"

    const-string v1, "<<< stopTickEventThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method

.method private tuneToStation(I)V
    .locals 2
    .parameter "iStation"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    .line 519
    return-void
.end method


# virtual methods
.method public getChipId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 558
    .local v1, hardwareVersion:[I
    const/4 v0, 0x0

    .line 559
    .local v0, chipId:I
    if-eqz v1, :cond_0

    .line 560
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 562
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDspVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 608
    .local v1, hardwareVersion:[I
    const/4 v0, 0x0

    .line 609
    .local v0, dspVersion:I
    if-eqz v1, :cond_0

    .line 610
    const/4 v2, 0x2

    aget v0, v1, v2

    .line 612
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getEcoVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 571
    .local v1, hardwareVersion:[I
    const/4 v0, 0x0

    .line 572
    .local v0, ecoVersion:I
    if-eqz v1, :cond_0

    .line 573
    const/4 v2, 0x1

    aget v0, v1, v2

    .line 575
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getHardwareVersion()[I
    .locals 4

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, hardwareVersion:[I
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->getHardwareVersion()[I

    move-result-object v0

    .line 761
    :cond_0
    const-string v1, "FmRx/EM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHardwareversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-object v0
.end method

.method public getPatchVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 584
    .local v1, hardwareVersion:[I
    const/4 v5, 0x0

    .line 585
    .local v5, patchVersion:I
    if-eqz v1, :cond_0

    .line 586
    const/4 v6, 0x3

    .line 587
    .local v6, patchVersionPosition:I
    const/4 v7, 0x3

    aget v5, v1, v7

    .line 589
    .end local v6           #patchVersionPosition:I
    :cond_0
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, patchStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 591
    .local v3, patch:F
    if-eqz v4, :cond_1

    .line 593
    const/16 v2, 0x64

    .line 594
    .local v2, hundred:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/high16 v8, 0x42c8

    div-float v3, v7, v8

    .line 599
    .end local v2           #hundred:I
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 595
    .restart local v2       #hundred:I
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getStereoMono()Z

    move-result v0

    .line 708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 5
    .parameter "convertData"

    .prologue
    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    .local v3, temp:Ljava/lang/StringBuilder;
    move v1, p1

    .line 773
    .local v1, quotient:I
    const/4 v2, 0x0

    .line 774
    .local v2, remainder:I
    :goto_0
    if-lez v1, :cond_0

    .line 775
    const/16 v0, 0x10

    .line 776
    .local v0, hexadecimal:I
    rem-int/lit8 v2, v1, 0x10

    .line 777
    div-int/lit8 v1, v1, 0x10

    .line 778
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 779
    goto :goto_0

    .line 780
    .end local v0           #hexadecimal:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const-string v1, "FmRx/EM"

    const-string v2, "begin FMRadioEMActivity.onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setVolumeControlStream(I)V

    .line 214
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setContentView(I)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    .line 217
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->initFMDatabase(Landroid/content/Context;)V

    .line 219
    const v1, 0x7f0b0014

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f0b0015

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 221
    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f0b0017

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 223
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 224
    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 226
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 227
    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 228
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 229
    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 230
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 231
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 232
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 233
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 234
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 235
    const v1, 0x7f0b0013

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 237
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v0, filterHeadset:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioEMActivity$1;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 265
    const-string v1, "FmRx/EM"

    const-string v2, "Register HeadsetConnectionReceiver"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v1

    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurFrequency:I

    .line 270
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 271
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 272
    const-string v1, "FmRx/EM"

    const-string v2, "end FMRadioEMActivity.onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 487
    const-string v0, "FmRx/EM"

    const-string v1, ">>> FMRadioEMActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 489
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 490
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "FmRx/EM"

    const-string v1, "Unregister headset broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 493
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 496
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 497
    const-string v0, "FmRx/EM"

    const-string v1, "FM is Playing. So stop it."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->powerDownAsync()V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 505
    :cond_2
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 506
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 509
    const-string v0, "FmRx/EM"

    const-string v1, "<<< FMRadioEMActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 511
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->stopTickEventThread()V

    .line 469
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 470
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 460
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readTickEvent()V

    .line 461
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 540
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 445
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_0

    .line 446
    const-string v0, "FmRx/EM"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->finish()V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v0, "FmRx/EM"

    const-string v1, "Bind FM service successfully."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 474
    const-string v0, "FmRx/EM"

    const-string v1, "start FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 479
    :cond_0
    const-string v0, "FmRx/EM"

    const-string v1, "end FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 481
    return-void
.end method

.method public readCapArray()I
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getCapArray()I

    move-result v0

    .line 686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRdsBler()I
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getRdsBler()I

    move-result v0

    .line 748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRssi()I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getRssi()I

    move-result v0

    .line 697
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readTickEvent()V
    .locals 3

    .prologue
    .line 784
    const/16 v0, 0x3e8

    .line 786
    .local v0, interval:I
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTickEventThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 826
    :goto_0
    return-void

    .line 789
    :cond_0
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTickEventThread:Ljava/lang/Thread;

    .line 824
    const-string v1, "FmRx/EM"

    const-string v2, "Start tick event Thread."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTickEventThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setStereoMono(Z)V
    .locals 1
    .parameter "isMono"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setStereoMono(Z)Z

    .line 722
    return-void
.end method

.method public switchAntenna(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntennaAsync(I)V

    .line 737
    return-void
.end method
