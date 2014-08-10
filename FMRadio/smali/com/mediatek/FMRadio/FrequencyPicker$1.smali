.class Lcom/mediatek/FMRadio/FrequencyPicker$1;
.super Ljava/lang/Object;
.source "FrequencyPicker.java"

# interfaces
.implements Lcom/mediatek/FMRadio/ValuePicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FrequencyPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FrequencyPicker;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FrequencyPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/FMRadio/FrequencyPicker$1;->this$0:Lcom/mediatek/FMRadio/FrequencyPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/mediatek/FMRadio/ValuePicker;II)V
    .locals 5
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v2, 0x36b

    .line 76
    iget-object v3, p0, Lcom/mediatek/FMRadio/FrequencyPicker$1;->this$0:Lcom/mediatek/FMRadio/FrequencyPicker;

    #getter for: Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FrequencyPicker;->access$000(Lcom/mediatek/FMRadio/FrequencyPicker;)Lcom/mediatek/FMRadio/ValuePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ValuePicker;->getValue()I

    move-result v1

    .line 77
    .local v1, oldDecimalValue:I
    const/16 v3, 0x57

    if-ne p3, v3, :cond_1

    .line 78
    mul-int/lit8 v3, p3, 0xa

    rem-int/lit8 v4, v1, 0xa

    add-int v0, v3, v4

    .line 79
    .local v0, newDecimalValue:I
    if-ge v0, v2, :cond_0

    move v0, v2

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FrequencyPicker$1;->this$0:Lcom/mediatek/FMRadio/FrequencyPicker;

    #getter for: Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FrequencyPicker;->access$000(Lcom/mediatek/FMRadio/FrequencyPicker;)Lcom/mediatek/FMRadio/ValuePicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/FMRadio/ValuePicker;->setValue(I)V

    .line 86
    .end local v0           #newDecimalValue:I
    :goto_0
    return-void

    .line 81
    :cond_1
    const/16 v2, 0x6c

    if-ne p3, v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/mediatek/FMRadio/FrequencyPicker$1;->this$0:Lcom/mediatek/FMRadio/FrequencyPicker;

    #getter for: Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FrequencyPicker;->access$000(Lcom/mediatek/FMRadio/FrequencyPicker;)Lcom/mediatek/FMRadio/ValuePicker;

    move-result-object v2

    const/16 v3, 0x438

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/ValuePicker;->setValue(I)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FrequencyPicker$1;->this$0:Lcom/mediatek/FMRadio/FrequencyPicker;

    #getter for: Lcom/mediatek/FMRadio/FrequencyPicker;->mDecimalSpinner:Lcom/mediatek/FMRadio/ValuePicker;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FrequencyPicker;->access$000(Lcom/mediatek/FMRadio/FrequencyPicker;)Lcom/mediatek/FMRadio/ValuePicker;

    move-result-object v2

    mul-int/lit8 v3, p3, 0xa

    rem-int/lit8 v4, v1, 0xa

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/ValuePicker;->setValue(I)V

    goto :goto_0
.end method
