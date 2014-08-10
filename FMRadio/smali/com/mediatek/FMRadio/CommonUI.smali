.class public Lcom/mediatek/FMRadio/CommonUI;
.super Ljava/lang/Object;
.source "CommonUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUI"

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getmToast()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static initAutoTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Lcom/mediatek/FMRadio/CommonUI$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/CommonUI$2;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, autoTuneDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 51
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 53
    new-instance v1, Lcom/mediatek/FMRadio/CommonUI$3;

    invoke-direct {v1}, Lcom/mediatek/FMRadio/CommonUI$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 67
    return-object v0
.end method

.method public static initManualTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    new-instance v0, Lcom/mediatek/FMRadio/CommonUI$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/CommonUI$4;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, manualTuneDialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 86
    return-object v0
.end method

.method public static initWaitProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    new-instance v0, Lcom/mediatek/FMRadio/CommonUI$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/CommonUI$1;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, waitingDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 32
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 35
    return-object v0
.end method

.method public static setmToast(Landroid/widget/Toast;)V
    .locals 0
    .parameter "toast"

    .prologue
    .line 105
    sput-object p0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    .line 106
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 90
    invoke-static {}, Lcom/mediatek/FMRadio/CommonUI;->getmToast()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 93
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    .line 94
    sget-object v0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "string"
    .parameter "duration"

    .prologue
    .line 98
    invoke-static {}, Lcom/mediatek/FMRadio/CommonUI;->getmToast()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 101
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    .line 102
    sget-object v0, Lcom/mediatek/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method
