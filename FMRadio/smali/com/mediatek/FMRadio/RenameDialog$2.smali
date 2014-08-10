.class Lcom/mediatek/FMRadio/RenameDialog$2;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 95
    iput-object p1, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v5, 0x7f080010

    const/4 v4, 0x0

    .line 100
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/RenameDialog;->changeDialogField(Z)V

    .line 102
    packed-switch p2, :pswitch_data_0

    .line 135
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/FMRadio/RenameDialog;->access$100(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, input:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/RenameDialog;->access$200(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08001b

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isNameExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/FMRadio/RenameDialog;->access$200(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, strMsg:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/FMRadio/RenameDialog;->access$200(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/FMRadio/RenameDialog;->access$200(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v4}, Lcom/mediatek/FMRadio/CommonUI;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 120
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    invoke-virtual {v2, v4}, Lcom/mediatek/FMRadio/RenameDialog;->changeDialogField(Z)V

    goto/16 :goto_0

    .line 124
    .end local v1           #strMsg:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->onInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;
    invoke-static {v2}, Lcom/mediatek/FMRadio/RenameDialog;->access$300(Lcom/mediatek/FMRadio/RenameDialog;)Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->onInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;
    invoke-static {v2}, Lcom/mediatek/FMRadio/RenameDialog;->access$300(Lcom/mediatek/FMRadio/RenameDialog;)Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mFrequency:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/RenameDialog;->access$400(Lcom/mediatek/FMRadio/RenameDialog;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;->onRenameResult(ILjava/lang/String;)V

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog$2;->this$0:Lcom/mediatek/FMRadio/RenameDialog;

    #getter for: Lcom/mediatek/FMRadio/RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/RenameDialog;->access$500(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
