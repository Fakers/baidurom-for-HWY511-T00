.class Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
.super Landroid/app/AlertDialog;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/notification/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogPlus"
.end annotation


# instance fields
.field public mId:I

.field public mPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 521
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 522
    return-void
.end method


# virtual methods
.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 528
    iput p1, p0, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mId:I

    .line 529
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    .line 533
    return-void
.end method
