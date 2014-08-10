.class Lcom/mediatek/FMRadio/FMRadioMainActivity$6;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 221
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 224
    const-string v0, "FMRadioMainActivity"

    const-string v1, "mPrevButton : OnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->startManualTune(IZ)V

    .line 226
    return-void
.end method
