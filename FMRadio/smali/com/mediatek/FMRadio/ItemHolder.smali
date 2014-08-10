.class public Lcom/mediatek/FMRadio/ItemHolder;
.super Ljava/lang/Object;
.source "ItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLLECTID:I = -0x1


# instance fields
.field private mCollectId:I

.field private mCollected:Z

.field private mFrequency:I

.field private mStationName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    .line 19
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollected:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mStationName:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollectId:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "mFrequency"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    .line 19
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollected:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mStationName:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollectId:I

    .line 32
    iput p1, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/ItemHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v2, p1, Lcom/mediatek/FMRadio/ItemHolder;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/mediatek/FMRadio/ItemHolder;

    .line 69
    .local v0, itemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    invoke-virtual {v0}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v2

    iget v3, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 72
    .end local v0           #itemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :cond_0
    return v1
.end method

.method public getmCollectId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollectId:I

    return v0
.end method

.method public getmFrequency()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    return v0
.end method

.method public getmStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mStationName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    return v0
.end method

.method public ismCollected()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollected:Z

    return v0
.end method

.method public setmCollected(ZI)V
    .locals 0
    .parameter "mCollected"
    .parameter "collectId"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollected:Z

    .line 57
    if-eqz p1, :cond_0

    .end local p2
    :goto_0
    iput p2, p0, Lcom/mediatek/FMRadio/ItemHolder;->mCollectId:I

    .line 58
    return-void

    .line 57
    .restart local p2
    :cond_0
    const/4 p2, -0x1

    goto :goto_0
.end method

.method public setmFrequency(I)V
    .locals 0
    .parameter "mFrequency"

    .prologue
    .line 40
    iput p1, p0, Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I

    .line 41
    return-void
.end method

.method public setmStationName(Ljava/lang/String;)V
    .locals 0
    .parameter "mStationName"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/FMRadio/ItemHolder;->mStationName:Ljava/lang/String;

    .line 49
    return-void
.end method
