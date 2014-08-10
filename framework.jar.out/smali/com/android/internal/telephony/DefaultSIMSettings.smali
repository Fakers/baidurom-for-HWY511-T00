.class public Lcom/android/internal/telephony/DefaultSIMSettings;
.super Ljava/lang/Object;
.source "DefaultSIMSettings.java"


# static fields
.field public static final ACTION_ON_SIM_DETECTED:Ljava/lang/String; = "ACTION_ON_SIM_DETECTED"

.field private static DEFAULTSIMSETTING_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String; = null

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_QUAD_SIM_INSERTED:I = 0xf

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2

.field private static final STATUS_SIM3_INSERTED:I = 0x4

.field private static final STATUS_SIM4_INSERTED:I = 0x8

.field protected static final STATUS_TRIPLE_SIM_INSERTED:I = 0x7

.field private static mInsertSimState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
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

    sput-object v0, Lcom/android/internal/telephony/DefaultSIMSettings;->DEFAULTSIMSETTING_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastDefaultSIMRemoved(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "REMOVE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [REMOVE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 679
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 680
    return-void
.end method

.method public static broadCastNewSIMDetected(II)V
    .locals 3
    .parameter "nSIMCount"
    .parameter "nNewSIMSlot"

    .prologue
    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "NEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    const-string/jumbo v1, "newSIMSlot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [NEW, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 671
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 672
    return-void
.end method

.method public static broadCastSIMInsertedStatus(I)V
    .locals 3
    .parameter "nSIMInsertStatus"

    .prologue
    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_INSERTED_STATUS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 694
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 695
    return-void
.end method

.method public static broadCastSIMSwapped(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 683
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "SWAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [SWAP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 687
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 688
    return-void
.end method

.method static get3GSimId()I
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method private static isNewSimInserted(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 4
    .parameter "iccId"
    .parameter "oldIccId"
    .parameter "numSIM"

    .prologue
    .line 629
    const/4 v1, 0x1

    .line 630
    .local v1, isNewSim:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 631
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    const/4 v1, 0x0

    .line 636
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNewSimInserted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 637
    return v1

    .line 630
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isSIMRemoved(J[JI)Z
    .locals 4
    .parameter "defSimId"
    .parameter "curSim"
    .parameter "numSim"

    .prologue
    .line 642
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 643
    const/4 v1, 0x0

    .line 654
    :cond_0
    :goto_0
    return v1

    .line 646
    :cond_1
    const/4 v1, 0x1

    .line 647
    .local v1, isDefaultSimRemoved:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 649
    aget-wide v2, p2, v0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 650
    const/4 v1, 0x0

    .line 651
    goto :goto_0

    .line 647
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 710
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSIMSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method public static declared-synchronized onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 53
    .parameter "context"
    .parameter "phone"
    .parameter "iccid1"
    .parameter "iccid2"
    .parameter "iccid3"
    .parameter "iccid4"
    .parameter "is3GSwitched"

    .prologue
    .line 103
    const-class v50, Lcom/android/internal/telephony/DefaultSIMSettings;

    monitor-enter v50

    :try_start_0
    const-string/jumbo v49, "onAllIccidQueryComplete start"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 104
    if-nez p2, :cond_0

    const-string p2, ""

    .line 105
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 106
    :cond_1
    if-nez p4, :cond_2

    const-string p4, ""

    .line 107
    :cond_2
    if-nez p5, :cond_3

    const-string p5, ""

    .line 108
    :cond_3
    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v49, 0x0

    aput-object p2, v22, v49

    const/16 v49, 0x1

    aput-object p3, v22, v49

    const/16 v49, 0x2

    aput-object p4, v22, v49

    const/16 v49, 0x3

    aput-object p5, v22, v49

    .line 109
    .local v22, iccId:[Ljava/lang/String;
    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Z

    move-object/from16 v25, v0

    const/16 v51, 0x0

    const-string v49, ""

    const/16 v52, 0x0

    aget-object v52, v22, v52

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_4

    const/16 v49, 0x1

    :goto_0
    aput-boolean v49, v25, v51

    const/16 v51, 0x1

    const-string v49, ""

    const/16 v52, 0x1

    aget-object v52, v22, v52

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_5

    const/16 v49, 0x1

    :goto_1
    aput-boolean v49, v25, v51

    const/16 v51, 0x2

    const-string v49, ""

    const/16 v52, 0x2

    aget-object v52, v22, v52

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_6

    const/16 v49, 0x1

    :goto_2
    aput-boolean v49, v25, v51

    const/16 v51, 0x3

    const-string v49, ""

    const/16 v52, 0x3

    aget-object v52, v22, v52

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_7

    const/16 v49, 0x1

    :goto_3
    aput-boolean v49, v25, v51

    .line 111
    .local v25, isSIMInserted:[Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 112
    .local v11, contentResolver:Landroid/content/ContentResolver;
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    .line 113
    .local v33, oldIccIdInSlot:[Ljava/lang/String;
    const-string/jumbo v49, "phone"

    invoke-static/range {v49 .. v49}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 115
    .local v21, iTelephony:Lcom/android/internal/telephony/ITelephony;
    const/16 v46, 0x0

    .line 117
    .local v46, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_start_1
    const-class v49, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/16 v51, 0x0

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v49

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v46, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :goto_4
    const/16 v23, 0x0

    .line 134
    .local v23, index:I
    const/4 v6, 0x0

    .line 135
    .local v6, SIM_NOT_CHANGE:I
    const/4 v4, -0x1

    .line 136
    .local v4, SIM_CHANGED:I
    const/4 v5, -0x2

    .line 137
    .local v5, SIM_NEW:I
    const/4 v8, -0x3

    .line 138
    .local v8, SIM_REPOSITION:I
    const/16 v7, -0x63

    .line 139
    .local v7, SIM_NOT_INSERT:I
    :try_start_2
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v49

    new-array v0, v0, [I

    move-object/from16 v49, v0

    sput-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    .line 141
    const/16 v20, 0x0

    .local v20, i:I
    :goto_5
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_8

    .line 142
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aput v6, v49, v20

    .line 141
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 109
    .end local v4           #SIM_CHANGED:I
    .end local v5           #SIM_NEW:I
    .end local v6           #SIM_NOT_CHANGE:I
    .end local v7           #SIM_NOT_INSERT:I
    .end local v8           #SIM_REPOSITION:I
    .end local v11           #contentResolver:Landroid/content/ContentResolver;
    .end local v20           #i:I
    .end local v21           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v23           #index:I
    .end local v25           #isSIMInserted:[Z
    .end local v33           #oldIccIdInSlot:[Ljava/lang/String;
    .end local v46           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :cond_4
    const/16 v49, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v49, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v49, 0x0

    goto :goto_2

    :cond_7
    const/16 v49, 0x0

    goto :goto_3

    .line 118
    .restart local v11       #contentResolver:Landroid/content/ContentResolver;
    .restart local v21       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v25       #isSIMInserted:[Z
    .restart local v33       #oldIccIdInSlot:[Ljava/lang/String;
    .restart local v46       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :catch_0
    move-exception v16

    .line 119
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 103
    .end local v11           #contentResolver:Landroid/content/ContentResolver;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v21           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v22           #iccId:[Ljava/lang/String;
    .end local v25           #isSIMInserted:[Z
    .end local v33           #oldIccIdInSlot:[Ljava/lang/String;
    .end local v46           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :catchall_0
    move-exception v49

    monitor-exit v50

    throw v49

    .line 145
    .restart local v4       #SIM_CHANGED:I
    .restart local v5       #SIM_NEW:I
    .restart local v6       #SIM_NOT_CHANGE:I
    .restart local v7       #SIM_NOT_INSERT:I
    .restart local v8       #SIM_REPOSITION:I
    .restart local v11       #contentResolver:Landroid/content/ContentResolver;
    .restart local v20       #i:I
    .restart local v21       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v22       #iccId:[Ljava/lang/String;
    .restart local v23       #index:I
    .restart local v25       #isSIMInserted:[Z
    .restart local v33       #oldIccIdInSlot:[Ljava/lang/String;
    .restart local v46       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :cond_8
    const/16 v20, 0x0

    :goto_6
    :try_start_3
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_d

    .line 146
    aget-object v49, v22, v20

    if-eqz v49, :cond_9

    aget-object v49, v22, v20

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_b

    .line 147
    :cond_9
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aput v7, v49, v20

    .line 145
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 150
    :cond_b
    const/16 v23, 0x2

    .line 151
    add-int/lit8 v27, v20, 0x1

    .local v27, j:I
    :goto_7
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v27

    move/from16 v1, v49

    if-ge v0, v1, :cond_a

    .line 152
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v27

    move/from16 v0, v49

    if-ne v0, v6, :cond_c

    aget-object v49, v22, v20

    aget-object v51, v22, v27

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_c

    .line 154
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    const/16 v51, 0x1

    aput v51, v49, v20

    .line 155
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aput v23, v49, v27

    .line 156
    add-int/lit8 v23, v23, 0x1

    .line 151
    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 160
    .end local v27           #j:I
    :cond_d
    const/16 v20, 0x0

    :goto_8
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_12

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v34

    .line 162
    .local v34, oldSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v34, :cond_10

    .line 163
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    move-object/from16 v49, v0

    aput-object v49, v33, v20

    .line 164
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "old IccId In Slot"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, " is "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    aget-object v51, v33, v20

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, " oldSimId:"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v51, v0

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 166
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-ne v0, v6, :cond_e

    aget-object v49, v22, v20

    aget-object v51, v33, v20

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_e

    .line 167
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aput v4, v49, v20

    .line 169
    :cond_e
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-eq v0, v6, :cond_f

    .line 170
    new-instance v48, Landroid/content/ContentValues;

    const/16 v49, 0x1

    invoke-direct/range {v48 .. v49}, Landroid/content/ContentValues;-><init>(I)V

    .line 171
    .local v48, value:Landroid/content/ContentValues;
    const-string/jumbo v49, "slot"

    const/16 v51, -0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    sget-object v49, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v51, v0

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v49

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "reset Slot"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, " to -1, iccId[ "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "]= "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    aget-object v51, v22, v20

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 160
    .end local v48           #value:Landroid/content/ContentValues;
    :cond_f
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 177
    :cond_10
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-ne v0, v6, :cond_11

    .line 179
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aput v4, v49, v20

    .line 181
    :cond_11
    const-string v49, ""

    aput-object v49, v33, v20

    .line 182
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "No sim in slot "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, " for last time"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_9

    .line 187
    .end local v34           #oldSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_12
    const/16 v28, 0x0

    .line 188
    .local v28, nNewCardCount:I
    const/16 v29, 0x0

    .line 190
    .local v29, nNewSIMStatus:I
    const/16 v20, 0x0

    :goto_a
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_17

    .line 191
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-ne v0, v7, :cond_14

    .line 192
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "No SIM inserted in Slot "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", set the slot for Removed SIM to NONE "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 190
    :cond_13
    :goto_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 194
    :cond_14
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "iccId[ "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "] : "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    aget-object v51, v22, v20

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", oldIccIdInSlot["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "] : "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    aget-object v51, v33, v20

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 195
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    if-lez v49, :cond_16

    .line 198
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v51, v22, v20

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    sget-object v51, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v51, v51, v20

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 199
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "special SIM with invalid ICCID is inserted in slot"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 204
    :cond_15
    :goto_c
    aget-object v49, v22, v20

    sget v51, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-object/from16 v0, v49

    move-object/from16 v1, v33

    move/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->isNewSimInserted(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v49

    if-eqz v49, :cond_13

    .line 206
    add-int/lit8 v28, v28, 0x1

    .line 207
    packed-switch v20, :pswitch_data_0

    .line 222
    :goto_d
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aput v5, v49, v20

    goto/16 :goto_b

    .line 200
    :cond_16
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-ne v0, v4, :cond_15

    .line 201
    aget-object v49, v22, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_c

    .line 209
    :pswitch_0
    or-int/lit8 v29, v29, 0x1

    .line 210
    goto :goto_d

    .line 212
    :pswitch_1
    or-int/lit8 v29, v29, 0x2

    .line 213
    goto :goto_d

    .line 215
    :pswitch_2
    or-int/lit8 v29, v29, 0x4

    .line 216
    goto :goto_d

    .line 218
    :pswitch_3
    or-int/lit8 v29, v29, 0x8

    goto :goto_d

    .line 226
    :cond_17
    const/16 v20, 0x0

    :goto_e
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_19

    .line 227
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-ne v0, v4, :cond_18

    .line 228
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aput v8, v49, v20

    .line 226
    :cond_18
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 231
    :cond_19
    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [J

    move-object/from16 v43, v0

    fill-array-data v43, :array_0

    .line 232
    .local v43, simIdForSlot:[J
    invoke-static/range {p0 .. p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v44

    .line 233
    .local v44, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez v44, :cond_1a

    const/16 v30, 0x0

    .line 234
    .local v30, nSIMCount:I
    :goto_f
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "nSIMCount="

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 235
    const-string v49, "[DefaultSimSetting] getAllIccIdsDone "

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 236
    const/16 v20, 0x0

    :goto_10
    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b

    .line 237
    move-object/from16 v0, v44

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/provider/Telephony$SIMInfo;

    .line 238
    .local v47, temp:Landroid/provider/Telephony$SIMInfo;
    move-object/from16 v0, v47

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move/from16 v49, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v51, v0

    aput-wide v51, v43, v49

    .line 239
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "getAllIccIdsDone simIdForSlot ["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "] = "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    aget-wide v51, v43, v20

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 236
    add-int/lit8 v20, v20, 0x1

    goto :goto_10

    .line 233
    .end local v30           #nSIMCount:I
    .end local v47           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1a
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v30

    goto :goto_f

    .line 243
    .restart local v30       #nSIMCount:I
    :cond_1b
    if-lez v28, :cond_1c

    .line 244
    const-string/jumbo v49, "onAllIccidQueryComplete New SIM detected. "

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .line 246
    const-string v49, "airplane_mode_on"

    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 247
    .local v9, airplaneMode:I
    if-lez v9, :cond_29

    .line 248
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .line 258
    .end local v9           #airplaneMode:I
    :cond_1c
    :goto_11
    const-string/jumbo v49, "video_call_sim_setting"

    const-wide/16 v51, -0x5

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v37

    .line 259
    .local v37, oldVTDefaultSIM:J
    const-string/jumbo v49, "voice_call_sim_setting"

    const-wide/16 v51, -0x5

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v39

    .line 261
    .local v39, oldVoiceCallDefaultSIM:J
    const-string/jumbo v49, "sms_sim_setting"

    const-wide/16 v51, -0x5

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v35

    .line 262
    .local v35, oldSmsDefaultSIM:J
    const-string v49, "gprs_connection_sim_setting"

    const-wide/16 v51, -0x5

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v31

    .line 280
    .local v31, oldGprsDefaultSIM:J
    const-string v49, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 281
    .local v10, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-le v0, v1, :cond_2d

    .line 282
    const-wide/16 v51, -0x5

    cmp-long v49, v39, v51

    if-nez v49, :cond_1d

    .line 283
    const-string/jumbo v49, "voice_call_sim_setting"

    const-wide/16 v51, -0x1

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 287
    :cond_1d
    const-wide/16 v51, -0x5

    cmp-long v49, v35, v51

    if-nez v49, :cond_1e

    .line 288
    const-string/jumbo v49, "ro.operator.optr"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 289
    const-string v49, "OP01"

    const-string/jumbo v51, "ro.operator.optr"

    invoke-static/range {v51 .. v51}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2a

    .line 290
    const-string/jumbo v49, "sms_sim_setting"

    const-wide/16 v51, -0x3

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 298
    :cond_1e
    :goto_12
    const-wide/16 v51, -0x5

    cmp-long v49, v31, v51

    if-nez v49, :cond_1f

    .line 299
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v49

    if-eqz v49, :cond_2c

    .line 300
    if-eqz p6, :cond_2b

    .line 301
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 337
    :cond_1f
    :goto_13
    const/16 v19, 0x0

    .line 338
    .local v19, hasSIMRemoved:Z
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/16 v51, 0x1

    move/from16 v0, v49

    move/from16 v1, v51

    if-ne v0, v1, :cond_32

    .line 339
    const-string v49, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_31

    const/16 v49, 0x0

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_31

    const/16 v19, 0x1

    .line 364
    :cond_20
    :goto_14
    const-wide/16 v12, -0x5

    .line 365
    .local v12, defSIM:J
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-le v0, v1, :cond_41

    .line 366
    const-wide/16 v12, -0x1

    .line 371
    :cond_21
    :goto_15
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-wide/from16 v0, v39

    move-object/from16 v2, v43

    move/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(J[JI)Z

    move-result v49

    if-eqz v49, :cond_22

    .line 372
    const-string/jumbo v49, "voice_call_sim_setting"

    move-object/from16 v0, v49

    invoke-static {v11, v0, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 375
    :cond_22
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-wide/from16 v0, v35

    move-object/from16 v2, v43

    move/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(J[JI)Z

    move-result v49

    if-eqz v49, :cond_24

    .line 376
    move-wide v14, v12

    .line 377
    .local v14, defaultSmsSim:J
    const-string/jumbo v49, "ro.operator.optr"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 378
    const-string v49, "OP01"

    const-string/jumbo v51, "ro.operator.optr"

    invoke-static/range {v51 .. v51}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_23

    .line 379
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-le v0, v1, :cond_42

    .line 380
    const-wide/16 v14, -0x3

    .line 385
    :cond_23
    :goto_16
    const-string/jumbo v49, "sms_sim_setting"

    move-object/from16 v0, v49

    invoke-static {v11, v0, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 392
    .end local v14           #defaultSmsSim:J
    :cond_24
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-wide/from16 v0, v31

    move-object/from16 v2, v43

    move/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(J[JI)Z

    move-result v49

    if-eqz v49, :cond_46

    .line 393
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v49

    if-eqz v49, :cond_45

    .line 394
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-le v0, v1, :cond_44

    .line 395
    if-eqz p6, :cond_43

    .line 396
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 443
    :cond_25
    :goto_17
    if-nez v28, :cond_50

    .line 445
    if-nez v19, :cond_4d

    .line 447
    const/16 v20, 0x0

    :goto_18
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_26

    .line 448
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-ne v0, v8, :cond_4c

    .line 449
    const-string/jumbo v49, "onAllIccidQueryComplete. SIM swapped"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 450
    const-string v49, "SWAP"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    .line 454
    :cond_26
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ne v0, v1, :cond_27

    .line 456
    const-string/jumbo v49, "onAllIccidQueryComplete. all SIM inserted into the same slot"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 478
    :cond_27
    :goto_19
    const-string v49, "gprs_connection_sim_setting"

    const-wide/16 v51, -0x5

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 479
    .local v17, gprsDefaultSIM:J
    const-wide/16 v51, -0x5

    cmp-long v49, v17, v51

    if-eqz v49, :cond_28

    const-wide/16 v51, 0x0

    cmp-long v49, v17, v51

    if-eqz v49, :cond_28

    .line 480
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v45

    .line 481
    .local v45, slot:I
    const/16 v49, -0x1

    move/from16 v0, v45

    move/from16 v1, v49

    if-eq v0, v1, :cond_51

    .line 484
    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 540
    .end local v45           #slot:I
    :cond_28
    :goto_1a
    const/16 v20, 0x0

    :goto_1b
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_52

    .line 541
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "mInsertSimState["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "] = "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    sget-object v51, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v51, v51, v20

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 540
    add-int/lit8 v20, v20, 0x1

    goto :goto_1b

    .line 250
    .end local v10           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v12           #defSIM:J
    .end local v17           #gprsDefaultSIM:J
    .end local v19           #hasSIMRemoved:Z
    .end local v31           #oldGprsDefaultSIM:J
    .end local v35           #oldSmsDefaultSIM:J
    .end local v37           #oldVTDefaultSIM:J
    .end local v39           #oldVoiceCallDefaultSIM:J
    .restart local v9       #airplaneMode:I
    :cond_29
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_11

    .line 293
    .end local v9           #airplaneMode:I
    .restart local v10       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v31       #oldGprsDefaultSIM:J
    .restart local v35       #oldSmsDefaultSIM:J
    .restart local v37       #oldVTDefaultSIM:J
    .restart local v39       #oldVoiceCallDefaultSIM:J
    :cond_2a
    const-string/jumbo v49, "sms_sim_setting"

    const-wide/16 v51, -0x1

    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_12

    .line 303
    :cond_2b
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_13

    .line 305
    :cond_2c
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_13

    .line 308
    :cond_2d
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-ne v0, v1, :cond_1f

    .line 309
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v49

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v41, v0

    .line 310
    .local v41, simId:J
    const-string v49, "enable_internet_call_value"

    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 311
    .local v26, isVoipEnabled:I
    invoke-static/range {p0 .. p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_2e

    if-eqz v26, :cond_2e

    const-wide/16 v51, -0x5

    cmp-long v49, v39, v51

    if-nez v49, :cond_2f

    .line 314
    :cond_2e
    const-string/jumbo v49, "voice_call_sim_setting"

    move-object/from16 v0, v49

    move-wide/from16 v1, v41

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 317
    :cond_2f
    const-string/jumbo v49, "sms_sim_setting"

    move-object/from16 v0, v49

    move-wide/from16 v1, v41

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 323
    const-wide/16 v51, -0x5

    cmp-long v49, v31, v51

    if-nez v49, :cond_1f

    .line 324
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v49

    if-eqz v49, :cond_30

    .line 325
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v49

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_13

    .line 327
    :cond_30
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_13

    .line 339
    .end local v26           #isVoipEnabled:I
    .end local v41           #simId:J
    .restart local v19       #hasSIMRemoved:Z
    :cond_31
    const/16 v19, 0x0

    goto/16 :goto_14

    .line 340
    :cond_32
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/16 v51, 0x2

    move/from16 v0, v49

    move/from16 v1, v51

    if-ne v0, v1, :cond_36

    .line 341
    const-string v49, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_33

    const/16 v49, 0x0

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_34

    :cond_33
    const-string v49, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_35

    const/16 v49, 0x1

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_35

    :cond_34
    const/16 v19, 0x1

    .line 343
    :goto_1c
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "onAllIccidQueryComplete. handling SIM detect dialog ["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "] ["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x0

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x1

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "]"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "]"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 341
    :cond_35
    const/16 v19, 0x0

    goto/16 :goto_1c

    .line 346
    :cond_36
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/16 v51, 0x3

    move/from16 v0, v49

    move/from16 v1, v51

    if-ne v0, v1, :cond_3b

    .line 347
    const-string v49, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_37

    const/16 v49, 0x0

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_39

    :cond_37
    const-string v49, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_38

    const/16 v49, 0x1

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_39

    :cond_38
    const-string v49, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3a

    const/16 v49, 0x2

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_3a

    :cond_39
    const/16 v19, 0x1

    .line 350
    :goto_1d
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "onAllIccidQueryComplete. handling SIM detect dialog ["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "] ["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x0

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x1

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x2

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "]"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "]"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 347
    :cond_3a
    const/16 v19, 0x0

    goto/16 :goto_1d

    .line 353
    :cond_3b
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/16 v51, 0x4

    move/from16 v0, v49

    move/from16 v1, v51

    if-ne v0, v1, :cond_20

    .line 354
    const-string v49, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3c

    const/16 v49, 0x0

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3f

    :cond_3c
    const-string v49, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3d

    const/16 v49, 0x1

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3f

    :cond_3d
    const-string v49, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3e

    const/16 v49, 0x2

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3f

    :cond_3e
    const-string v49, ""

    move-object/from16 v0, p5

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_40

    const/16 v49, 0x3

    aget-object v49, v33, v49

    const-string v51, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_40

    :cond_3f
    const/16 v19, 0x1

    .line 358
    :goto_1e
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "onAllIccidQueryComplete. handling SIM detect dialog ["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "] ["

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x0

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x1

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x2

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v51, 0x3

    aget-object v51, v33, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "]"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, ", "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "]"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 354
    :cond_40
    const/16 v19, 0x0

    goto/16 :goto_1e

    .line 367
    .restart local v12       #defSIM:J
    :cond_41
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-ne v0, v1, :cond_21

    .line 368
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v49

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_15

    .line 381
    .restart local v14       #defaultSmsSim:J
    :cond_42
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-ne v0, v1, :cond_23

    .line 382
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v49

    iget-wide v14, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_16

    .line 398
    .end local v14           #defaultSmsSim:J
    :cond_43
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 400
    :cond_44
    if-lez v30, :cond_25

    .line 401
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v49

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 404
    :cond_45
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_17

    .line 406
    :cond_46
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v49

    if-eqz v49, :cond_25

    .line 407
    const-wide/16 v51, 0x0

    cmp-long v49, v31, v51

    if-lez v49, :cond_49

    .line 409
    if-lez v28, :cond_25

    .line 410
    const-string/jumbo v49, "onAllIccidQueryComplete. SIM swapped and data on, default switch to 3G SIM"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 411
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-le v0, v1, :cond_48

    .line 412
    if-eqz p6, :cond_47

    .line 413
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 415
    :cond_47
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 417
    :cond_48
    if-lez v30, :cond_25

    .line 418
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v49

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 422
    :cond_49
    if-lez v28, :cond_25

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    .line 423
    const-string/jumbo v49, "onAllIccidQueryComplete. All SIM new, data off and default switch data to 3G SIM"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 424
    const/16 v49, 0x1

    move/from16 v0, v30

    move/from16 v1, v49

    if-le v0, v1, :cond_4b

    .line 425
    if-eqz p6, :cond_4a

    .line 426
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 428
    :cond_4a
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 430
    :cond_4b
    if-lez v30, :cond_25

    .line 431
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v49

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_17

    .line 447
    :cond_4c
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_18

    .line 460
    :cond_4d
    const/16 v20, 0x0

    :goto_1f
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_4e

    .line 461
    sget-object v49, Lcom/android/internal/telephony/DefaultSIMSettings;->mInsertSimState:[I

    aget v49, v49, v20

    move/from16 v0, v49

    if-ne v0, v8, :cond_4f

    .line 462
    const-string/jumbo v49, "onAllIccidQueryComplete. SIM swapped"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 463
    const-string v49, "SWAP"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    .line 467
    :cond_4e
    sget v49, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v49

    if-ne v0, v1, :cond_27

    .line 469
    const-string/jumbo v49, "onAllIccidQueryComplete No new SIM detected and Default SIM for some service has been removed[A]"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 470
    const-string v49, "REMOVE"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_19

    .line 460
    :cond_4f
    add-int/lit8 v20, v20, 0x1

    goto :goto_1f

    .line 474
    :cond_50
    const-string v49, "getAllIccIdsDone. New SIM detected."

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 475
    const-string v49, "NEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_19

    .line 486
    .restart local v17       #gprsDefaultSIM:J
    .restart local v45       #slot:I
    :cond_51
    const-string/jumbo v49, "onAllIccidQueryComplete: gprsDefaultSIM does not exist in slot then skip."

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 544
    .end local v45           #slot:I
    :cond_52
    const-string v49, "gsm.siminfo.ready"

    const-string/jumbo v51, "true"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "onAllIccidQueryComplete PROPERTY_SIM_INFO_READY after set is "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v51, "gsm.siminfo.ready"

    const/16 v52, 0x0

    invoke-static/range {v51 .. v52}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 547
    new-instance v24, Landroid/content/Intent;

    const-string v49, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v24, intent:Landroid/content/Intent;
    const-string v49, "broadCast intent ACTION_SIM_INFO_UPDATE"

    invoke-static/range {v49 .. v49}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 549
    const-string v49, "android.permission.READ_PHONE_STATE"

    const/16 v51, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    move/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    monitor-exit v50

    return-void

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 231
    :array_0
    .array-data 0x8
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "context"
    .parameter "detectStatus"
    .parameter "nSIMCount"
    .parameter "nNewSIMStatus"

    .prologue
    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    const-string/jumbo v1, "newSIMStatus"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 663
    return-void
.end method

.method private static setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 12
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_4

    const/4 v3, 0x0

    .line 584
    .local v3, nSIMInsert:I
    :goto_0
    const/4 v1, 0x0

    .line 585
    .local v1, isNeedChangeColor:Z
    const/4 v4, -0x1

    .line 586
    .local v4, pivotSimColor:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setColorForNewSIM nSIMInsert = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_7

    .line 588
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    .line 589
    .local v5, pivotSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v5, :cond_3

    .line 591
    :cond_0
    const/4 v1, 0x0

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setColorForNewSIM i = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needchange = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " simId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "trace 200"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 595
    iget v8, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v8, :cond_1

    iget v8, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_5

    .line 597
    :cond_1
    iget-wide v8, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    long-to-int v8, v8

    rem-int/lit8 v4, v8, 0x4

    .line 603
    :goto_2
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v0, :cond_2

    .line 604
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    .line 605
    .local v6, tmpSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v6, :cond_6

    iget v8, v6, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v8, :cond_6

    iget v8, v6, Landroid/provider/Telephony$SIMInfo;->mColor:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_6

    iget v8, v6, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ne v4, v8, :cond_6

    .line 609
    add-int/lit8 v8, v4, 0x1

    rem-int/lit8 v4, v8, 0x4

    .line 610
    iput v4, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 611
    const/4 v1, 0x1

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setColorForNewSIM pivot slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pivot simId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pivot color "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 616
    .end local v6           #tmpSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    const/4 v8, 0x1

    if-eq v1, v8, :cond_0

    .line 618
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 619
    .local v7, valueColor:Landroid/content/ContentValues;
    const-string v8, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 622
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setColorForNewSIM slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " simId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " color "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "trace 500"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 587
    .end local v2           #j:I
    .end local v7           #valueColor:Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 582
    .end local v0           #i:I
    .end local v1           #isNeedChangeColor:Z
    .end local v3           #nSIMInsert:I
    .end local v4           #pivotSimColor:I
    .end local v5           #pivotSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto/16 :goto_0

    .line 599
    .restart local v0       #i:I
    .restart local v1       #isNeedChangeColor:Z
    .restart local v3       #nSIMInsert:I
    .restart local v4       #pivotSimColor:I
    .restart local v5       #pivotSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_5
    iget v4, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    goto/16 :goto_2

    .line 603
    .restart local v2       #j:I
    .restart local v6       #tmpSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 625
    .end local v2           #j:I
    .end local v5           #pivotSimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v6           #tmpSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_7
    return-void
.end method

.method private static setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 554
    .local v1, nSIMCount:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll nSIMCount  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 556
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 557
    .local v2, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll set default name for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 559
    iget-wide v3, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 553
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 562
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    :cond_2
    return-void
.end method

.method private static setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 566
    .local v1, nSIMCount:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked nSIMCount  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, operatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 569
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 570
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v4, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "th mDisplayName is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 572
    sget-object v4, Lcom/android/internal/telephony/DefaultSIMSettings;->DEFAULTSIMSETTING_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked operatorName  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 574
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 575
    iget-wide v4, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {p1, v4, v5, v2}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 568
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #operatorName:Ljava/lang/String;
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 579
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    .restart local v2       #operatorName:Ljava/lang/String;
    :cond_2
    return-void
.end method
