.class final Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo$1;
.super Ljava/lang/Object;
.source "UsimPBMemInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 142
    invoke-static {p1}, Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 146
    new-array v0, p1, [Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo$1;->newArray(I)[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method
