.class Lcom/mediatek/FMRadio/ChannelListActivity$2;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/ChannelListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SEARCH_KEEP_COLLECT:I = 0x0

.field private static final SEARCH_NOT_KEEP_COLLECT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mediatek/FMRadio/ChannelListActivity$2;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 249
    packed-switch p2, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity$2;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity$2;->this$0:Lcom/mediatek/FMRadio/ChannelListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
