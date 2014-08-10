.class Lcom/mediatek/FMRadio/FMRadioMainActivity$8;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 245
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$8;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 249
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$8;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/mediatek/FMRadio/CollectAdapter;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/CollectAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mediatek/FMRadio/CollectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/ItemHolder;

    .line 250
    .local v0, itemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$8;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->onCollectItemClick(ILcom/mediatek/FMRadio/ItemHolder;)V
    invoke-static {v1, p3, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioMainActivity;ILcom/mediatek/FMRadio/ItemHolder;)V

    .line 251
    return-void
.end method
