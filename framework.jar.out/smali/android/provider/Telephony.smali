.class public final Landroid/provider/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$WapPush;,
        Landroid/provider/Telephony$Intents;,
        Landroid/provider/Telephony$CellBroadcasts;,
        Landroid/provider/Telephony$GPRSInfo;,
        Landroid/provider/Telephony$GprsInfo;,
        Landroid/provider/Telephony$SIMInfo;,
        Landroid/provider/Telephony$SimInfo;,
        Landroid/provider/Telephony$Carriers;,
        Landroid/provider/Telephony$MmsSms;,
        Landroid/provider/Telephony$Mms;,
        Landroid/provider/Telephony$ThreadSettings;,
        Landroid/provider/Telephony$Threads;,
        Landroid/provider/Telephony$ThreadsColumns;,
        Landroid/provider/Telephony$CanonicalAddressesColumns;,
        Landroid/provider/Telephony$BaseMmsColumns;,
        Landroid/provider/Telephony$SmsCb;,
        Landroid/provider/Telephony$TextBasedSmsCbColumns;,
        Landroid/provider/Telephony$Sms;,
        Landroid/provider/Telephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = false

.field public static final SIMBackgroundDarkRes:[I = null

.field public static final SIMBackgroundLightRes:[I = null

.field public static final SIMBackgroundRes:[I = null

.field private static final TAG:Ljava/lang/String; = "Telephony"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2599
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/provider/Telephony;->SIMBackgroundRes:[I

    .line 2607
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/provider/Telephony;->SIMBackgroundDarkRes:[I

    .line 2614
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/provider/Telephony;->SIMBackgroundLightRes:[I

    return-void

    .line 2599
    nop

    :array_0
    .array-data 0x4
        0xect 0x0t 0x2t 0x2t
        0xeft 0x0t 0x2t 0x2t
        0xedt 0x0t 0x2t 0x2t
        0xf0t 0x0t 0x2t 0x2t
    .end array-data

    .line 2607
    :array_1
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x2t
        0xfdt 0x0t 0x2t 0x2t
        0xfct 0x0t 0x2t 0x2t
        0xfet 0x0t 0x2t 0x2t
    .end array-data

    .line 2614
    :array_2
    .array-data 0x4
        0x4t 0x1t 0x2t 0x2t
        0x6t 0x1t 0x2t 0x2t
        0x5t 0x1t 0x2t 0x2t
        0x7t 0x1t 0x2t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method