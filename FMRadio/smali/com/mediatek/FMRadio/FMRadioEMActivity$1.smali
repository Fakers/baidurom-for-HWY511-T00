.class Lcom/mediatek/FMRadio/FMRadioEMActivity$1;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 186
    :pswitch_0
    const-string v3, "FmRx/EM"

    const-string v4, "invalid view id"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 153
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)V

    goto :goto_0

    .line 168
    :pswitch_4
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)V

    goto :goto_0

    .line 171
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, freq:F
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v4

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v4, "bad float format."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 177
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurFrequency:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b000d
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
