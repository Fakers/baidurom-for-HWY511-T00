.class public final Lcom/mediatek/common/MediatekClassFactory;
.super Ljava/lang/Object;
.source "MediatekClassFactory.java"


# static fields
.field private static final DEBUG_GETINSTANCE:Z = true

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final TAG:Ljava/lang/String; = "MediatekClassFactory"

.field private static commonInterfaceMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mOPFactoryName:Ljava/lang/String; = "com.mediatek.op.MediatekOPClassFactory"

.field private static mOpChecked:Z

.field private static mOpGetIfClassName:Ljava/lang/reflect/Method;

.field private static opInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/common/MediatekClassFactory;->mOpChecked:Z

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    .line 128
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const-string v2, "com.mediatek.telephony.SimInfoUpdateAdp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/aee/IExceptionLog;

    const-string v2, "com.mediatek.exceptionlog.ExceptionLog"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/lowstorage/ILowStorageHandle;

    const-string v2, "com.mediatek.lowstorage.LowStorageHandle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "com.mediatek.agps.MtkAgpsManagerImpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const-string v2, "com.mediatek.agps.MtkAgpsManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/dcfdecoder/IDcfDecoder;

    const-string v2, "com.mediatek.dcfdecoder.DcfDecoder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/epo/MtkEpoClientManager;

    const-string v2, "com.mediatek.epo.MtkEpoClientManagerImpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    const-string v2, "com.mediatek.epo.MtkEpoClientManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/gifdecoder/IGifDecoder;

    const-string v2, "com.mediatek.gifdecoder.GifDecoder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const-string v2, "com.mediatek.audioprofile.AudioProfileService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileManager;

    const-string v2, "com.mediatek.audioprofile.AudioProfileManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/tvout/ITVOUTNative;

    const-string v2, "com.mediatek.tvout.TVOUTNative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/hdmi/IHDMIObserver;

    const-string v2, "com.mediatek.hdmi.HDMIObserver"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/hdmi/IHDMINative;

    const-string v2, "com.mediatek.hdmi.HDMINative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    const-string v2, "com.mediatek.voicecommand.app.VoiceCommandManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    const-string v2, "com.mediatek.voicecommand.app.VoicePhoneDetection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/amsplus/IAmsPlus;

    const-string v2, "com.mediatek.amsplus.ActivityStackPlus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const-string v2, "com.mediatek.msglogger.MessageMonitorService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;

    const-string v2, "com.mediatek.msglogger.MessageLoggerWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IBipManagerExt;

    const-string v2, "com.mediatek.internal.telephony.cat.BipManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/ISearchEngineManager;

    const-string v2, "com.mediatek.search.SearchEngineManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const-string v2, "com.mediatek.search.SearchEngineManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    .line 177
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/IFwkExt;

    const-string v2, "com.mediatek.op.FwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/wifi/IWifiFwkExt;

    const-string v2, "com.mediatek.op.wifi.DefaultWifiFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/net/IConnectivityServiceExt;

    const-string v2, "com.mediatek.op.net.DefaultConnectivityServiceExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/util/IPatterns;

    const-string v2, "com.mediatek.op.util.DefaultPatterns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/bootanim/IBootAnimExt;

    const-string v2, "com.mediatek.op.bootanim.DefaultBootAnimExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    const-string v2, "com.mediatek.op.policy.DefaultKeyguardUtilExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    const-string v2, "com.mediatek.op.telephony.ServiceStateExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITetheringExt;

    const-string v2, "com.mediatek.op.telephony.TetheringExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const-string v2, "com.mediatek.op.telephony.PhoneNumberExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IGsmConnectionExt;

    const-string v2, "com.mediatek.op.telephony.GsmConnectionExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    const-string v2, "com.mediatek.op.telephony.TelephonyExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ICallerInfoExt;

    const-string v2, "com.mediatek.op.telephony.CallerInfoExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/media/IOmaSettingHelper;

    const-string v2, "com.mediatek.op.media.DefaultOmaSettingHelper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/media/IAudioServiceExt;

    const-string v2, "com.mediatek.common.media.IAudioServiceExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    const-string v2, "com.mediatek.op.audioprofile.DefaultAudioProfileExtension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    const-string v2, "com.mediatek.op.audioprofile.DefaultProfileStatesGetter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IWapPushFwkExt;

    const-string v2, "com.mediatek.op.sms.WapPushFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IDupSmsFilterExt;

    const-string v2, "com.mediatek.op.sms.DupSmsFilterExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyProviderExt;

    const-string v2, "com.mediatek.op.telephony.TelephonyProviderExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IGsmDCTExt;

    const-string v2, "com.mediatek.op.telephony.GsmDCTExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    .line 658
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createInstance(): Begin = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v5, 0x0

    .line 232
    .local v5, ifClassName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 235
    .local v9, obj:Ljava/lang/Object;
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create Instance with :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v14, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 240
    sget-object v14, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ifClassName:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 243
    .restart local v5       #ifClassName:Ljava/lang/String;
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create Instance from mediatek-framework library :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 544
    .end local v9           #obj:Ljava/lang/Object;
    :goto_0
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createInstance(): End = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-nez v9, :cond_1a

    .line 549
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "null object during finding :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14}, Ljava/lang/RuntimeException;-><init>()V

    throw v14

    .line 249
    .restart local v9       #obj:Ljava/lang/Object;
    :cond_0
    sget-object v14, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 251
    invoke-static/range {p0 .. p0}, Lcom/mediatek/common/MediatekClassFactory;->getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 254
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create Instance from operator library :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-class v14, Lcom/mediatek/common/util/IPatterns;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_2

    .line 259
    const/4 v10, 0x0

    .line 261
    .local v10, patternsObj:Ljava/lang/Object;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 262
    .local v2, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_1

    .line 263
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getWebUrl"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 264
    const-string v14, "getWebUrl"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 266
    .local v7, method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1

    .line 267
    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v10           #patternsObj:Ljava/lang/Object;
    :cond_1
    move-object v9, v10

    .line 278
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    goto/16 :goto_0

    .line 272
    .restart local v10       #patternsObj:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 273
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createInstance:got exception for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v10

    goto :goto_1

    .line 279
    .end local v3           #e:Ljava/lang/Exception;
    .end local v10           #patternsObj:Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 281
    :cond_3
    const-class v14, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_6

    .line 282
    const/4 v8, 0x0

    .line 284
    .local v8, mpoDecoderObj:Ljava/lang/Object;
    :try_start_1
    const-string v14, "com.mediatek.mpo.MpoDecoder"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 285
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_4

    .line 286
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "decodeFile"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 287
    const-string v14, "decodeFile"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 289
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_4

    .line 290
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v8           #mpoDecoderObj:Ljava/lang/Object;
    :cond_4
    :goto_2
    move-object v9, v8

    .line 306
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    goto/16 :goto_0

    .line 292
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v8       #mpoDecoderObj:Ljava/lang/Object;
    :cond_5
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "decodeUri"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 293
    const-string v14, "decodeUri"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/ContentResolver;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Landroid/net/Uri;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 295
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_4

    .line 296
    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_2

    .line 301
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .line 302
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for MpoDecoder"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v8

    goto :goto_3

    .line 306
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #mpoDecoderObj:Ljava/lang/Object;
    :cond_6
    const-class v14, Lcom/mediatek/common/stereo3d/IJpsParser;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_8

    .line 307
    const/4 v6, 0x0

    .line 309
    .local v6, jpsParserObj:Ljava/lang/Object;
    :try_start_2
    const-string v14, "com.mediatek.stereo3d.JpsParser"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 310
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_7

    .line 312
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "parse"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 313
    const-string v14, "parse"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/io/File;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 316
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_7

    .line 317
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .end local v6           #jpsParserObj:Ljava/lang/Object;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_7
    move-object v9, v6

    .line 326
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4
    goto/16 :goto_0

    .line 321
    .restart local v6       #jpsParserObj:Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 322
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for JpsParser"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v6

    goto :goto_4

    .line 326
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #jpsParserObj:Ljava/lang/Object;
    :cond_8
    const-class v14, Lcom/mediatek/common/stereo3d/IStereo3DConversion;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_d

    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, bitmapObj:Ljava/lang/Object;
    :try_start_3
    const-string v14, "com.mediatek.stereo3d.Stereo3DConversion"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 331
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_9

    .line 332
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Stereo3DConversion args legnth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "execute"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 337
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    .line 338
    const-string v14, "execute"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 341
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_9

    .line 342
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bitmapObj:Ljava/lang/Object;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_9
    :goto_5
    move-object v9, v1

    .line 380
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_6
    goto/16 :goto_0

    .line 344
    .restart local v1       #bitmapObj:Ljava/lang/Object;
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_b

    .line 345
    const-string v14, "execute"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 349
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_9

    .line 350
    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 353
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_b
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_c

    .line 354
    const-string v14, "execute"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 358
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_9

    .line 359
    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 362
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_c
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_9

    .line 363
    const-string v14, "execute"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 367
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_9

    .line 368
    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto/16 :goto_5

    .line 374
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v3

    .line 375
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for Stereo3DConversion"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v1

    goto/16 :goto_6

    .line 380
    .end local v1           #bitmapObj:Ljava/lang/Object;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_d
    const-class v14, Lcom/mediatek/common/geocoding/IGeoCodingQuery;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_f

    .line 381
    const/4 v4, 0x0

    .line 383
    .local v4, geoCodingQueryObj:Ljava/lang/Object;
    :try_start_4
    const-string v14, "com.mediatek.geocoding.GeoCodingQuery"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 384
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_e

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_e

    .line 385
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getInstance"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 386
    const-string v14, "getInstance"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 387
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_e

    .line 388
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    .end local v4           #geoCodingQueryObj:Ljava/lang/Object;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_e
    move-object v9, v4

    .line 397
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_7
    goto/16 :goto_0

    .line 392
    .restart local v4       #geoCodingQueryObj:Ljava/lang/Object;
    :catch_4
    move-exception v3

    .line 393
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for GeoCodingQuery"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v4

    goto :goto_7

    .line 397
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #geoCodingQueryObj:Ljava/lang/Object;
    :cond_f
    const-class v14, Lcom/mediatek/common/pluginmanager/IPluginManager;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_14

    .line 398
    const/4 v12, 0x0

    .line 400
    .local v12, pluginMgr:Ljava/lang/Object;
    :try_start_5
    const-string v14, "com.mediatek.pluginmanager.PluginManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 402
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_10

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_10

    .line 403
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PluginManager args length: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "create"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 405
    const-string v14, "MediatekClassFactory"

    const-string v15, "IPluginManager.CREATE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_11

    .line 413
    const-string v14, "create"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 417
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_10

    .line 418
    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x0

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v12           #pluginMgr:Ljava/lang/Object;
    :cond_10
    :goto_8
    move-object v9, v12

    .line 468
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_9
    goto/16 :goto_0

    .line 421
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v12       #pluginMgr:Ljava/lang/Object;
    :cond_11
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_10

    .line 422
    const-string v14, "create"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 426
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_10

    .line 427
    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_8

    .line 431
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_12
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "createPluginObject"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 433
    const-string v14, "MediatekClassFactory"

    const-string v15, "IPluginManager.CREATE_PLUGIN_OBJECT"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_13

    .line 443
    const-string v14, "createPluginObject"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 447
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_10

    .line 448
    const/4 v14, 0x0

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x0

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_8

    .line 451
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_13
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x6

    if-ne v14, v15, :cond_10

    .line 452
    const-string v14, "createPluginObject"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 456
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_10

    .line 457
    const/4 v14, 0x0

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x5

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v12

    goto/16 :goto_8

    .line 463
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_5
    move-exception v3

    .line 464
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for PluginManager"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v12

    goto/16 :goto_9

    .line 468
    .end local v3           #e:Ljava/lang/Exception;
    .end local v12           #pluginMgr:Ljava/lang/Object;
    :cond_14
    const-class v14, Lcom/mediatek/common/webkit/IPicker;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_16

    .line 469
    const/4 v11, 0x0

    .line 471
    .local v11, pickerObj:Ljava/lang/Object;
    :try_start_6
    const-string v14, "com.mediatek.webkit.PickerManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 472
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IPicker init args length : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", args[0] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", args[1] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz v2, :cond_15

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_15

    .line 475
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getInstance"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 476
    const-string v14, "getInstance"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 477
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_15

    .line 478
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 479
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IPicker init invoke : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v11           #pickerObj:Ljava/lang/Object;
    :cond_15
    move-object v9, v11

    .line 488
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_a
    goto/16 :goto_0

    .line 483
    :catch_6
    move-exception v3

    .line 484
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for Webkit Picker"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v11

    goto :goto_a

    .line 488
    .end local v3           #e:Ljava/lang/Exception;
    :cond_16
    const-class v14, Lcom/mediatek/common/storage/IStorageManagerEx;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_1f

    .line 489
    const/4 v13, 0x0

    .line 491
    .local v13, storageManagerExObj:Ljava/lang/Object;
    :try_start_7
    const-string v14, "com.mediatek.storage.StorageManagerEx"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 492
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_17

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_17

    .line 493
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getDefaultPath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 494
    const-string v14, "getDefaultPath"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 495
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_17

    .line 496
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v13           #storageManagerExObj:Ljava/lang/Object;
    :cond_17
    :goto_b
    move-object v9, v13

    .line 535
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_c
    goto/16 :goto_0

    .line 498
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v13       #storageManagerExObj:Ljava/lang/Object;
    :cond_18
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "setDefaultPath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 499
    const-string v14, "setDefaultPath"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 500
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_19

    .line 501
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 507
    .end local v13           #storageManagerExObj:Ljava/lang/Object;
    :cond_19
    const/4 v9, 0x0

    .line 552
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v9           #obj:Ljava/lang/Object;
    :cond_1a
    return-object v9

    .line 508
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v13       #storageManagerExObj:Ljava/lang/Object;
    :cond_1b
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getExternalCacheDir"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 509
    const-string v14, "getExternalCacheDir"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 510
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_17

    .line 511
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_b

    .line 513
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_1c
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getExternalStoragePath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 514
    const-string v14, "getExternalStoragePath"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 515
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_17

    .line 516
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_b

    .line 518
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_1d
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getInternalStoragePath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 519
    const-string v14, "getInternalStoragePath"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 520
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_17

    .line 521
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_b

    .line 523
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_1e
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getSdSwapState"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 524
    const-string v14, "getSdSwapState"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 525
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_17

    .line 526
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v13

    goto/16 :goto_b

    .line 530
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_7
    move-exception v3

    .line 531
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for StorageManagerEx"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v13

    goto/16 :goto_c

    .line 536
    .end local v3           #e:Ljava/lang/Exception;
    .end local v13           #storageManagerExObj:Ljava/lang/Object;
    :cond_1f
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createInstance(): End = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "className"
    .parameter "args"

    .prologue
    const/4 v11, 0x0

    .line 558
    if-nez p0, :cond_0

    .line 559
    const-string v10, "MediatekClassFactory"

    const-string v12, "Interface full class name is null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 611
    :goto_0
    return-object v10

    .line 564
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 566
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v10, p1

    if-nez v10, :cond_1

    .line 568
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 574
    .local v3, ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v3

    if-ge v5, v10, :cond_7

    .line 575
    const/4 v7, 0x1

    .line 576
    .local v7, matched:Z
    aget-object v2, v3, v5

    .line 577
    .local v2, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 578
    .local v9, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v10, v9

    array-length v12, p1

    if-eq v10, v12, :cond_3

    .line 574
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 582
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v10, v9

    if-ge v6, v10, :cond_5

    .line 583
    aget-object v8, v9, v6

    .line 584
    .local v8, paramType:Ljava/lang/Class;
    aget-object v10, p1, v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 586
    .local v0, actualType:Ljava/lang/Class;
    const-string v10, "MediatekClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getInstanceHelper: paramType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actualType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 592
    :cond_4
    const-string v10, "MediatekClassFactory"

    const-string v12, "Parameter not matched, skip"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v7, 0x0

    .line 602
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v8           #paramType:Ljava/lang/Class;
    :cond_5
    if-eqz v7, :cond_2

    .line 603
    const-string v10, "MediatekClassFactory"

    const-string v12, "Constructor matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 597
    .restart local v0       #actualType:Ljava/lang/Class;
    .restart local v8       #paramType:Ljava/lang/Class;
    :cond_6
    const-string v10, "MediatekClassFactory"

    const-string v12, "Parameter matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 607
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #matched:Z
    .end local v8           #paramType:Ljava/lang/Class;
    .end local v9           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 608
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "MediatekClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #e:Ljava/lang/Exception;
    :cond_7
    move-object v10, v11

    .line 611
    goto/16 :goto_0
.end method

.method private static getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 618
    .local v3, ifClassName:Ljava/lang/String;
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 623
    :try_start_0
    const-string v4, "com.mediatek.op.MediatekOPClassFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 624
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getOpIfClassName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 637
    :try_start_1
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 647
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 649
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ifClassName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 652
    .restart local v3       #ifClassName:Ljava/lang/String;
    :cond_2
    return-object v3

    .line 626
    :catch_0
    move-exception v2

    .line 627
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "MediatekClassFactory"

    const-string v5, "OP not exist!, Get obj from default class"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 629
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Such Method Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 639
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 641
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 642
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvocationTargetException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
