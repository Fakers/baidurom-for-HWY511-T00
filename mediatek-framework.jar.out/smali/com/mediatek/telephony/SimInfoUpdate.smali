.class public Lcom/mediatek/telephony/SimInfoUpdate;
.super Ljava/lang/Object;
.source "SimInfoUpdate.java"


# static fields
.field public static final ACTION_ON_SIM_DETECTED:Ljava/lang/String; = "ACTION_ON_SIM_DETECTED"

.field private static DEFAULTSIMSETTING_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String; = null

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_REPOSITION_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SIM_CHANGED:I = -0x1

.field static final SIM_NEW:I = -0x2

.field static final SIM_NOT_CHANGE:I = 0x0

.field static final SIM_NOT_INSERT:I = -0x63

.field static final SIM_REPOSITION:I = -0x3

.field private static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2

.field private static final STATUS_SIM3_INSERTED:I = 0x4

.field private static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mAllowShowNewSim:[Z

.field private static mContext:Landroid/content/Context;

.field private static mDetectType:Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mNewSimStatus:I

.field private static final mReceiver:Landroid/content/BroadcastReceiver;

.field private static mShowNewSimDetectedPending:Z

.field private static mSimCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.sim.operator.default-name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.sim.operator.default-name.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.sim.operator.default-name.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.sim.operator.default-name.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->DEFAULTSIMSETTING_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/mediatek/telephony/SimInfoUpdate$1;

    invoke-direct {v0}, Lcom/mediatek/telephony/SimInfoUpdate$1;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v2, "SimInfoUpdate constructor called"

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 128
    sput-object p1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    .line 129
    sput v3, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    .line 130
    sput v3, Lcom/mediatek/telephony/SimInfoUpdate;->mNewSimStatus:I

    .line 131
    const-string v2, ""

    sput-object v2, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    .line 143
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [I

    sput-object v2, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    .line 144
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 146
    sget-object v2, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    aput-boolean v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    sput-boolean v3, Lcom/mediatek/telephony/SimInfoUpdate;->mShowNewSimDetectedPending:Z

    .line 150
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHOW_NEW_SIM_DETECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "action_pin_dismiss"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    sget-object v2, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "constructor"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "Empty constructor called"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 122
    const/4 p1, 0x0

    .line 123
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->showSimDialog()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static broadcastNewSimDetected()V
    .locals 3

    .prologue
    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simDetectStatus"

    const-string v2, "NEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v1, "simCount"

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string v1, "newSIMSlot"

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mNewSimStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast intent ACTION_SIM_DETECTED [NEW, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mNewSimStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 495
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 496
    return-void
.end method

.method public static broadcastSetDefaultNameDone(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast intent ACTION_SIM_NAME_UPDATE for sim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public static broadcastSimInsertedStatus(I)V
    .locals 5
    .parameter "nSimInsertStatus"

    .prologue
    .line 630
    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    if-eqz v3, :cond_1

    .line 631
    const/4 v2, 0x1

    .line 632
    .local v2, simSlot:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v3, :cond_2

    .line 633
    and-int v3, p0, v2

    if-nez v3, :cond_0

    .line 634
    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[broadcastSimInsertedStatus] slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not inserted, mAllowShowNewSim["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 638
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0           #i:I
    .end local v2           #simSlot:I
    :cond_1
    const-string v3, "[broadcastSimInsertedStatus] mAllowShowNewSim not allocated"

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 643
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "simCount"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast intent ACTION_SIM_INSERTED_STATUS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 646
    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 647
    return-void
.end method

.method public static broadcastSimRemoved()V
    .locals 3

    .prologue
    .line 499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simDetectStatus"

    const-string v2, "REMOVE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "simCount"

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast intent ACTION_SIM_DETECTED [REMOVE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 503
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 504
    return-void
.end method

.method public static broadcastSimRepositioned()V
    .locals 3

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simDetectStatus"

    const-string v2, "SWAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v1, "simCount"

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast intent ACTION_SIM_DETECTED [SWAP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 511
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 512
    return-void
.end method

.method public static disposeReceiver()V
    .locals 2

    .prologue
    .line 651
    const-string v0, "[disposeReceiver]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 654
    return-void
.end method

.method private static isAllowedToShowSimDialog()Z
    .locals 3

    .prologue
    .line 515
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 516
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isAllowedToShowSimDialog] slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 518
    const/4 v1, 0x0

    .line 522
    :goto_1
    return v1

    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    const-string v1, "[isAllowedToShowSimDialog] all slots allowed"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isNewInsertedSim(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 4
    .parameter "iccId"
    .parameter "oldIccId"
    .parameter "simNum"

    .prologue
    .line 459
    const/4 v1, 0x1

    .line 460
    .local v1, isNewSim:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 461
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    const/4 v1, 0x0

    .line 466
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNewInsertedSim]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 467
    return v1

    .line 460
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 656
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimInfoUpdate]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method private static setColorForNewSim(Ljava/util/List;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 587
    if-nez p0, :cond_4

    const/4 v3, 0x0

    .line 588
    .local v3, nSimInsert:I
    :goto_0
    const/4 v1, 0x0

    .line 589
    .local v1, isNeedChangeColor:Z
    const/4 v4, -0x1

    .line 590
    .local v4, pivotSimColor:I
    const/4 v7, 0x4

    .line 591
    .local v7, totalColorNum:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setColorForNewSim] SIM num = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_7

    .line 593
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 594
    .local v5, pivotSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v5, :cond_3

    .line 596
    :cond_0
    const/4 v1, 0x0

    .line 597
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setColorForNewSim] i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " simId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " needChange:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 600
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v9, :cond_1

    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-lt v9, v7, :cond_5

    .line 602
    :cond_1
    iget-wide v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int v4, v9, v7

    .line 607
    :goto_2
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v0, :cond_2

    .line 608
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 609
    .local v6, tmpSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v6, :cond_6

    iget v9, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v9, :cond_6

    iget v9, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ge v9, v7, :cond_6

    iget v9, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ne v4, v9, :cond_6

    .line 611
    add-int/lit8 v9, v4, 0x1

    rem-int v4, v9, v7

    .line 612
    iput v4, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 613
    const/4 v1, 0x1

    .line 614
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setColorForNewSim] conflict slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " change slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to color "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 619
    .end local v6           #tmpSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    if-eq v1, v13, :cond_0

    .line 620
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 621
    .local v8, valueColor:Landroid/content/ContentValues;
    const-string v9, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    sget-object v9, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 624
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setColorForNewSim] set slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " SimInfoId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " color="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 592
    .end local v2           #j:I
    .end local v8           #valueColor:Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 587
    .end local v0           #i:I
    .end local v1           #isNeedChangeColor:Z
    .end local v3           #nSimInsert:I
    .end local v4           #pivotSimColor:I
    .end local v5           #pivotSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v7           #totalColorNum:I
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto/16 :goto_0

    .line 604
    .restart local v0       #i:I
    .restart local v1       #isNeedChangeColor:Z
    .restart local v3       #nSimInsert:I
    .restart local v4       #pivotSimColor:I
    .restart local v5       #pivotSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v7       #totalColorNum:I
    :cond_5
    iget v4, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto/16 :goto_2

    .line 607
    .restart local v2       #j:I
    .restart local v6       #tmpSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 627
    .end local v2           #j:I
    .end local v5           #pivotSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v6           #tmpSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_7
    return-void
.end method

.method private static setDefaultNameForAllNewSim(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 528
    .local v1, nSimCount:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultNameForAllNewSim] nSimCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 530
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 531
    .local v2, temp:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultNameForAllNewSim] set default name for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 533
    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    iget-wide v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/telephony/SimInfoManager;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 529
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    .end local v0           #i:I
    .end local v1           #nSimCount:I
    .end local v2           #temp:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 536
    .restart local v0       #i:I
    .restart local v1       #nSimCount:I
    :cond_2
    return-void
.end method

.method public static setDefaultNameForNewSim(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "strName"
    .parameter "slot"

    .prologue
    .line 557
    const-wide/16 v4, 0x1

    .line 559
    .local v4, nameSource:J
    if-nez p1, :cond_0

    .line 560
    const-wide/16 v4, 0x0

    .line 562
    :cond_0
    invoke-static {p0, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v9

    .line 563
    .local v9, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v9, :cond_2

    .line 566
    iget v0, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNameSource:I

    int-to-long v6, v0

    .line 567
    .local v6, oriNameSource:J
    iget-object v8, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 568
    .local v8, simDisplayName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDefaultNameForNewSim] SimInfo simId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simDisplayName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oriNameSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NewNameSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 570
    if-eqz v8, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 572
    :cond_1
    iget-wide v1, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/mediatek/telephony/SimInfoManager;->setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I

    .line 573
    invoke-static {p2}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastSetDefaultNameDone(I)V

    .line 576
    .end local v6           #oriNameSource:J
    .end local v8           #simDisplayName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 540
    .local v1, nSimCount:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultNameIfImsiReadyOrLocked] nSimCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 541
    const/4 v2, 0x0

    .line 542
    .local v2, operatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 543
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 544
    .local v3, temp:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultNameIfImsiReadyOrLocked] the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th mDisplayName is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 546
    sget-object v4, Lcom/mediatek/telephony/SimInfoUpdate;->DEFAULTSIMSETTING_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    iget v5, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultNameIfImsiReadyOrLocked] operatorName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 548
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 549
    sget-object v4, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    iget-wide v5, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v4, v5, v6, v2}, Lcom/mediatek/telephony/SimInfoManager;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 542
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 539
    .end local v0           #i:I
    .end local v1           #nSimCount:I
    .end local v2           #operatorName:Ljava/lang/String;
    .end local v3           #temp:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 553
    .restart local v0       #i:I
    .restart local v1       #nSimCount:I
    .restart local v2       #operatorName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static setUpdatedData(Ljava/lang/String;II)V
    .locals 2
    .parameter "detectedType"
    .parameter "simCount"
    .parameter "newSimStatus"

    .prologue
    .line 471
    sput-object p0, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    .line 472
    sput p1, Lcom/mediatek/telephony/SimInfoUpdate;->mSimCount:I

    .line 473
    sput p2, Lcom/mediatek/telephony/SimInfoUpdate;->mNewSimStatus:I

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUpdatedData] mShowNewSimDetectedPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/telephony/SimInfoUpdate;->mShowNewSimDetectedPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->isAllowedToShowSimDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    sget-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    const-string v1, "NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastNewSimDetected()V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    const-string v1, "SWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastSimRepositioned()V

    goto :goto_0

    .line 480
    :cond_2
    sget-object v0, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastSimRemoved()V

    goto :goto_0

    .line 484
    :cond_3
    const-string v0, "[setUpdatedData] Update complete, wait for AllowShowNewSim[], mShowNewSimDetectedPending=true"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/telephony/SimInfoUpdate;->mShowNewSimDetectedPending:Z

    goto :goto_0
