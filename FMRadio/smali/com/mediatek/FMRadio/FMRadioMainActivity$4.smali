.class Lcom/mediatek/FMRadio/FMRadioMainActivity$4;
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
    .line 190
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 193
    const-string v0, "FMRadioMainActivity"

    const-string v1, "mListButton : OnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->enterChannelList()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V

    .line 195
    return-void
.end method
