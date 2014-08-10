.class Lcom/mediatek/FMRadio/FMRadioMainActivity$12;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioMainActivity;->showChooserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

.field final synthetic val$frequencyPicker:Lcom/mediatek/FMRadio/FrequencyPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;Lcom/mediatek/FMRadio/FrequencyPicker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;->val$frequencyPicker:Lcom/mediatek/FMRadio/FrequencyPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 632
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;->val$frequencyPicker:Lcom/mediatek/FMRadio/FrequencyPicker;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FrequencyPicker;->getCurrentFrequency()I

    move-result v0

    .line 633
    .local v0, frequency:I
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioMainActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->tuneToStation(I)V
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioMainActivity;I)V

    .line 635
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->refreshViews()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    .line 637
    :cond_0
    return-void
.end method
