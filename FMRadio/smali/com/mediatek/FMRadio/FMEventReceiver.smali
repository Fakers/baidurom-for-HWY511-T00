.class public Lcom/mediatek/FMRadio/FMEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMEventReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    .line 19
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, intentAction:Ljava/lang/String;
    const-string v2, "FMEventReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    invoke-static {p1, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    goto :goto_0

    .line 27
    :cond_2
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    .local v0, airPlaneEnable:Z
    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    goto :goto_0
.end method
