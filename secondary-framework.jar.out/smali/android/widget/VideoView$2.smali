.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "mp"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iput v6, v2, Landroid/widget/VideoView;->mCurrentState:I

    .line 384
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 387
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_a

    .line 388
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v5, Landroid/widget/VideoView;->mCanPause:Z

    .line 390
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, v5, Landroid/widget/VideoView;->mCanSeekBack:Z

    .line 392
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    move v2, v4

    :goto_2
    iput-boolean v2, v5, Landroid/widget/VideoView;->mCanSeekForward:Z

    .line 398
    :goto_3
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v2, :cond_3

    .line 399
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, v5, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 401
    :cond_3
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_4

    .line 402
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 404
    :cond_4
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    iput v4, v2, Landroid/widget/VideoView;->mVideoWidth:I

    .line 405
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    iput v4, v2, Landroid/widget/VideoView;->mVideoHeight:I

    .line 407
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v1, v2, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 408
    .local v1, seekToPosition:I
    if-eqz v1, :cond_5

    .line 409
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 411
    :cond_5
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mVideoWidth:I

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mVideoHeight:I

    if-eqz v2, :cond_d

    .line 413
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoWidth:I

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v5, v5, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-interface {v2, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 425
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mTargetState:I

    if-ne v2, v7, :cond_b

    .line 426
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 427
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_6

    .line 428
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 454
    :cond_6
    :goto_4
    return-void

    .end local v1           #seekToPosition:I
    :cond_7
    move v2, v3

    .line 388
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 390
    goto/16 :goto_1

    :cond_9
    move v2, v3

    .line 392
    goto :goto_2

    .line 395
    :cond_a
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iput-boolean v4, v6, Landroid/widget/VideoView;->mCanSeekForward:Z

    iput-boolean v4, v5, Landroid/widget/VideoView;->mCanSeekBack:Z

    iput-boolean v4, v2, Landroid/widget/VideoView;->mCanPause:Z

    goto/16 :goto_3

    .line 430
    .restart local v1       #seekToPosition:I
    :cond_b
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v1, :cond_c

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_6

    .line 432
    :cond_c
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_6

    .line 434
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_4

    .line 441
    :cond_d
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mTargetState:I

    if-ne v2, v7, :cond_e

    .line 442
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 444
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_6

    .line 445
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_4

    .line 447
    :cond_e
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v1, :cond_f

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_6

    .line 449
    :cond_f
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_6

    .line 450
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_4
.end method
