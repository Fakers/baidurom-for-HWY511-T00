.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# static fields
.field public static final TAG:I = 0xa


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "intent"

    .prologue
    .line 498
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 499
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 500
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    .line 501
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 503
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 505
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    .line 506
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 516
    iget v3, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 517
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    instance-of v3, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v3, :cond_2

    .line 521
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_2
    instance-of v3, v1, Landroid/widget/AbsListView;

    if-nez v3, :cond_3

    instance-of v3, v1, Landroid/widget/AdapterViewAnimator;

    if-nez v3, :cond_3

    .line 527
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 534
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 535
    .local v0, host:Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    const-string v4, "remoteAdapterAppWidgetId"

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    instance-of v3, v1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 537
    check-cast v2, Landroid/widget/AbsListView;

    .line 538
    .local v2, v:Landroid/widget/AbsListView;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 539
    invoke-virtual {v2, p3}, Landroid/widget/AbsListView;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    goto :goto_0

    .line 540
    .end local v2           #v:Landroid/widget/AbsListView;
    :cond_4
    instance-of v3, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 541
    check-cast v2, Landroid/widget/AdapterViewAnimator;

    .line 542
    .local v2, v:Landroid/widget/AdapterViewAnimator;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 543
    invoke-virtual {v2, p3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    const-string v0, "SetRemoteViewsAdapterIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 509
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 512
    return-void
.end method
