.class Lcom/mediatek/FMRadio/FMRadioMainActivity$10;
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

.field final synthetic val$stationName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->val$frequency:I

    iput-object p3, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->val$stationName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->val$frequency:I

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->val$stationName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/RenameDialog;->newInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/mediatek/FMRadio/RenameDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/RenameDialog;->setOnInputResultListener(Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshCollect()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method
