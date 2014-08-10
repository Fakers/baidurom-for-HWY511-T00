.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MODE_0_NONE:I = 0x0

.field public static final MODE_1_WG_GEMINI:I = 0x1

.field public static final MODE_2_TG_GEMINI:I = 0x2

.field public static final MODE_3_FDD_SINGLE:I = 0x3

.field public static final MODE_4_TDD_SINGLE:I = 0x4

.field public static final MODE_5_WGNTG_DUALTALK:I = 0x5

.field public static final MODE_6_TGNG_DUALTALK:I = 0x6

.field public static final MODE_7_WGNG_DUALTALK:I = 0x7

.field public static final MODE_8_GNG_DUALTALK:I = 0x8

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static final preferredCdmaSubscription:I = 0x1

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sExternalMD:I

.field private static sFirstMD:I

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;

.field private static sTelephonyMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 96
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 104
    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    .line 105
    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    .line 106
    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sExternalMD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalModemSlot()I
    .locals 2

    .prologue
    .line 201
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->sExternalMD:I

    if-gez v0, :cond_0

    .line 202
    const-string/jumbo v0, "ril.external.md"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PhoneFactory;->sExternalMD:I

    .line 203
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->sExternalMD:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getFirstMD()I
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    .line 180
    .local v0, telephonyMode:I
    packed-switch v0, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    return v1

    .line 182
    :pswitch_0
    sget v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    if-gez v1, :cond_0

    .line 183
    const-string/jumbo v1, "ril.first.md"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    goto :goto_0

    .line 189
    :pswitch_1
    const/4 v1, 0x1

    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    goto :goto_0

    .line 193
    :pswitch_2
    const/4 v1, 0x2

    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 1
    .parameter "networkMode"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public static getTelephonyMode()I
    .locals 1

    .prologue
    .line 169
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    if-gez v0, :cond_0

    .line 170
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    .line 171
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    return v0
.end method

.method public static isDualTalkMode()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public static isEVDODTSupport()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public static isFlightModePowerOffMD()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static isRadioOffPowerOffMD()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 116
    const-string/jumbo v0, "persist.radio.default_sim_mode"

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 1
    .parameter "sipUri"

    .prologue
    .line 153
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
