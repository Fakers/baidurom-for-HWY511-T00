.class final Lcom/mediatek/common/telephony/gsm/PBEntry$1;
.super Ljava/lang/Object;
.source "PBEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/telephony/gsm/PBEntry;
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
        "Lcom/mediatek/common/telephony/gsm/PBEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/gsm/PBEntry;
    .locals 1
    .parameter "source"

    .prologue
    .line 98
    invoke-static {p1}, Lcom/mediatek/common/telephony/gsm/PBEntry;->reateFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/gsm/PBEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/gsm/PBEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/gsm/PBEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/telephony/gsm/PBEntry;
    .locals 1
    .parameter "size"

    .prologue
    .line 102
    new-array v0, p1, [Lcom/mediatek/common/telephony/gsm/PBEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/gsm/PBEntry$1;->newArray(I)[Lcom/mediatek/common/telephony/gsm/PBEntry;

    move-result-object v0

    return-object v0
.end method
