.class Lcom/mediatek/FMRadio/FMRadioMainActivity$2;
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
    .line 169
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 171
    const-string v0, "FMRadioMainActivity"

    const-string v1, "mFrequencyView : OnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->showChooserDialog()V

    .line 176
    :cond_0
    return-void
.end method
