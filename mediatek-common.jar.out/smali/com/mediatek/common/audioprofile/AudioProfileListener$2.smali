.class Lcom/mediatek/common/audioprofile/AudioProfileListener$2;
.super Landroid/os/Handler;
.source "AudioProfileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/audioprofile/AudioProfileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;


# direct methods
.method constructor <init>(Lcom/mediatek/common/audioprofile/AudioProfileListener;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$2;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :pswitch_0
    const-string v0, "AudioProfileListener"

    const-string v1, "Undefined handle message!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$2;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$2;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onRingerModeChanged(I)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$2;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/common/audioprofile/AudioProfileListener$2;->this$0:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onVibrateSettingChanged(II)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
