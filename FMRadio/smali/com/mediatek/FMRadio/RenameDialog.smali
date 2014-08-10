.class public Lcom/mediatek/FMRadio/RenameDialog;
.super Ljava/lang/Object;
.source "RenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mFrequency:I

.field private mInputName:Ljava/lang/String;

.field private mOkButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private onInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "frequency"
    .parameter "oldName"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/FMRadio/RenameDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/RenameDialog$1;-><init>(Lcom/mediatek/FMRadio/RenameDialog;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 95
    new-instance v0, Lcom/mediatek/FMRadio/RenameDialog$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/RenameDialog$2;-><init>(Lcom/mediatek/FMRadio/RenameDialog;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/mediatek/FMRadio/RenameDialog;->mInputName:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/mediatek/FMRadio/RenameDialog;->mFrequency:I

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/RenameDialog;->initDialog()V

    .line 51
    invoke-direct {p0}, Lcom/mediatek/FMRadio/RenameDialog;->openInputMethod()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/RenameDialog;)Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->onInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/RenameDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->mFrequency:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/RenameDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/FMRadio/RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static newInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/mediatek/FMRadio/RenameDialog;
    .locals 1
    .parameter "context"
    .parameter "frequency"
    .parameter "oldName"

    .prologue
    .line 42
    new-instance v0, Lcom/mediatek/FMRadio/RenameDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/FMRadio/RenameDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method private openInputMethod()V
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 141
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/mediatek/FMRadio/RenameDialog$3;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/RenameDialog$3;-><init>(Lcom/mediatek/FMRadio/RenameDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 149
    return-void
.end method


# virtual methods
.method public changeDialogField(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 155
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 166
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public initDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 59
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    iget-object v3, p0, Lcom/mediatek/FMRadio/RenameDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/mediatek/FMRadio/RenameDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 64
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;

    .line 65
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mEditText:Landroid/widget/EditText;

    .line 66
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mInputName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mFrequency:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getDisplayFrequency(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mDisplayName:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 73
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/FMRadio/RenameDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/RenameDialog;->mInputName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnInputResultListener(Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;)V
    .locals 0
    .parameter "onInputResultListener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/FMRadio/RenameDialog;->onInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    .line 171
    return-void
.end method
