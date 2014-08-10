.class Lcom/mediatek/FMRadio/RenameDialog$1;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/RenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/RenameDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/RenameDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/FMRadio/RenameDialog$1;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 92
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 80
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog$1;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/FMRadio/RenameDialog;->access$000(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog$1;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/FMRadio/RenameDialog;->access$000(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
