.class Lcom/mediatek/FMRadio/ChannelListActivity$3;
.super Landroid/os/Handler;
.source "ChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/ChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/mediatek/FMRadio/ChannelListActivity$3;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 300
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity$3;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    #getter for: Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ChannelListActivity;->access$000(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity$3;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    iget-object v0, v0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListAdapter:Lcom/mediatek/FMRadio/ChannelListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
