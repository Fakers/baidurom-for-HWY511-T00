.class Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UsbDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/UsbDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/UsbDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/UsbDataStateTracker;Landroid/net/UsbDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;-><init>(Landroid/net/UsbDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 190
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, apnType:Ljava/lang/String;
    const-string v5, "UsbDataStateTracker"

    const-string v7, "Broadcast received: mediatek.intent.action.USB_DATA_STATE"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    .end local v1           #apnType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local v1       #apnType:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 199
    const-class v5, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 201
    .local v4, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, reason:Ljava/lang/String;
    const-string v5, "apn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, apnName:Ljava/lang/String;
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    const-string/jumbo v7, "networkRoaming"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 206
    const-string v5, "UsbDataStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " setting isAvailable to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "networkUnvailable"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    const-string/jumbo v5, "networkUnvailable"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 213
    const-string v7, "UsbDataStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received state="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", old="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v8}, Landroid/net/UsbDataStateTracker;->access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", reason="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_4

    const-string v5, "(unspecified)"

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    if-eq v5, v4, :cond_7

    .line 217
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #setter for: Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v5, v4}, Landroid/net/UsbDataStateTracker;->access$402(Landroid/net/UsbDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 218
    sget-object v5, Landroid/net/UsbDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 220
    :pswitch_0
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-virtual {v5}, Landroid/net/UsbDataStateTracker;->isTeardownRequested()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    invoke-virtual {v5, v6}, Landroid/net/UsbDataStateTracker;->setTeardownRequested(Z)V

    .line 224
    :cond_2
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v3, v0}, Landroid/net/UsbDataStateTracker;->access$500(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v5, v6

    .line 209
    goto :goto_1

    :cond_4
    move-object v5, v3

    .line 213
    goto :goto_2

    .line 233
    :pswitch_1
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v3, v0}, Landroid/net/UsbDataStateTracker;->access$500(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :pswitch_2
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v3, v0}, Landroid/net/UsbDataStateTracker;->access$500(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :pswitch_3
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string/jumbo v5, "linkProperties"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v5}, Landroid/net/UsbDataStateTracker;->access$602(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 241
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v5

    if-nez v5, :cond_5

    .line 242
    const-string v5, "UsbDataStateTracker"

    const-string v6, "CONNECTED event did not supply link properties."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5, v6}, Landroid/net/UsbDataStateTracker;->access$602(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 245
    :cond_5
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v5

    const-string v6, "192.168.0.1"

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 246
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v5

    const-string v6, "208.67.222.222"

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 248
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string/jumbo v5, "linkCapabilities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v6, v5}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 250
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v5

    if-nez v5, :cond_6

    .line 251
    const-string v5, "UsbDataStateTracker"

    const-string v6, "CONNECTED event did not supply link capabilities."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v6, Landroid/net/LinkCapabilities;

    invoke-direct {v6}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v5, v6}, Landroid/net/UsbDataStateTracker;->access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 254
    :cond_6
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v3, v0}, Landroid/net/UsbDataStateTracker;->access$500(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_7
    const-string/jumbo v5, "linkPropertiesChanged"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    const-string/jumbo v5, "linkProperties"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v5}, Landroid/net/UsbDataStateTracker;->access$602(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 261
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$600(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v5

    if-nez v5, :cond_8

    .line 262
    const-string v5, "UsbDataStateTracker"

    const-string v6, "No link property in LINK_PROPERTIES change event."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5, v6}, Landroid/net/UsbDataStateTracker;->access$602(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 266
    :cond_8
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v6, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$800(Landroid/net/UsbDataStateTracker;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #getter for: Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/UsbDataStateTracker;->access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 270
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 273
    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #apnType:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #reason:Ljava/lang/String;
    .end local v4           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.READY_FOR_USBINTERNET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 275
    iget-object v5, p0, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;->this$0:Landroid/net/UsbDataStateTracker;

    #calls: Landroid/net/UsbDataStateTracker;->onHandleReadyForUsbInternet()V
    invoke-static {v5}, Landroid/net/UsbDataStateTracker;->access$900(Landroid/net/UsbDataStateTracker;)V

    goto/16 :goto_0

    .line 278
    :cond_a
    const-string v5, "UsbDataStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast received: ignore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
