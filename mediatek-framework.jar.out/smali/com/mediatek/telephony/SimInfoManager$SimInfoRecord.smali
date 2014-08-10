.class public Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
.super Ljava/lang/Object;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/SimInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimInfoRecord"
.end annotation


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mOperator:Ljava/lang/String;

.field public mSimBackgroundDarkRes:I

.field public mSimBackgroundLightRes:I

.field public mSimBackgroundRes:I

.field public mSimInfoId:J

.field public mSimSlotId:I

.field public mWapPush:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    .line 178
    iput v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    .line 179
    iput v2, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 180
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    .line 182
    iput v2, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mWapPush:I

    .line 184
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkRes:I

    .line 185
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightRes:I

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/telephony/SimInfoManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;-><init>()V

    return-void
.end method