.end method

.method private static showSimDialog()V
    .locals 4

    .prologue
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showSimDialog] mShowNewSimDetectedPending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/telephony/SimInfoUpdate;->mShowNewSimDetectedPending:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showSimDialog] mAllowShowNewSim["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mAllowShowNewSim:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    sget-boolean v2, Lcom/mediatek/telephony/SimInfoUpdate;->mShowNewSimDetectedPending:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->isAllowedToShowSimDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    sget-object v2, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, intentFilter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showSimDialog] mDetectType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 173
    const-string v2, "NEW"

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastNewSimDetected()V

    .line 180
    :cond_1
    :goto_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/mediatek/telephony/SimInfoUpdate;->mShowNewSimDetectedPending:Z

    .line 182
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    return-void

    .line 175
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    const-string v2, "SWAP"

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastSimRepositioned()V

    goto :goto_1

    .line 177
    :cond_4
    const-string v2, "REMOVE"

    sget-object v3, Lcom/mediatek/telephony/SimInfoUpdate;->mDetectType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastSimRemoved()V

    goto :goto_1
.end method

.method public static declared-synchronized updateSimInfoByIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 23
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"
    .parameter "is3GSwitched"

    .prologue
    .line 254
    const-class v22, Lcom/mediatek/telephony/SimInfoUpdate;

    monitor-enter v22

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, ""

    .line 255
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 256
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 257
    :cond_2
    if-nez p3, :cond_3

    const-string p3, ""

    .line 258
    :cond_3
    const/4 v1, 0x4

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v13, v1

    const/4 v1, 0x1

    aput-object p1, v13, v1

    const/4 v1, 0x2

    aput-object p2, v13, v1

    const/4 v1, 0x3

    aput-object p3, v13, v1

    .line 259
    .local v13, iccId:[Ljava/lang/String;
    const-string v1, "[updateSimInfoByIccId] Start"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 260
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 261
    const-string v1, "[updateSimInfoByIccId] SimInfoUpdate contructor not called!!!"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :goto_0
    monitor-exit v22

    return-void

    .line 264
    :cond_4
    :try_start_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v5, v1, [Z

    .line 265
    .local v5, isSimInserted:[Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_7

    .line 266
    aget-object v1, v13, v12

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_2
    aput-object v1, v13, v12

    .line 267
    const-string v1, ""

    aget-object v8, v13, v12

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    aput-boolean v1, v5, v12

    .line 265
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 266
    :cond_5
    aget-object v1, v13, v12

    goto :goto_2

    .line 267
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 269
    :cond_7
    const/4 v12, 0x0

    :goto_4
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_8

    .line 270
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    const/4 v8, 0x0

    aput v8, v1, v12

    .line 269
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 273
    :cond_8
    const/4 v14, 0x0

    .line 274
    .local v14, index:I
    const/4 v12, 0x0

    :goto_5
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_c

    .line 275
    aget-boolean v1, v5, v12

    if-nez v1, :cond_a

    .line 276
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    const/16 v8, -0x63

    aput v8, v1, v12

    .line 274
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 279
    :cond_a
    const/4 v14, 0x2

    .line 280
    add-int/lit8 v16, v12, 0x1

    .local v16, j:I
    :goto_6
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v16

    if-ge v0, v1, :cond_9

    .line 281
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v16

    if-nez v1, :cond_b

    aget-object v1, v13, v12

    aget-object v8, v13, v16

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 283
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    const/4 v8, 0x1

    aput v8, v1, v12

    .line 284
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aput v14, v1, v16

    .line 285
    add-int/lit8 v14, v14, 0x1

    .line 280
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 289
    .end local v16           #j:I
    :cond_c
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 290
    .local v2, contentResolver:Landroid/content/ContentResolver;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 291
    .local v18, oldIccIdInSlot:[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_7
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_11

    .line 292
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v19

    .line 293
    .local v19, oldSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v19, :cond_f

    .line 294
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    aput-object v1, v18, v12

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] Old IccId in slot"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v18, v12

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " oldSimId:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 297
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    if-nez v1, :cond_d

    aget-object v1, v13, v12

    aget-object v8, v18, v12

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 298
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    const/4 v8, -0x1

    aput v8, v1, v12

    .line 300
    :cond_d
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    if-eqz v1, :cond_e

    .line 301
    new-instance v21, Landroid/content/ContentValues;

    const/4 v1, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 302
    .local v21, value:Landroid/content/ContentValues;
    const-string v1, "slot"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v1, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] Reset slot"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " to -1, iccId["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]= "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v13, v12

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 291
    .end local v21           #value:Landroid/content/ContentValues;
    :cond_e
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 308
    :cond_f
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    if-nez v1, :cond_10

    .line 310
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    const/4 v8, -0x1

    aput v8, v1, v12

    .line 312
    :cond_10
    const-string v1, ""

    aput-object v1, v18, v12

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] No SIM in slot "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " for last time"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 254
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    .end local v5           #isSimInserted:[Z
    .end local v12           #i:I
    .end local v13           #iccId:[Ljava/lang/String;
    .end local v14           #index:I
    .end local v18           #oldIccIdInSlot:[Ljava/lang/String;
    .end local v19           #oldSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :catchall_0
    move-exception v1

    monitor-exit v22

    throw v1

    .line 318
    .restart local v2       #contentResolver:Landroid/content/ContentResolver;
    .restart local v5       #isSimInserted:[Z
    .restart local v12       #i:I
    .restart local v13       #iccId:[Ljava/lang/String;
    .restart local v14       #index:I
    .restart local v18       #oldIccIdInSlot:[Ljava/lang/String;
    :cond_11
    const/4 v6, 0x0

    .line 319
    .local v6, nNewCardCount:I
    const/16 v17, 0x0

    .line 320
    .local v17, nNewSimStatus:I
    const/4 v12, 0x0

    :goto_9
    :try_start_2
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_16

    .line 321
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    const/16 v8, -0x63

    if-ne v1, v8, :cond_13

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] No SIM inserted in slot "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " this time"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 320
    :cond_12
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 324
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] iccId["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "] : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v13, v12

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", oldIccIdInSlot["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "] : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v18, v12

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 325
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    if-lez v1, :cond_15

    .line 328
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v13, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v9, v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v12}, Lcom/mediatek/telephony/SimInfoManager;->insertIccId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] Special SIM with invalid IccId is inserted in slot"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 333
    :cond_14
    :goto_b
    aget-object v1, v13, v12

    sget v8, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-object/from16 v0, v18

    invoke-static {v1, v0, v8}, Lcom/mediatek/telephony/SimInfoUpdate;->isNewInsertedSim(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 335
    add-int/lit8 v6, v6, 0x1

    .line 336
    packed-switch v12, :pswitch_data_0

    .line 351
    :goto_c
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    const/4 v8, -0x2

    aput v8, v1, v12

    goto/16 :goto_a

    .line 330
    :cond_15
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    const/4 v8, -0x1

    if-ne v1, v8, :cond_14

    .line 331
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    aget-object v8, v13, v12

    invoke-static {v1, v8, v12}, Lcom/mediatek/telephony/SimInfoManager;->insertIccId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_b

    .line 338
    :pswitch_0
    or-int/lit8 v17, v17, 0x1

    .line 339
    goto :goto_c

    .line 341
    :pswitch_1
    or-int/lit8 v17, v17, 0x2

    .line 342
    goto :goto_c

    .line 344
    :pswitch_2
    or-int/lit8 v17, v17, 0x4

    .line 345
    goto :goto_c

    .line 347
    :pswitch_3
    or-int/lit8 v17, v17, 0x8

    goto :goto_c

    .line 356
    :cond_16
    const/4 v12, 0x0

    :goto_d
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_18

    .line 357
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    const/4 v8, -0x1

    if-ne v1, v8, :cond_17

    .line 358
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    const/4 v8, -0x3

    aput v8, v1, v12

    .line 356
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 362
    :cond_18
    const/4 v1, 0x4

    new-array v4, v1, [J

    fill-array-data v4, :array_0

    .line 363
    .local v4, simIdInSlot:[J
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 364
    .local v3, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez v3, :cond_19

    const/4 v7, 0x0

    .line 365
    .local v7, nSimCount:I
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] nSimCount = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 366
    const/4 v12, 0x0

    :goto_f
    if-ge v12, v7, :cond_1a

    .line 367
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 368
    .local v20, temp:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object/from16 v0, v20

    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    aput-wide v8, v4, v1

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] simIdInSlot["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    iget v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "] = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 366
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 364
    .end local v7           #nSimCount:I
    .end local v20           #temp:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_e

    .line 372
    .restart local v7       #nSimCount:I
    :cond_1a
    if-lez v6, :cond_1b

    .line 373
    const-string v1, "[updateSimInfoByIccId] New SIM detected"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 374
    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->setColorForNewSim(Ljava/util/List;)V

    .line 375
    const-string v1, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v2, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 376
    .local v11, airplaneMode:I
    if-lez v11, :cond_20

    .line 377
    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->setDefaultNameForAllNewSim(Ljava/util/List;)V

    .line 383
    .end local v11           #airplaneMode:I
    :cond_1b
    :goto_10
    const/4 v10, 0x0

    .line 384
    .local v10, hasSimRemoved:Z
    const/4 v12, 0x0

    :goto_11
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_1c

    .line 385
    aget-boolean v1, v5, v12

    if-nez v1, :cond_21

    aget-object v1, v18, v12

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 386
    const/4 v10, 0x1

    .line 390
    :cond_1c
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_22

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] oldIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newCardCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; hasSimRemoved: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; nSimCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 407
    :cond_1d
    :goto_12
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    move/from16 v8, p4

    invoke-static/range {v1 .. v10}, Lcom/mediatek/telephony/DefaultSimSettings;->setAllDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[J[ZIIZ[IZ)V

    .line 410
    if-nez v6, :cond_29

    .line 412
    if-eqz v10, :cond_26

    .line 414
    const/4 v12, 0x0

    :goto_13
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_1e

    .line 415
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    const/4 v8, -0x3

    if-ne v1, v8, :cond_25

    .line 416
    const-string v1, "[updateSimInfoByIccId] No new SIM detected and SIM repositioned"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 417
    const-string v1, "SWAP"

    move/from16 v0, v17

    invoke-static {v1, v7, v0}, Lcom/mediatek/telephony/SimInfoUpdate;->setUpdatedData(Ljava/lang/String;II)V

    .line 421
    :cond_1e
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v12, v1, :cond_1f

    .line 423
    const-string v1, "[updateSimInfoByIccId] No new SIM detected and SIM removed"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 424
    const-string v1, "REMOVE"

    move/from16 v0, v17

    invoke-static {v1, v7, v0}, Lcom/mediatek/telephony/SimInfoUpdate;->setUpdatedData(Ljava/lang/String;II)V

    .line 446
    :cond_1f
    :goto_14
    const/4 v12, 0x0

    :goto_15
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_2a

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] mInsertSimState["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "] = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v8, v8, v12

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 446
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    .line 379
    .end local v10           #hasSimRemoved:Z
    .restart local v11       #airplaneMode:I
    :cond_20
    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoUpdate;->setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;)V

    goto/16 :goto_10

    .line 384
    .end local v11           #airplaneMode:I
    .restart local v10       #hasSimRemoved:Z
    :cond_21
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_11

    .line 393
    :cond_22
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_23

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] oldIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x1

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newCardCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; hasSimRemoved: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; nSimCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 397
    :cond_23
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v8, 0x3

    if-ne v1, v8, :cond_24

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] oldIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x1

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x2

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x2

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newCardCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; hasSimRemoved: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; nSimCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 401
    :cond_24
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v8, 0x4

    if-ne v1, v8, :cond_1d

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] oldIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x1

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x2

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x3

    aget-object v8, v18, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newIccId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x2

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x3

    aget-object v8, v13, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; newCardCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; hasSimRemoved: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; nSimCount: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 414
    :cond_25
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_13

    .line 428
    :cond_26
    const/4 v12, 0x0

    :goto_16
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v12, v1, :cond_27

    .line 429
    sget-object v1, Lcom/mediatek/telephony/SimInfoUpdate;->mInsertSimState:[I

    aget v1, v1, v12

    const/4 v8, -0x3

    if-ne v1, v8, :cond_28

    .line 430
    const-string v1, "[updateSimInfoByIccId] No new SIM detected and SIM repositioned"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 431
    const-string v1, "SWAP"

    move/from16 v0, v17

    invoke-static {v1, v7, v0}, Lcom/mediatek/telephony/SimInfoUpdate;->setUpdatedData(Ljava/lang/String;II)V

    .line 435
    :cond_27
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v12, v1, :cond_1f

    .line 437
    const-string v1, "[updateSimInfoByIccId] All SIM inserted into the same slot"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 428
    :cond_28
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 441
    :cond_29
    const-string v1, "[updateSimInfoByIccId] New SIM detected"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 442
    const-string v1, "NEW"

    move/from16 v0, v17

    invoke-static {v1, v7, v0}, Lcom/mediatek/telephony/SimInfoUpdate;->setUpdatedData(Ljava/lang/String;II)V

    goto/16 :goto_14

    .line 450
    :cond_2a
    const-string v1, "gsm.siminfo.ready"

    const-string v8, "true"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateSimInfoByIccId] updateSimInfoByIccId PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "gsm.siminfo.ready"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 453
    new-instance v15, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v15, intent:Landroid/content/Intent;
    const-string v1, "[updateSimInfoByIccId] broadcast intent ACTION_SIM_INFO_UPDATE"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V

    .line 455
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v8, -0x1

    invoke-static {v15, v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 362
    :array_0
    .array-data 0x8
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
