.class Lcom/mediatek/FMRadio/FMRadioMainActivity$11;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioMainActivity;->onCollectItemLongClick(Landroid/view/ContextMenu;ILcom/mediatek/FMRadio/ItemHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

.field final synthetic val$frequency:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->val$frequency:I

    iput p3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 317
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->val$frequency:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->doUpdateCollectStatus(Landroid/content/Context;IZI)Z

    .line 319
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshCollect()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080038

    invoke-static {v0, v1, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 322
    return v4
.end method
