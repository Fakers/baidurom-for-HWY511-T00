.class public Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/notification/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerBuilder"
.end annotation


# instance fields
.field private mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 576
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;-><init>(Lcom/mediatek/notification/NotificationManagerPlus$1;)V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    .line 577
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    .line 578
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 579
    return-void
.end method


# virtual methods
.method public create()Lcom/mediatek/notification/NotificationManagerPlus;
    .locals 3

    .prologue
    .line 736
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus;

    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/notification/NotificationManagerPlus;-><init>(Lcom/mediatek/notification/NotificationManagerPlus$Parameters;Lcom/mediatek/notification/NotificationManagerPlus$1;)V

    return-object v0
.end method

.method public setCancelable(Z)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-boolean p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 665
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 633
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 634
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNegativeButtonHandled:Z

    .line 635
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 614
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 615
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNeutralButtonHandled:Z

    .line 616
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "listener"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 650
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mCancelHandled:Z

    .line 651
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 680
    return-object p0
.end method

.method public setOnFirstShowListener(Lcom/mediatek/notification/NotificationManagerPlus$OnFirstShowListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnFirstShowListener:Lcom/mediatek/notification/NotificationManagerPlus$OnFirstShowListener;

    .line 727
    return-object p0
.end method

.method public setOnLastDismissListener(Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;

    .line 711
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 695
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 595
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 596
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;->mParam:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mPositiveButtonHandled:Z

    .line 597
    return-object p0
.end method
