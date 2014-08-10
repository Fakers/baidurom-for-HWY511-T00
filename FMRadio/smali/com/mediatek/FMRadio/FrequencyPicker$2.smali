.class Lcom/mediatek/FMRadio/FrequencyPicker$2;
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
    .line 94
    iput-object p1, p0, Lcom/mediatek/FMRadio/FrequencyPicker$2;->this$0:Lcom/mediatek/FMRadio/FrequencyPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/mediatek/FMRadio/ValuePicker;II)V
    .locals 2
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 96
    div-int/lit8 v0, p2, 0xa

    div-int/lit8 v1, p3, 0xa

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker$2;->this$0:Lcom/mediatek/FMRadio/FrequencyPicker;

    #getter for: Lcom/mediatek/FMRadio/FrequencyPicker;->mIntegerSpinner:Lcom/mediatek/FMRadio/ValuePicker;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FrequencyPicker;->access$100(Lcom/mediatek/FMRadio/FrequencyPicker;)Lcom/mediatek/FMRadio/ValuePicker;

    move-result-object v0

    div-int/lit8 v1, p3, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/ValuePicker;->setValue(I)V

    .line 99
    :cond_0
    return-void
.end method
