.class public Landroid/telephony/TelephonyManager2;
.super Ljava/lang/Object;
.source "TelephonyManager2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TelephonyManager2"

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/TelephonyManager2;


# instance fields
.field private PHONE_SUBINFO_SERVICE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/telephony/TelephonyManager2;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager2;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager2;->sInstance:Landroid/telephony/TelephonyManager2;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iphonesubinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iphonesubinfo2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iphonesubinfo3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iphonesubinfo4"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/telephony/TelephonyManager2;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iphonesubinfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "iphonesubinfo2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "iphonesubinfo3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "iphonesubinfo4"

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/telephony/TelephonyManager2;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 38
    sget-object v1, Landroid/telephony/TelephonyManager2;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 41
    sput-object v0, Landroid/telephony/TelephonyManager2;->sContext:Landroid/content/Context;

    .line 47
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/TelephonyManager2;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager2;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/telephony/TelephonyManager2;->sInstance:Landroid/telephony/TelephonyManager2;

    return-object v0
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 3
    .parameter "simId"

    .prologue
    .line 94
    const-string v0, "TelephonyManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberInfo simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Landroid/telephony/TelephonyManager2;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    const-string v2, "TelephonyManager2"

    const-string v3, "getDeviceId "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager2;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string v2, "TelephonyManager2"

    const-string v3, "getSubscriberId simId "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager2;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
