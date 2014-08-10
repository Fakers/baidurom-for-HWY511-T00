.class public interface abstract Lcom/mediatek/common/agps/MtkAgpsManager;
.super Ljava/lang/Object;
.source "MtkAgpsManager.java"


# static fields
.field public static final AGPS_DIALOG_MESSAGE:Ljava/lang/String; = "com.mediatek.agps.AGPS_DIALOG_MESSAGE"

.field public static final AGPS_DISABLE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.DISABLE_UPDATED"

.field public static final AGPS_MESSAGE:Ljava/lang/String; = "com.mediatek.agps.AGPS_MESSAGE"

.field public static final AGPS_MODE_MA:I = 0x0

.field public static final AGPS_MODE_MB:I = 0x1

.field public static final AGPS_MODE_STANDALONE:I = 0x2

.field public static final AGPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final AGPS_NI_RESPONSE_DENY:I = 0x2

.field public static final AGPS_NI_RESPONSE_NO_RESP:I = 0x0

.field public static final AGPS_NOTIFY_ALLOW_NO_ANSWER:I = 0x2

.field public static final AGPS_NOTIFY_CNT:I = 0x5

.field public static final AGPS_NOTIFY_DENY_NO_ANSWER:I = 0x3

.field public static final AGPS_NOTIFY_NONE:I = 0x0

.field public static final AGPS_NOTIFY_ONLY:I = 0x1

.field public static final AGPS_NOTIFY_PRIVACY:I = 0x4

.field public static final AGPS_OMACP_PROFILE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.OMACP_UPDATED"

.field public static final AGPS_PROFILE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.PROFILE_UPDATED"

.field public static final AGPS_STATUS_UPDATE:Ljava/lang/String; = "com.mediatek.agps.STATUS_UPDATED"

.field public static final AREA_EVENT_TYPE_ENTERING:I = 0x0

.field public static final AREA_EVENT_TYPE_INSIDE:I = 0x1

.field public static final AREA_EVENT_TYPE_LEAVING:I = 0x3

.field public static final AREA_EVENT_TYPE_OUTSIDE:I = 0x2

.field public static final EPO_EVENT:Ljava/lang/String; = "com.mediatek.agps.EPO_EVENT"

.field public static final EPO_EVENT_SERVER_CONNECTED:I = 0x17

.field public static final EPO_EVENT_SERVER_CONNECT_BEGIN:I = 0x16

.field public static final EPO_EVENT_SERVER_DATA_RECEIVED:I = 0x18

.field public static final EPO_EVENT_SERVER_DATA_VALID:I = 0x1a

.field public static final EPO_EVENT_SERVER_DISCONNECTED:I = 0x19

.field public static final LAT_SIGN_NORTH:I = 0x0

.field public static final LAT_SIGN_SOUTH:I = 0x1

.field public static final POS_METHOD_AUTO:I = 0x4

.field public static final POS_METHOD_ECID:I = 0x5

.field public static final POS_METHOD_HISTORICAL:I = 0x7

.field public static final POS_METHOD_NO_POSITION:I = 0x6

.field public static final POS_METHOD_SESSION_INFO:I = 0x8

.field public static final POS_METHOD_SET_ASSIST:I = 0x0

.field public static final POS_METHOD_SET_ASSIST_PREF:I = 0x2

.field public static final POS_METHOD_SET_BASE:I = 0x1

.field public static final POS_METHOD_SET_BASE_PREF:I = 0x3

.field public static final SET_ID_CNT:I = 0x2

.field public static final SET_ID_IPV4:I = 0x1

.field public static final SET_ID_MSISDN:I = 0x0

.field public static final SI_MODE_MA:I = 0x0

.field public static final SI_MODE_MB:I = 0x1

.field public static final SI_MODE_STANDALONE:I = 0x2

.field public static final TARGET_AREA_TYPE_CIRCULAR:I = 0x0

.field public static final TARGET_AREA_TYPE_ELLIPTICAL:I = 0x1

.field public static final TARGET_AREA_TYPE_POLYGON:I = 0x2


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract getCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
.end method

.method public abstract getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;
.end method

.method public abstract getCpStatus()Z
.end method

.method public abstract getMode()I
.end method

.method public abstract getNiStatus()Z
.end method

.method public abstract getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;
.end method

.method public abstract getRoamingStatus()Z
.end method

.method public abstract getSI3PartyMsisdn()[Ljava/lang/String;
.end method

.method public abstract getSILRMsisdn()Ljava/lang/String;
.end method

.method public abstract getStatus()Z
.end method

.method public abstract getUpStatus()Z
.end method

.method public abstract niUserResponse(II)V
.end method

.method public abstract setCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V
.end method

.method public abstract setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V
.end method

.method public abstract setCpEnable(Z)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract setNiEnable(Z)V
.end method

.method public abstract setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
.end method

.method public abstract setRoamingEnable(Z)V
.end method

.method public abstract setSI3PartyMsisdn([Ljava/lang/String;)V
.end method

.method public abstract setSILRMsisdn(Ljava/lang/String;)V
.end method

.method public abstract setUpEnable(Z)V
.end method

.method public abstract startSIAreaEvent()V
.end method

.method public abstract startSILR()V
.end method

.method public abstract startSIPeiodic()V
.end method

.method public abstract stopTriggeredSession()V
.end method
