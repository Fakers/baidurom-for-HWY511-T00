.class public Lcom/mediatek/telephony/DefaultSimSettings;
.super Ljava/lang/Object;
.source "DefaultSimSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get3GSimId()I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method private static isSimRemoved(J[JI)Z
    .locals 4
    .parameter "defSimId"
    .parameter "curSim"
    .parameter "numSim"

    .prologue
    .line 308
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 309
    const/4 v1, 0x0

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 312
    :cond_1
    const/4 v1, 0x1

    .line 313
    .local v1, isDefaultSimRemoved:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 315
    aget-wide v2, p2, v0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 316
    const/4 v1, 0x0

    .line 317
    goto :goto_0

    .line 313
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 336
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public static setAllDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[J[ZIIZ[IZ)V
    .locals 31
    .parameter "context"
    .parameter "contentResolver"
    .parameter
    .parameter "simIdForSlot"
    .parameter "isSimInserted"
    .parameter "nNewCardCount"
    .parameter "nSimCount"
    .parameter "is3GSwitched"
    .parameter "mInsertSimState"
    .parameter "hasSimRemoved"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;[J[ZIIZ[IZ)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/16 v27, 0x0

    .line 79
    .local v27, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_start_0
    const-class v28, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/DefaultSimSettings;->get3GSimId()I

    move-result v15

    .line 88
    .local v15, n3gSIMSlot:I
    const-string v28, "video_call_sim_setting"

    const-wide/16 v29, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v20

    .line 89
    .local v20, oldVTDefaultSIM:J
    const-string v28, "voice_call_sim_setting"

    const-wide/16 v29, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v22

    .line 91
    .local v22, oldVoiceCallDefaultSIM:J
    const-string v28, "sms_sim_setting"

    const-wide/16 v29, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 92
    .local v18, oldSmsDefaultSIM:J
    const-string v28, "gprs_connection_sim_setting"

    const-wide/16 v29, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 109
    .local v16, oldGprsDefaultSIM:J
    const-string v28, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 110
    .local v4, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v28, 0x1

    move/from16 v0, p6

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    .line 111
    const-wide/16 v28, -0x5

    cmp-long v28, v22, v28

    if-nez v28, :cond_0

    .line 112
    const-string v28, "voice_call_sim_setting"

    const-wide/16 v29, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 116
    :cond_0
    const-wide/16 v28, -0x5

    cmp-long v28, v18, v28

    if-nez v28, :cond_1

    .line 117
    const-string v28, "ro.operator.optr"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 118
    const-string v28, "OP01"

    const-string v29, "ro.operator.optr"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 119
    const-string v28, "sms_sim_setting"

    const-wide/16 v29, -0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 127
    :cond_1
    :goto_1
    const-wide/16 v28, -0x5

    cmp-long v28, v16, v28

    if-nez v28, :cond_2

    .line 128
    invoke-interface/range {v27 .. v27}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 129
    invoke-virtual {v4, v15}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 162
    :cond_2
    :goto_2
    const-wide/16 v5, -0x5

    .line 163
    .local v5, defSIM:J
    const/16 v28, 0x1

    move/from16 v0, p6

    move/from16 v1, v28

    if-le v0, v1, :cond_f

    .line 164
    const-wide/16 v5, -0x1

    .line 169
    :cond_3
    :goto_3
    sget v28, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-wide/from16 v0, v22

    move-object/from16 v2, p3

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/telephony/DefaultSimSettings;->isSimRemoved(J[JI)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 170
    const-string v28, "voice_call_sim_setting"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 173
    :cond_4
    sget v28, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-wide/from16 v0, v18

    move-object/from16 v2, p3

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/telephony/DefaultSimSettings;->isSimRemoved(J[JI)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 174
    move-wide v7, v5

    .line 175
    .local v7, defaultSmsSim:J
    const-string v28, "ro.operator.optr"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 176
    const-string v28, "OP01"

    const-string v29, "ro.operator.optr"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 177
    const/16 v28, 0x1

    move/from16 v0, p6

    move/from16 v1, v28

    if-le v0, v1, :cond_10

    .line 178
    const-wide/16 v7, -0x3

    .line 183
    :cond_5
    :goto_4
    const-string v28, "sms_sim_setting"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 190
    .end local v7           #defaultSmsSim:J
    :cond_6
    sget v28, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-wide/from16 v0, v16

    move-object/from16 v2, p3

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/telephony/DefaultSimSettings;->isSimRemoved(J[JI)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 191
    invoke-interface/range {v27 .. v27}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 192
    if-lez p6, :cond_7

    .line 193
    const-string v28, "default data SIM removed and default data on, switch to 3G SIM"

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 194
    aget-boolean v28, p4, v15

    if-eqz v28, :cond_11

    .line 195
    invoke-virtual {v4, v15}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 243
    :cond_7
    :goto_5
    const-string v28, "gprs_connection_sim_setting"

    const-wide/16 v29, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 244
    .local v10, gprsDefaultSIM:J
    const-wide/16 v28, -0x5

    cmp-long v28, v10, v28

    if-eqz v28, :cond_8

    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-eqz v28, :cond_8

    .line 245
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v26

    .line 246
    .local v26, slot:I
    const/16 v28, -0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_1b

    .line 249
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 304
    .end local v26           #slot:I
    :cond_8
    :goto_6
    return-void

    .line 80
    .end local v4           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v5           #defSIM:J
    .end local v10           #gprsDefaultSIM:J
    .end local v15           #n3gSIMSlot:I
    .end local v16           #oldGprsDefaultSIM:J
    .end local v18           #oldSmsDefaultSIM:J
    .end local v20           #oldVTDefaultSIM:J
    .end local v22           #oldVoiceCallDefaultSIM:J
    :catch_0
    move-exception v9

    .line 81
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 122
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v4       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v15       #n3gSIMSlot:I
    .restart local v16       #oldGprsDefaultSIM:J
    .restart local v18       #oldSmsDefaultSIM:J
    .restart local v20       #oldVTDefaultSIM:J
    .restart local v22       #oldVoiceCallDefaultSIM:J
    :cond_9
    const-string v28, "sms_sim_setting"

    const-wide/16 v29, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_1

    .line 131
    :cond_a
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_2

    .line 133
    :cond_b
    const/16 v28, 0x1

    move/from16 v0, p6

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 134
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    move-wide/from16 v24, v0

    .line 135
    .local v24, simId:J
    const-string v28, "enable_internet_call_value"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 136
    .local v14, isVoipEnabled:I
    invoke-static/range {p0 .. p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_c

    if-eqz v14, :cond_c

    const-wide/16 v28, -0x5

    cmp-long v28, v22, v28

    if-nez v28, :cond_d

    .line 139
    :cond_c
    const-string v28, "voice_call_sim_setting"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 142
    :cond_d
    const-string v28, "sms_sim_setting"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 148
    const-wide/16 v28, -0x5

    cmp-long v28, v16, v28

    if-nez v28, :cond_2

    .line 149
    invoke-interface/range {v27 .. v27}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 150
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 152
    :cond_e
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_2

    .line 165
    .end local v14           #isVoipEnabled:I
    .end local v24           #simId:J
    .restart local v5       #defSIM:J
    :cond_f
    const/16 v28, 0x1

    move/from16 v0, p6

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 166
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto/16 :goto_3

    .line 179
    .restart local v7       #defaultSmsSim:J
    :cond_10
    const/16 v28, 0x1

    move/from16 v0, p6

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 180
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto/16 :goto_4

    .line 197
    .end local v7           #defaultSmsSim:J
    :cond_11
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_5

    .line 200
    :cond_12
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_5

    .line 202
    :cond_13
    invoke-interface/range {v27 .. v27}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 203
    const-wide/16 v28, 0x0

    cmp-long v28, v16, v28

    if-lez v28, :cond_19

    .line 204
    if-lez p5, :cond_15

    .line 205
    const-string v28, "SIM swapped and data on, default switch to 3G SIM"

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 206
    aget-boolean v28, p4, v15

    if-eqz v28, :cond_14

    .line 207
    invoke-virtual {v4, v15}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_5

    .line 209
    :cond_14
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_5

    .line 211
    :cond_15
    const/4 v12, 0x0

    .line 212
    .local v12, hasSIMRepositioned:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_16

    .line 213
    aget v28, p8, v13

    const/16 v29, -0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 214
    const/4 v12, 0x1

    .line 218
    :cond_16
    if-nez p9, :cond_7

    if-eqz v12, :cond_7

    .line 219
    const-string v28, "Some SIM is switched slot, default switch to 3G SIM"

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 220
    aget-boolean v28, p4, v15

    if-eqz v28, :cond_18

    .line 221
    invoke-virtual {v4, v15}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_5

    .line 212
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 223
    :cond_18
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_5

    .line 227
    .end local v12           #hasSIMRepositioned:Z
    .end local v13           #i:I
    :cond_19
    if-lez p5, :cond_7

    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_7

    .line 228
    const-string v28, "All SIM new, data off and default switch data to 3G SIM"

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 229
    aget-boolean v28, p4, v15

    if-eqz v28, :cond_1a

    .line 230
    invoke-virtual {v4, v15}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_5

    .line 232
    :cond_1a
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_5

    .line 251
    .restart local v10       #gprsDefaultSIM:J
    .restart local v26       #slot:I
    :cond_1b
    const-string v28, "gprsDefaultSIM does not exist in slot then skip."

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_6
.end method
