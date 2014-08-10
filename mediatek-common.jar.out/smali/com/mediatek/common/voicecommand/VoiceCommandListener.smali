.class public abstract Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.super Ljava/lang/Object;
.source "VoiceCommandListener.java"


# static fields
.field private static final ACTION_COMMON:I = 0x1

.field public static final ACTION_EXTRA_RESULT:Ljava/lang/String; = "Result"

.field public static final ACTION_EXTRA_RESULT_ERROR:I = 0xa

.field public static final ACTION_EXTRA_RESULT_INFO:Ljava/lang/String; = "Result_Info"

.field public static final ACTION_EXTRA_RESULT_INFO1:Ljava/lang/String; = "Reslut_INfo1"

.field public static final ACTION_EXTRA_RESULT_SUCCESS:I = 0x1

.field public static final ACTION_EXTRA_SEND:Ljava/lang/String; = "Send"

.field public static final ACTION_EXTRA_SEND_INFO:Ljava/lang/String; = "Send_Info"

.field public static final ACTION_EXTRA_SEND_INFO1:Ljava/lang/String; = "Send_Info1"

.field public static final ACTION_MAIN_VOICE_COMMON:I = 0x1

.field public static final ACTION_MAIN_VOICE_RECOGNIZE:I = 0x4

.field public static final ACTION_MAIN_VOICE_SETTING:I = 0x5

.field public static final ACTION_MAIN_VOICE_TRAINING:I = 0x3

.field public static final ACTION_MAIN_VOICE_UI:I = 0x2

.field public static final ACTION_MAIN_VOICE_UNREGISTER:I = 0x6

.field public static final ACTION_VOICE_COMMON_KEYWORD:I = 0x1

.field public static final ACTION_VOICE_COMMON_PROCSTATE:I = 0x2

.field public static final ACTION_VOICE_RECOGNIZE_INTENSITY:I = 0x2

.field public static final ACTION_VOICE_RECOGNIZE_NOTIFY:I = 0x3

.field public static final ACTION_VOICE_RECOGNIZE_START:I = 0x1

.field public static final ACTION_VOICE_SETTING_KEYWORDPATH:I = 0x5

.field public static final ACTION_VOICE_SETTING_LANGUAGELIST:I = 0x3

.field public static final ACTION_VOICE_SETTING_LANGUAGEUPDATE:I = 0x4

.field public static final ACTION_VOICE_SETTING_PROCESSLIST:I = 0x1

.field public static final ACTION_VOICE_SETTING_PROCESSUPATE:I = 0x2

.field public static final ACTION_VOICE_SETTING_PROCESSUPATEALL:I = 0x6

.field public static final ACTION_VOICE_TRAINING_INTENSITY:I = 0x3

.field public static final ACTION_VOICE_TRAINING_NOTIFY:I = 0x5

.field public static final ACTION_VOICE_TRAINING_PSWDFILE:I = 0x4

.field public static final ACTION_VOICE_TRAINING_RESET:I = 0x6

.field public static final ACTION_VOICE_TRAINING_START:I = 0x1

.field public static final ACTION_VOICE_TRAINING_STOP:I = 0x2

.field public static final ACTION_VOICE_UI_DISALBE:I = 0x4

.field public static final ACTION_VOICE_UI_ENABLE:I = 0x3

.field public static final ACTION_VOICE_UI_NOTIFY:I = 0x5

.field public static final ACTION_VOICE_UI_START:I = 0x1

.field public static final ACTION_VOICE_UI_STOP:I = 0x2

.field public static final VOICE_COMMAND_SERVICE:Ljava/lang/String; = "voicecommand"

.field private static final VOICE_ERROR_COMMON:I = 0x3e8

.field public static final VOICE_ERROR_COMMON_ILLEGALPROCESS:I = 0x3ed

.field public static final VOICE_ERROR_COMMON_INVALIDACTION:I = 0x3ef

.field public static final VOICE_ERROR_COMMON_INVALIDDATA:I = 0x3f0

.field public static final VOICE_ERROR_COMMON_NOTIFYFAIL:I = 0x3f1

.field public static final VOICE_ERROR_COMMON_PERMISSION:I = 0x3ea

.field public static final VOICE_ERROR_COMMON_PROCESSOFF:I = 0x3e9

.field public static final VOICE_ERROR_COMMON_REGISTERED:I = 0x3eb

.field public static final VOICE_ERROR_COMMON_SERVICE:I = 0x3ee

.field public static final VOICE_ERROR_COMMON_UNREGISTER:I = 0x3ec

.field private static final VOICE_ERROR_RECOGNIZE:I = 0x0

.field public static final VOICE_ERROR_RECOGNIZE_DENIED:I = 0x1

.field public static final VOICE_ERROR_RECOGNIZE_LOWLY:I = 0x3

.field public static final VOICE_ERROR_RECOGNIZE_NOISY:I = 0x2

.field private static final VOICE_ERROR_SETTING:I = 0xc8

.field public static final VOICE_ERROR_SETTING_LANGUAGE_GET:I = 0xcb

.field public static final VOICE_ERROR_SETTING_LANGUAGE_UPDATE:I = 0xcc

.field public static final VOICE_ERROR_SETTING_PROCESS_GET:I = 0xc9

.field public static final VOICE_ERROR_SETTING_PROCESS_UPDATE:I = 0xca

.field private static final VOICE_ERROR_TRAINING:I = 0x64

.field public static final VOICE_ERROR_TRAINING_NOISY:I = 0x66

.field public static final VOICE_ERROR_TRAINING_NOT_ENOUGH:I = 0x65

.field public static final VOICE_ERROR_TRAINING_PASSWORD_DIFF:I = 0x67

.field public static final VOICE_ERROR_TRAINING_PASSWORD_EXIST:I = 0x68

.field private static final VOICE_ERROR_UI:I = 0x12c

.field public static final VOICE_ERROR_UI_INVALID:I = 0x12d

.field public static final VOICE_NO_ERROR:I


# instance fields
.field private mCurContext:Landroid/content/Context;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->mPkgName:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->mCurContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->mPkgName:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->mPkgName:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->mCurContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onVoiceCommandNotified(IILandroid/os/Bundle;)V
.end method
