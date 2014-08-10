.class Landroid/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    .local p0, this:Landroid/widget/AdapterView$SelectionNotifier;,"Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 851
    .local p0, this:Landroid/widget/AdapterView$SelectionNotifier;,"Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 853
    .local p0, this:Landroid/widget/AdapterView$SelectionNotifier;,"Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    iget-boolean v1, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_2

    .line 857
    iget-object v1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/AdapterView;->access$200(Landroid/widget/AdapterView;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 858
    iget-object v1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/AdapterView;->access$300(Landroid/widget/AdapterView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 859
    .local v0, avy:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    .end local v0           #avy:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 868
    :cond_2
    iget-object v1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #calls: Landroid/widget/AdapterView;->fireOnSelected()V
    invoke-static {v1}, Landroid/widget/AdapterView;->access$400(Landroid/widget/AdapterView;)V

    .line 869
    iget-object v1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #calls: Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V
    invoke-static {v1}, Landroid/widget/AdapterView;->access$500(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method
