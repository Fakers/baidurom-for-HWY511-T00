.class Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmRadioServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    .line 1942
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1943
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1948
    const/4 v3, 0x0

    .line 1949
    .local v3, isPowerup:Z
    const/4 v6, 0x1

    .line 1951
    .local v6, isSwitch:Z
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 2089
    :goto_0
    :pswitch_0
    return-void

    .line 1955
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1956
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->handlePowerUp(Landroid/os/Bundle;)V
    invoke-static {v11, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1961
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_2
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->handlePowernDown()V
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto :goto_0

    .line 1966
    :pswitch_3
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1967
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 1969
    :cond_0
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->unRegisterMediaButton()V
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$2200(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1973
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v11}, Lcom/mediatek/FMRadio/FMRadioService;->powerDown()Z

    .line 1974
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->closeDevice()Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    .line 1976
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1977
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->release()V

    .line 1978
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$1502(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1981
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Landroid/os/Bundle;-><init>(I)V

    .line 1982
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "callback_flag"

    const/16 v12, 0xb

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1983
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v11, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1988
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1989
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "switch_anntenna_value"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$2500(Lcom/mediatek/FMRadio/FMRadioService;I)I

    move-result v11

    if-nez v11, :cond_2

    const/4 v6, 0x1

    .line 1990
    :goto_1
    const-string v11, "FmRx/Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FmServiceHandler.switch anntenna:isWitch:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1989
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1999
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2000
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "frequency"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2001
    .local v10, tuneStation:F
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z
    invoke-static {v11, v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v7

    .line 2002
    .local v7, isTune:Z
    const-string v11, "FmRx/Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isTune = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    const/4 v11, 0x4

    invoke-direct {v0, v11}, Landroid/os/Bundle;-><init>(I)V

    .line 2004
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "callback_flag"

    const/16 v12, 0xf

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2005
    const-string v11, "key_is_tune"

    invoke-virtual {v0, v11, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2006
    const-string v11, "key_tune_to_station"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2007
    const-string v11, "key_is_power_up"

    iget-object v12, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2008
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v11, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2013
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v7           #isTune:Z
    .end local v10           #tuneStation:F
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2014
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v12, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$2702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2015
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmManualTuning(Z)V

    .line 2016
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "frequency"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    const-string v13, "option"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->seekStation(FZ)F
    invoke-static {v11, v12, v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;FZ)F

    move-result v8

    .line 2017
    .local v8, seekStation:F
    const/4 v5, 0x0

    .line 2018
    .local v5, isSeekTune:Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v9

    .line 2019
    .local v9, station:I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2020
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z
    invoke-static {v11, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v5

    .line 2022
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    const/4 v11, 0x2

    invoke-direct {v0, v11}, Landroid/os/Bundle;-><init>(I)V

    .line 2023
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "callback_flag"

    const/16 v12, 0xf

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2024
    const-string v11, "key_is_tune"

    invoke-virtual {v0, v11, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2025
    const-string v11, "key_tune_to_station"

    invoke-virtual {v0, v11, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2026
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v11, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    .line 2027
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$2702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2028
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmManualTuning(Z)V

    goto/16 :goto_0

    .line 2033
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v5           #isSeekTune:Z
    .end local v8           #seekStation:F
    .end local v9           #station:I
    :pswitch_7
    const/4 v1, 0x0

    .line 2034
    .local v1, channels:[I
    const/4 v4, 0x1

    .line 2035
    .local v4, isScan:Z
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 2036
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    sget v12, Lcom/mediatek/FMRadio/FMRadioUtils;->DEFAULT_STATION_FLOAT:F

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$2900(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2037
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "com.huawei.android.FMRadio.openfm"

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 2038
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startScan()[I
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)[I

    move-result-object v1

    .line 2040
    :cond_4
    if-nez v1, :cond_5

    .line 2041
    const-string v11, "FmRx/Service"

    const-string v12, "startScan failed"

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "com.huawei.android.FMRadio.autotunecomplete"

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 2043
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v12, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$3100(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v12

    int-to-float v12, v12

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    .line 2056
    :goto_2
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v11}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 2057
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v12, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;Z)I

    goto/16 :goto_0

    .line 2046
    :cond_5
    const/4 v11, 0x0

    aget v11, v1, v11

    const/16 v12, -0x64

    if-ne v11, v12, :cond_6

    .line 2047
    const-string v11, "FmRx/Service"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "user canceled scan:channels[0]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const/4 v4, 0x0

    goto :goto_2

    .line 2050
    :cond_6
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "com.huawei.android.FMRadio.autotunecomplete"

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 2051
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v12, 0x0

    aget v12, v1, v12

    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v12

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    .line 2052
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v12, 0x0

    aget v12, v1, v12

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurFrequency:I
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$3102(Lcom/mediatek/FMRadio/FMRadioService;I)I

    goto :goto_2

    .line 2062
    .end local v1           #channels:[I
    .end local v4           #isScan:Z
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2063
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "key_audiofocus_changed"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2064
    .local v2, focusState:I
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocus(I)V
    invoke-static {v11, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3300(Lcom/mediatek/FMRadio/FMRadioService;I)V

    goto/16 :goto_0

    .line 2068
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #focusState:I
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2069
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "option"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$3400(Lcom/mediatek/FMRadio/FMRadioService;Z)I

    goto/16 :goto_0

    .line 2073
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2074
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "option"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setAudioChannel(Z)Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$3500(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 2078
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2079
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v12, "option"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;Z)I

    goto/16 :goto_0

    .line 2083
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_c
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->activeAF()I
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$3600(Lcom/mediatek/FMRadio/FMRadioService;)I

    goto/16 :goto_0

    .line 1951
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
