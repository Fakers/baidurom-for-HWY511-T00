.class public Lcom/mediatek/FMRadio/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;,
        Lcom/mediatek/FMRadio/FMRadioService$Record;,
        Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;,
        Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final BT_PROPERTIES:Ljava/lang/String; = "bt.fmoverbt"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final FM_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final FM_POWER_DOWN_MSG:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final FM_POWER_UP_MSG:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field private static final FM_WIDGET_TOAST_AIRPLANE_MODE:I = 0x1

.field private static final FM_WIDGET_TOAST_CALL_TIPS:I = 0x0

.field private static final FM_WIDGET_TOAST_NO_EARPHONE:I = 0x2

.field private static final FOR_PROPRIETARY:I = 0x5

.field private static final HEADSET_PLUG_IN:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final OPTION:Ljava/lang/String; = "option"

.field public static final RDS_EVENT_AF:I = 0x80

.field public static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field public static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field private static final RECODING_FILE_NAME:Ljava/lang/String; = "name"

.field public static final SOUND_POWER_DOWN_MSG:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final TAG:Ljava/lang/String; = "FmRx/Service"

.field private static mSearchStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSwitching:Z

.field private isTogglePause:Z

.field private mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurFrequency:I

.field private mDefaultSDCardPath:Ljava/lang/String;

.field private mErrorType:I

.field private mFMPlayer:Landroid/media/MediaPlayer;

.field private mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

.field private mForcedUseForMedia:I

.field private mICallBack:Landroid/os/IBinder;

.field private mIsAFEnabled:Z

.field private mIsAudioFocusHeld:Z

.field private mIsDeviceOpen:Z

.field private mIsInRecordingMode:Z

.field private mIsMediaButtonReceiver:Z

.field private mIsNativeScanning:Z

.field private mIsNativeSeeking:Z

.field private mIsPSRTEnabled:Z

.field private mIsPowerUp:Z

.field private mIsPowerUping:Z

.field private mIsRDSThreadExit:Z

.field private mIsSeeking:Z

.field private mIsServiceInit:Z

.field private mIsShortAntennaSupport:Z

.field private mIsSpeakerUsed:Z

.field private mIsStopScanCalled:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mRDSThread:Ljava/lang/Thread;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/FMRadio/FMRadioService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStartId:I

.field private mUsingFMViaBTController:Z

