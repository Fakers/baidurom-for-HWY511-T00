.class public Lcom/mediatek/FMRadio/WidgetParentLayout;
.super Landroid/widget/RelativeLayout;
.source "WidgetParentLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/WidgetParentLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_1

    .line 35
    const-string v2, "FMRadio.FMRadioWidgetParentLayout"

    const-string v3, "The Parent is AppWidgetHostView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/WidgetParentLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 37
    .local v0, appWidgetHostView:Landroid/appwidget/AppWidgetHostView;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 44
    .end local v0           #appWidgetHostView:Landroid/appwidget/AppWidgetHostView;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 45
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/WidgetParentLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/WidgetParentLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 41
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
