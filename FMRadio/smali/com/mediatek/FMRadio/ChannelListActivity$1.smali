.class Lcom/mediatek/FMRadio/ChannelListActivity$1;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/ChannelListActivity;->registerPlayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/FMRadio/ChannelListActivity$1;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, list:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v2, "ChannelListActivity"

    const-string v3, "mListView : OnItemClick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ItemHolder;

    .line 90
    .local v1, tmpHolder:Lcom/mediatek/FMRadio/ItemHolder;
    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v2

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, intentResult:Landroid/content/Intent;
    const-string v2, "ACTIVITY_RESULT"

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$1;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/FMRadio/ChannelListActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity$1;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/ChannelListActivity;->finish()V

    .line 96
    .end local v0           #intentResult:Landroid/content/Intent;
    :cond_0
    return-void
.end method
