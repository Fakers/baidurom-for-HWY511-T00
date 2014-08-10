.class public Lcom/mediatek/common/telephony/ChannelStatus;
.super Ljava/lang/Object;
.source "ChannelStatus.java"


# static fields
.field public static final CHANNEL_STATUS_INFO_LINK_DROPED:I = 0x5

.field public static final CHANNEL_STATUS_INFO_NO_FURTHER_INFO:I = 0x0

.field public static final CHANNEL_STATUS_LINK:I = 0x80

.field public static final CHANNEL_STATUS_NO_LINK:I


# instance fields
.field public isActivated:Z

.field public mChannelId:I

.field public mChannelStatus:I

.field public mChannelStatusInfo:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "cid"
    .parameter "status"
    .parameter "info"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/common/telephony/ChannelStatus;->isActivated:Z

    .line 66
    iput p1, p0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    .line 67
    iput p2, p0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 68
    iput p3, p0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatusInfo:I

    .line 69
    return-void
.end method
