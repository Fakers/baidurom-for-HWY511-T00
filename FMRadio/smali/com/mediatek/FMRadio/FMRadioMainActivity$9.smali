.class Lcom/mediatek/FMRadio/FMRadioMainActivity$9;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioMainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$9;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "child1View"
    .parameter "menuInfo"

    .prologue
    .line 257
    const-string v3, "FMRadioMainActivity"

    const-string v4, "mGridView : OnCreateContextMenu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 258
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 259
    .local v0, contextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 260
    .local v2, position:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$9;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/mediatek/FMRadio/CollectAdapter;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/CollectAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/CollectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/ItemHolder;

    .line 261
    .local v1, itemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$9;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->onCollectItemLongClick(Landroid/view/ContextMenu;ILcom/mediatek/FMRadio/ItemHolder;)V
    invoke-static {v3, p1, v2, v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioMainActivity;Landroid/view/ContextMenu;ILcom/mediatek/FMRadio/ItemHolder;)V

    .line 262
    return-void
.end method
