.class final Lcom/mediatek/common/telephony/AlphaTag$1;
.super Ljava/lang/Object;
.source "AlphaTag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/telephony/AlphaTag;
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
        "Lcom/mediatek/common/telephony/AlphaTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/AlphaTag;
    .locals 4
    .parameter "source"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, recordNumber:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, pbrIndex:I
    new-instance v3, Lcom/mediatek/common/telephony/AlphaTag;

    invoke-direct {v3, v2, v0, v1}, Lcom/mediatek/common/telephony/AlphaTag;-><init>(ILjava/lang/String;I)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/AlphaTag$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/AlphaTag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/telephony/AlphaTag;
    .locals 1
    .parameter "size"

    .prologue
    .line 84
    new-array v0, p1, [Lcom/mediatek/common/telephony/AlphaTag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/AlphaTag$1;->newArray(I)[Lcom/mediatek/common/telephony/AlphaTag;

    move-result-object v0

    return-object v0
.end method
