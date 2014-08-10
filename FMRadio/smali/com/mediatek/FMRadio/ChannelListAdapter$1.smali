.class Lcom/mediatek/FMRadio/ChannelListAdapter$1;
.super Landroid/os/Handler;
.source "ChannelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/ChannelListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mediatek/FMRadio/ChannelListAdapter$1;->this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListAdapter$1;->this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;

    #getter for: Lcom/mediatek/FMRadio/ChannelListAdapter;->leftAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ChannelListAdapter;->access$000(Lcom/mediatek/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListAdapter$1;->this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;

    #getter for: Lcom/mediatek/FMRadio/ChannelListAdapter;->rightAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ChannelListAdapter;->access$100(Lcom/mediatek/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListAdapter$1;->this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;

    #getter for: Lcom/mediatek/FMRadio/ChannelListAdapter;->centerAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ChannelListAdapter;->access$200(Lcom/mediatek/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListAdapter$1;->this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;

    #getter for: Lcom/mediatek/FMRadio/ChannelListAdapter;->leftAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ChannelListAdapter;->access$000(Lcom/mediatek/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 55
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListAdapter$1;->this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;

    #getter for: Lcom/mediatek/FMRadio/ChannelListAdapter;->rightAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ChannelListAdapter;->access$100(Lcom/mediatek/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 56
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListAdapter$1;->this$0:Lcom/mediatek/FMRadio/ChannelListAdapter;

    #getter for: Lcom/mediatek/FMRadio/ChannelListAdapter;->centerAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mediatek/FMRadio/ChannelListAdapter;->access$200(Lcom/mediatek/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
