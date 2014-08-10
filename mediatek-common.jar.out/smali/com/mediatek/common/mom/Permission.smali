.class public Lcom/mediatek/common/mom/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Permission"


# instance fields
.field private mFlag:I

.field public mPermissionName:Ljava/lang/String;

.field private mStatus:I

.field public mSubPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/mediatek/common/mom/Permission$1;

    invoke-direct {v0}, Lcom/mediatek/common/mom/Permission$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/mom/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v3, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 52
    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 53
    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 65
    .local v0, isPresent:Z
    :cond_0
    if-ne v0, v1, :cond_1

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    sget-object v2, Lcom/mediatek/common/mom/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 73
    return-void

    .line 69
    :cond_1
    iput-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/common/mom/Permission$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mediatek/common/mom/Permission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;II)V
    .locals 2
    .parameter "permissionName"
    .parameter
    .parameter "status"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, subPermissions:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/Permission;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 52
    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 53
    iput v0, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 56
    iput-object p1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    .line 58
    iput p3, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 59
    iput p4, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    instance-of v3, p1, Lcom/mediatek/common/mom/Permission;

    if-nez v3, :cond_2

    move v1, v2

    .line 102
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 107
    .local v0, record:Lcom/mediatek/common/mom/Permission;
    iget-object v3, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    iget v4, v0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    iget v4, v0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    iget-object v4, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 111
    goto :goto_0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    return v0
.end method

.method public setStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 131
    :cond_0
    iput p1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, "Permission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid permission status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "parcelableFlags"

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v2, p0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_1

    move v0, v1

    .line 82
    .local v0, isPresent:I
    :goto_0
    int-to-byte v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    if-ne v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    :cond_0
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v1, p0, Lcom/mediatek/common/mom/Permission;->mFlag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void

    .line 81
    .end local v0           #isPresent:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