.field private mValueHeadSetPlug:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWidgetToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    .line 126
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 133
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;

    .line 135
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mErrorType:I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    .line 141
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    .line 151
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    .line 153
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    .line 157
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 161
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    .line 165
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    .line 167
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 169
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 171
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 173
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 175
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    .line 177
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    .line 179
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    .line 181
    iput v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    .line 183
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 185
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 188
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    .line 192
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Landroid/os/IBinder;

    .line 196
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 198
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 205
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 206
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->isSwitching:Z

    .line 207
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z

    .line 208
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mServiceStartId:I

    .line 1320
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$1;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWidgetToastHandler:Landroid/os/Handler;

    .line 1595
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$3;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1670
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$4;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1940
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->exitFM()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->intoApplication()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocusAync(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->unRegisterMediaButton()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->closeDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioService;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioService;FZ)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioService;->seekStation(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioService;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    return v0
.end method

.method static synthetic access$3102(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    return p1
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocus(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setAudioChannel(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->activeAF()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->handleBtConnectState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->fmOverBtController(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    return-void
.end method

.method private activeAF()I
    .locals 4

    .prologue
    .line 959
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 960
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, -0x1

    .line 966
    :goto_0
    return v0

    .line 964
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v0

    .line 965
    .local v0, frequency:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private chipSupportOverBt()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1190
    const-string v3, "bt.fmoverbt"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1191
    .local v0, result:I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bt.fmoverbt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-ne v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 4

    .prologue
    .line 428
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FMRadioService.closeDevice"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, isDeviceClose:Z
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-eqz v1, :cond_0

    .line 431
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    .line 432
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 434
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 437
    return v0

    .line 432
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private connectBtDevice()V
    .locals 3

    .prologue
    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FmRx/Service"

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP sent to A2dp service!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 619
    return-void
.end method

.method private doStartOrStopFM()V
    .locals 2

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->isTogglePause:Z

    .line 1380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioService$2;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1419
    :cond_0
    return-void
.end method

.method private enableFMAudio(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1525
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_1

    .line 1527
    :cond_0
    const-string v1, "FmRx/Service"

    const-string v2, "mFMPlayer is null in Service.enableFMAudio"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :goto_0
    return-void

    .line 1532
    :cond_1
    if-nez p1, :cond_4

    .line 1533
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1534
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already disabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer isPlaying."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1553
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1560
    :goto_1
    const-string v1, "FmRx/Service"

    const-string v2, "Start FM audio."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FMRadioService.enableFMAudio"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1538
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1539
    const-string v1, "FmRx/Service"

    const-string v2, "stop FM audio."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1543
    :cond_4
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1544
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already enabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1554
    :catch_1
    move-exception v0

    .line 1555
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1556
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1557
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private exitFM()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1294
    const-string v0, "FmRx/Service"

    const-string v1, "service.exitFM start"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    if-eqz v0, :cond_1

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1306
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1307
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1309
    const-string v0, "FmRx/Service"

    const-string v1, "service.exitFM end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return-void
.end method

.method private fmOverBtController(I)V
    .locals 3
    .parameter "fmOverBTState"

    .prologue
    const/4 v2, 0x1

    .line 1914
    packed-switch p1, :pswitch_data_0

    .line 1934
    const-string v0, "FmRx/Service"

    const-string v1, "invalid fm over bt state"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :goto_0
    return-void

    .line 1916
    :pswitch_0
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    const-string v0, "FmRx/Service"

    const-string v1, "failed to set FM over BT via Controller!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1920
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "setFMViaBTController(true) succeeded!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 1922
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 1926
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 1930
    :pswitch_2
    const-string v0, "FmRx/Service"

    const-string v1, "ACTION_FM_OVER_BT_CONTROLLER: FM over BT already on-going!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleBtConnectState(I)V
    .locals 4
    .parameter "connectState"

    .prologue
    const/4 v3, 0x0

    .line 1865
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1905
    :goto_0
    return-void

    .line 1869
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1902
    const-string v1, "FmRx/Service"

    const-string v2, "invalid fm over bt connect state"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1872
    :sswitch_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-eqz v1, :cond_1

    .line 1873
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED: FM over BT already enabled, ignore this message"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1876
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->chipSupportOverBt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1877
    const-string v1, "FmRx/Service"

    const-string v2, "chip not support fm over bt, ignore this message"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1880
    :cond_2
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED: disable FM audio first to avoid I2S noise!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1882
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->connectBtDevice()V

    goto :goto_0

    .line 1887
    :sswitch_1
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1888
    const-string v1, "FmRx/Service"

    const-string v2, "failed to set FM over BT via Host!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1891
    :cond_3
    const-string v1, "FmRx/Service"

    const-string v2, "setFMViaBTController(false) succeeded!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 1893
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1895
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1896
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100111

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1897
    const-string v1, "key_is_recording_mode"

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1898
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1869
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private handlePowerUp(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2113
    const/4 v1, 0x0

    .line 2114
    .local v1, isPowerup:Z
    const/4 v2, 0x1

    .line 2115
    .local v2, isSwitch:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2116
    .local v3, time:J
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "performance test. service handler power up start:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-string v7, "frequency"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2118
    .local v0, curFrequency:F
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I

    move-result v7

    if-nez v7, :cond_0

    move v2, v5

    .line 2119
    :goto_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2120
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 2121
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 2122
    .restart local p1
    const-string v5, "callback_flag"

    const/16 v6, 0x22

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2123
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2153
    :goto_1
    return-void

    :cond_0
    move v2, v6

    .line 2118
    goto :goto_0

    .line 2128
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v2, :cond_2

    .line 2129
    const-string v5, "FmRx/Service"

    const-string v7, "call back to activity, earphone is not ready"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    .line 2131
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 2132
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1, v10}, Landroid/os/Bundle;-><init>(I)V

    .line 2133
    .restart local p1
    const-string v5, "callback_flag"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2134
    const-string v5, "key_is_switch_anntenna"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2135
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    goto :goto_1

    .line 2139
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2140
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerMediaButton()V

    .line 2141
    const-string v7, "com.huawei.android.FMRadio.openfm"

    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 2142
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->initDevice(F)Z

    move-result v1

    .line 2143
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2145
    :cond_3
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 2146
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    .line 2147
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1, v10}, Landroid/os/Bundle;-><init>(I)V

    .line 2148
    .restart local p1
    const-string v5, "callback_flag"

    const/16 v6, 0x9

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2149
    const-string v5, "key_is_power_up"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2150
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2152
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performance test. service handler power up end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handlePowernDown()V
    .locals 4

    .prologue
    .line 2097
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->unRegisterMediaButton()V

    .line 2101
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->powerDown()Z

    move-result v1

    .line 2102
    .local v1, isPowerdown:Z
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2103
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "callback_flag"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2104
    const-string v2, "key_is_power_down"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2105
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2106
    return-void
.end method

.method private initDevice(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 570
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.initDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    .line 573
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 574
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->saveLastFrequency(Landroid/content/Context;I)V

    .line 576
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 578
    const-string v0, "FmRx/Service"

    const-string v1, "to update notification......"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 584
    const-string v0, "FmRx/Service"

    const-string v1, "acquire wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->setBtStatus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 588
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerPhoneOn()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 589
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 591
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 593
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 595
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 596
    const-string v0, "FmRx/Service"

    const-string v1, "Error while trying to switch to short antenna: "

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_4
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    .line 602
    :cond_5
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 603
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 604
    const-string v0, "com.huawei.android.FMRadio.playstatechanged"

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 606
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.initDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method private intoApplication()V
    .locals 3

    .prologue
    .line 1423
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1424
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1425
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1427
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->startActivity(Landroid/content/Intent;)V

    .line 1428
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerPhoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 404
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyActivityStateChanged(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 1810
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1811
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyActivityStatusChanged:clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1813
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1814
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1815
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/FMRadio/FMRadioService$Record;

    .line 1817
    .local v2, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    iget-object v1, v2, Lcom/mediatek/FMRadio/FMRadioService$Record;->mCallback:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 1819
    .local v1, listener:Lcom/mediatek/FMRadio/FMRadioListener;
    if-nez v1, :cond_1

    .line 1820
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1821
    monitor-exit v4

    .line 1828
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .end local v2           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :cond_0
    :goto_1
    return-void

    .line 1824
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .restart local v1       #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .restart local v2       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/FMRadioListener;->onCallBack(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1826
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .end local v2           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 394
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->isFishShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->isFishShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/FMRadio/FMRadioWidget;->configChange(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openDevice()Z
    .locals 3

    .prologue
    .line 414
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.openDevice"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-nez v0, :cond_0

    .line 416
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 418
    :cond_0
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.openDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method private powerUpFM(F)Z
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 531
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> FMRadioService.powerUp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v4, :cond_0

    .line 534
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< FMRadioService.powerUp: already power up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_0
    return v2

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->requestAudioFocus()Z

    move-result v4

    if-nez v4, :cond_1

    .line 539
    const-string v2, "FmRx/Service"

    const-string v4, "FM can\'t get audio focus when power up"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 540
    goto :goto_0

    .line 542
    :cond_1
    const v4, 0x10002

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/FMRadio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 544
    .local v0, time:J
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performance test. service native power up start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 546
    const-string v2, "FmRx/Service"

    const-string v4, "Error: powerup failed."

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 547
    goto :goto_0

    .line 549
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerMediaButton()V

    .line 550
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 551
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->isFishShow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 552
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.android.FMRadio.open"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 559
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performance test. service native power up end:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 561
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmBroadcastOn(Z)V

    .line 563
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 565
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.powerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    goto/16 :goto_0

    .line 554
    :cond_4
    const-string v3, "com.huawei.android.FMRadio.open"

    invoke-static {p0, v3}, Lcom/mediatek/FMRadio/FMRadioWidget;->configChange(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private registerMediaButton()V
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    if-nez v0, :cond_0

    .line 373
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->registerMediaButtonEventReceiver(Landroid/content/Context;)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 376
    :cond_0
    return-void
.end method

.method private remove(I)V
    .locals 4
    .parameter "hashCode"

    .prologue
    .line 1847
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1848
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1849
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1850
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/FMRadioService$Record;

    .line 1851
    .local v1, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    iget v2, v1, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    if-ne v2, p1, :cond_0

    .line 1852
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1855
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1856
    return-void
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 1569
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.removeNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopForeground(Z)V

    .line 1571
    return-void
.end method

.method private seekStation(FZ)F
    .locals 9
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    const/4 v8, 0x0

    .line 779
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v5, :cond_0

    .line 782
    const-string v5, "FmRx/Service"

    const-string v6, "FM is not powered up"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/high16 v2, -0x4080

    .line 799
    :goto_0
    return v2

    .line 786
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 787
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 789
    .local v3, startSeekTime:J
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time start ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {p1, p2}, Lcom/mediatek/FMRadio/FMRadioNative;->seek(FZ)F

    move-result v2

    .line 791
    .local v2, fRet:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 792
    .local v0, endSeekTime:J
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    .line 797
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 798
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAudioChannel(Z)Z
    .locals 3
    .parameter "isMono"

    .prologue
    .line 1161
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1163
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v0, 0x0

    .line 1166
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private setBtStatus(Z)Z
    .locals 1
    .parameter "isPowerUp"

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 4
    .parameter "lrtText"

    .prologue
    .line 1485
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.setLRText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1487
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 1488
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1489
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100100

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1490
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1494
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setMute(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 987
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 988
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v0, -0x1

    .line 995
    :goto_0
    return v0

    .line 992
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result v0

    .line 994
    .local v0, iRet:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPS(Ljava/lang/String;)V
    .locals 4
    .parameter "ps"

    .prologue
    .line 1467
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.setPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 1470
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1471
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100011

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1472
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1476
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setRDS(Z)I
    .locals 4
    .parameter "on"

    .prologue
    .line 913
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 914
    const/4 v0, -0x1

    .line 925
    :goto_0
    return v0

    .line 916
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, -0x1

    .line 918
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->rdsset(Z)I

    move-result v0

    .line 922
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    .line 923
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    .line 924
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startScan()[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 813
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FMRadioService.startScan"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v1, 0x0

    .line 815
    .local v1, iChannels:[I
    sget-object v4, Lcom/mediatek/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 817
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 818
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 820
    const/4 v2, 0x0

    .line 821
    .local v2, shortChannels:[S
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    if-nez v4, :cond_0

    .line 822
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    .line 823
    const-string v4, "FmRx/Service"

    const-string v5, "startScan native method:start"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->autoscan()[S

    move-result-object v2

    .line 825
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScan native method:end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    .line 829
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 830
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    if-eqz v4, :cond_1

    .line 834
    new-array v2, v8, [S

    .end local v2           #shortChannels:[S
    const/16 v4, -0x64

    aput-short v4, v2, v7

    .line 835
    .restart local v2       #shortChannels:[S
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 841
    :goto_0
    if-eqz v2, :cond_2

    .line 842
    array-length v3, v2

    .line 843
    .local v3, size:I
    new-array v1, v3, [I

    .line 844
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 845
    aget-short v4, v2, v0

    aput v4, v1, v0

    .line 846
    sget-object v4, Lcom/mediatek/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 838
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_1
    const-string v4, "FmRx/Service"

    const-string v5, "startScan: scan complete, but don\'t enable audio yet!"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_2
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< FMRadioService.startScan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-object v1
.end method

.method private switchAntenna(I)I
    .locals 4
    .parameter "antenna"

    .prologue
    .line 1096
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.switchAntenna:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->switchAntenna(I)I

    move-result v0

    .line 1105
    .local v0, ret:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.switchAntenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return v0
.end method

.method private switchStation(Z)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 1431
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1434
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->isStationSaved(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1437
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->isSwitching:Z

    if-nez v1, :cond_1

    .line 1439
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->isSwitching:Z

    .line 1441
    const-string v1, "FmRx/Service"

    const-string v2, "switch station"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v1, p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->findPreviousOrNextStation(IZ)I

    move-result v0

    .line 1444
    .local v0, frequency:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch station to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    int-to-float v1, v0

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    .line 1446
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 1447
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 1448
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->isSwitching:Z

    .line 1457
    .end local v0           #frequency:I
    :cond_1
    :goto_0
    return-void

    .line 1452
    :cond_2
    const-string v1, "FmRx/Service"

    const-string v2, "FM has stop..Update UI "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v1, "com.huawei.android.FMRadio.stopfm"

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 1454
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 1455
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private tuneStation(F)Z
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 721
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioService.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_2

    .line 723
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 724
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    .line 725
    .local v0, bRet:Z
    if-eqz v0, :cond_1

    .line 726
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 727
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    .line 728
    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 729
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->saveLastFrequency(Landroid/content/Context;I)V

    .line 730
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 731
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 732
    const-string v2, "FmRx/Service"

    const-string v3, "to update widget......"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    const-string v2, "com.huawei.android.FMRadio.manualtunecomplete"

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 738
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 739
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v0           #bRet:Z
    :goto_0
    return v0

    .line 743
    :cond_2
    const-string v2, "FmRx/Service"

    const-string v3, "FM is not powered up"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, tune:Z
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    const-string v2, "com.huawei.android.FMRadio.openfm"

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->initDevice(F)Z

    move-result v1

    .line 751
    :cond_3
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 752
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.tune: mIsPowerup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 753
    goto :goto_0
.end method

.method private unRegisterMediaButton()V
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioUtils;->unRegisterMediaButtonEventReceiver(Landroid/content/Context;)V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 386
    :cond_0
    return-void
.end method

.method private updateAudioFocus(I)V
    .locals 6
    .parameter "focusState"

    .prologue
    const/4 v5, 0x1

    .line 1734
    const-string v2, "FmRx/Service"

    const-string v3, "FMRadioService.updateAudioFocus"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    packed-switch p1, :pswitch_data_0

    .line 1766
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1737
    :pswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 1738
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIOFOCUS_LOSS: mPausedByTransientLossOfFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V

    goto :goto_0

    .line 1743
    :pswitch_2
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_1

    .line 1744
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 1746
    :cond_1
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIOFOCUS_LOSS_TRANSIENT: mPausedByTransientLossOfFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V

    goto :goto_0

    .line 1751
    :pswitch_3
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIOFOCUS_GAIN: mPausedByTransientLossOfFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    if-eqz v2, :cond_0

    .line 1753
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 1754
    const/4 v1, 0x1

    .line 1755
    .local v1, bundleSize:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1756
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1757
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 1758
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "frequency"

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1759
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1735
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized updateAudioFocusAync(I)V
    .locals 6
    .parameter "focusState"

    .prologue
    .line 1720
    monitor-enter p0

    :try_start_0
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAudioFocusAync: focusState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const/4 v1, 0x1

    .line 1722
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1723
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "key_audiofocus_changed"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1724
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1725
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1726
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    monitor-exit p0

    return-void

    .line 1720
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleSize:I
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 1665
    return-void
.end method

.method public activeAFAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 954
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 955
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 956
    return-void
.end method

.method public getAudioChannelSetting()Z
    .locals 2

    .prologue
    .line 1134
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1136
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    goto :goto_0
.end method

.method public getCapArray()I
    .locals 2

    .prologue
    .line 1113
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readCapArray"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1115
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v0, -0x1

    .line 1118
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readCapArray()S

    move-result v0

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1047
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 1185
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 944
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 934
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsBler()I
    .locals 2

    .prologue
    .line 1173
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1175
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v0, -0x1

    .line 1178
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRdsBler()S

    move-result v0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 1125
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRssi"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1127
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 v0, -0x1

    .line 1130
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getSearchStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioService;->mSearchStationList:Ljava/util/List;

    return-object v0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 1502
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 3
    .parameter "iCurrentStation"

    .prologue
    .line 1026
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.initService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 1028
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    .line 1029
    return-void
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 446
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isDeviceOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method public isFmViaBt()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return v0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 688
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isPowerUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method public isPowerUping()Z
    .locals 3

    .prologue
    .line 699
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isPowerUping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    return v0
.end method

.method public isRDSSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1004
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->isRDSsupport()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1005
    .local v0, isRDSSupported:Z
    :goto_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return v0

    .line 1004
    .end local v0           #isRDSSupported:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    return v0
.end method

.method public isServiceInit()Z
    .locals 3

    .prologue
    .line 1037
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isServiceInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    return v0
.end method

.method public isShortAntennaSupport()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    return v0
.end method

.method public isSpeakerUsed()Z
    .locals 3

    .prologue
    .line 1015
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isEarphoneUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 226
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    .line 233
    .local v0, iCurrentStation:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 234
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Landroid/os/IBinder;

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1314
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1319
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1206
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1207
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    .line 1209
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1210
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1211
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v4, "FmRx/Service"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1212
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1213
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 1214
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1215
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1217
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const-string v5, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1233
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1234
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerMediaButton()V

    .line 1236
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "FmRadioServiceThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v2, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1238
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    .line 1241
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1242
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1243
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1244
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1245
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1246
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1257
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1258
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1259
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1260
    const-string v4, "FmRx/Service"

    const-string v5, "Register broadcast receiver."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1263
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->openDevice()Z

    .line 1270
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 1271
    const-string v4, "FmRx/Service"

    const-string v5, "<<< FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #handlerThread:Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1220
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1224
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1226
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1227
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1229
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 1230
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1276
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1279
    const-string v0, "FmRx/Service"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1283
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->abandonAudioFocus()V

    .line 1284
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->exitFM()V

    .line 1285
    const-string v0, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 1286
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 1287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1288
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x0

    .line 1342
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FMRadioService.onStartCommand intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 1344
    .local v1, iRet:I
    iput p3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mServiceStartId:I

    .line 1345
    if-nez p1, :cond_1

    .line 1346
    const-string v2, "FmRx/Service"

    const-string v3, "onStart intent == null"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    :goto_0
    return v1

    .line 1349
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1356
    const-string v2, "com.huawei.android.FMRadio.servicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1357
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->switchStation(Z)V

    goto :goto_0

    .line 1359
    :cond_2
    const-string v2, "com.huawei.android.FMRadio.servicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1360
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->switchStation(Z)V

    goto :goto_0

    .line 1362
    :cond_3
    const-string v2, "com.huawei.android.FMRadio.servicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1363
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->doStartOrStopFM()V

    goto :goto_0

    .line 1365
    :cond_4
    const-string v2, "com.huawei.android.FMRadio.servicecommand.intoapp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1366
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->intoApplication()V

    goto :goto_0

    .line 1368
    :cond_5
    const-string v2, "com.huawei.android.FMRadio.servicecommand.sleep_stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1369
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 1371
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->doStartOrStopFM()V

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 639
    const-string v2, "FmRx/Service"

    const-string v3, ">>> FMRadioService.powerDown"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v2, :cond_0

    .line 642
    const-string v1, "FmRx/Service"

    const-string v2, "Error: device is already power down."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :goto_0
    return v0

    .line 645
    :cond_0
    const-string v2, "com.huawei.android.FMRadio.stopfm"

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 647
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 648
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 649
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 651
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 652
    const-string v0, "FmRx/Service"

    const-string v2, "Error: powerdown failed."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v0, "com.huawei.android.FMRadio.operationfail"

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    move v0, v1

    .line 654
    goto :goto_0

    .line 656
    :cond_1
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 657
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setBtStatus(Z)Z

    .line 659
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 660
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmBroadcastOn(Z)V

    .line 661
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->setFromFind(Z)V

    .line 662
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmCurFrequency(I)V

    .line 663
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->> isFromFind = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->isFromFind()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->isFromFind()Z

    move-result v2

    if-nez v2, :cond_2

    .line 665
    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->changeSleepMode(Landroid/content/Context;ZJ)V

    .line 667
    :cond_2
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->setFromFind(Z)V

    .line 668
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 669
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 670
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 672
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V

    .line 673
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 674
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 675
    const-string v1, "FmRx/Service"

    const-string v2, "release wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_3
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FMRadioService.powerDown: true"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public powerDownAsync()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 630
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 631
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 632
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 633
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 635
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 636
    return-void
.end method

.method public powerUpAsync(F)V
    .locals 7
    .parameter "frequency"

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 516
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 517
    const/4 v1, 0x1

    .line 518
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 519
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 521
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 522
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 523
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 524
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method public registerFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 1785
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1788
    const/4 v3, 0x0

    .line 1789
    .local v3, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1790
    .local v0, hashCode:I
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1791
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .local v4, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1792
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1793
    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_2
    iget v5, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    if-ne v0, v5, :cond_0

    .line 1794
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1802
    :goto_1
    return-void

    .line 1791
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v4       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    goto :goto_0

    .line 1797
    :cond_1
    :try_start_3
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/mediatek/FMRadio/FMRadioService$Record;-><init>(Lcom/mediatek/FMRadio/FMRadioService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1798
    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_4
    iput v0, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    .line 1799
    iput-object p1, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mCallback:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 1800
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    monitor-exit v6

    goto :goto_1

    .end local v0           #hashCode:I
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v0       #hashCode:I
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v4       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    goto :goto_2
.end method

.method public requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1649
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    if-eqz v2, :cond_0

    .line 1656
    :goto_0
    return v1

    .line 1653
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1655
    .local v0, audioFocus:I
    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 1656
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    goto :goto_0

    .line 1655
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resumeFMAudio()V
    .locals 2

    .prologue
    .line 1065
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1069
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1071
    :cond_0
    return-void
.end method

.method public seekStationAsync(FZ)V
    .locals 5
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    const/16 v4, 0x10

    .line 766
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 767
    const/4 v1, 0x2

    .line 768
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 769
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 770
    const-string v3, "option"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 771
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 772
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 773
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 774
    return-void
.end method

.method public setAudioChannelAsync(Z)V
    .locals 5
    .parameter "isMono"

    .prologue
    const/4 v4, 0x6

    .line 1150
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1151
    const/4 v1, 0x1

    .line 1152
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1153
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1155
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1156
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1157
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .parameter "station"

    .prologue
    .line 1058
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I

    .line 1059
    return-void
.end method

.method public setMuteAsync(Z)V
    .locals 5
    .parameter "mute"

    .prologue
    const/4 v4, 0x7

    .line 977
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 978
    const/4 v1, 0x1

    .line 979
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 980
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 981
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 982
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 983
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 984
    return-void
.end method

.method public setRDSAsync(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x5

    .line 903
    const/4 v1, 0x1

    .line 904
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 905
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 906
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 907
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 908
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 909
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 910
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 3
    .parameter "isSpeaker"

    .prologue
    .line 360
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.useSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    .line 362
    const/4 v0, 0x5

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 363
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    .line 364
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->setSpeakerUsed(Z)V

    .line 365
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FMRadioService.useSpeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .parameter "isMono"

    .prologue
    .line 1514
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public startScanAsync()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 808
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 809
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 810
    return-void
.end method

.method public stopFMFocusLoss(I)V
    .locals 2
    .parameter "focusState"

    .prologue
    .line 1578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 1579
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    if-eqz v0, :cond_1

    .line 1582
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 1583
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so stop scan channel."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocusAync(I)V

    .line 1588
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so powerdown FM."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return-void
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 863
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FMRadioService.stopScan"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 866
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    .line 870
    :cond_0
    const/4 v0, 0x0

    .line 872
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 873
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 875
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_2

    .line 876
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 877
    const-string v1, "FmRx/Service"

    const-string v2, "native stop scan:start"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    move-result v0

    .line 879
    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V

    .line 880
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native stop scan:end --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_2
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchAntennaAsync(I)V
    .locals 5
    .parameter "antenna"

    .prologue
    const/4 v4, 0x4

    .line 1081
    const/4 v1, 0x1

    .line 1082
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1084
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1085
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "switch_anntenna_value"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1086
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1087
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1088
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1089
    return-void
.end method

.method public tuneStationAsync(F)V
    .locals 5
    .parameter "frequency"

    .prologue
    const/16 v4, 0xf

    .line 711
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 712
    const/4 v1, 0x1

    .line 713
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 714
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 715
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 716
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 717
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 718
    return-void
.end method

.method public unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1837
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->remove(I)V

    .line 1838
    return-void
.end method
