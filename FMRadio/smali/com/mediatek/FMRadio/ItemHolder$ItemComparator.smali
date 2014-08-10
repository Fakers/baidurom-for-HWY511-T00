.class Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;
.super Ljava/lang/Object;
.source "ItemHolder.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/ItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/FMRadio/ItemHolder;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/FMRadio/ItemHolder;Lcom/mediatek/FMRadio/ItemHolder;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 86
    #getter for: Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I
    invoke-static {p1}, Lcom/mediatek/FMRadio/ItemHolder;->access$000(Lcom/mediatek/FMRadio/ItemHolder;)I

    move-result v0

    #getter for: Lcom/mediatek/FMRadio/ItemHolder;->mFrequency:I
    invoke-static {p2}, Lcom/mediatek/FMRadio/ItemHolder;->access$000(Lcom/mediatek/FMRadio/ItemHolder;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p1, Lcom/mediatek/FMRadio/ItemHolder;

    .end local p1
    check-cast p2, Lcom/mediatek/FMRadio/ItemHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/FMRadio/ItemHolder$ItemComparator;->compare(Lcom/mediatek/FMRadio/ItemHolder;Lcom/mediatek/FMRadio/ItemHolder;)I

    move-result v0

    return v0
.end method
