.class public Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMMediaButtonIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMMediaButtonIntentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 26
    const-string v6, "FMMediaButtonIntentReceiver"

    const-string v7, "FM is off and do not handle headset keyevent"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, intentAction:Ljava/lang/String;
    const-string v6, "FMMediaButtonIntentReceiver"

    const-string v7, "unplug and press-key"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 40
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 46
    .local v3, event:Landroid/view/KeyEvent;
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 52
    .local v0, action:I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, command:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 56
    .local v5, keycode:I
    sparse-switch v5, :sswitch_data_0

    .line 71
    :goto_1
    if-eqz v2, :cond_0

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v1, cmdIntent:Landroid/content/Intent;
    const-string v6, "com.mediatek.FMRadio"

    const-string v7, "com.mediatek.FMRadio.FMRadioService"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    const-string v6, "FMMediaButtonIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "operation headset command is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .end local v1           #cmdIntent:Landroid/content/Intent;
    :sswitch_0
    const-string v2, "com.huawei.android.FMRadio.servicecommand.next"

    .line 60
    goto :goto_1

    .line 62
    :sswitch_1
    const-string v2, "com.huawei.android.FMRadio.servicecommand.next"

    .line 63
    goto :goto_1

    .line 65
    :sswitch_2
    const-string v2, "com.huawei.android.FMRadio.servicecommand.previous"

    .line 66
    goto :goto_1

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
    .end sparse-switch
.end method
