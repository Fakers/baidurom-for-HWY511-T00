.class public interface abstract Lcom/mediatek/common/wifi/IWifiFwkExt;
.super Ljava/lang/Object;
.source "IWifiFwkExt.java"


# static fields
.field public static final AUTOCONNECT_ENABLE_ALL_NETWORKS:Ljava/lang/String; = "com.mediatek.common.wifi.AUTOCONNECT_ENABLE_ALL_NETWORK"

.field public static final AUTOCONNECT_SETTINGS_CHANGE:Ljava/lang/String; = "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"


# virtual methods
.method public abstract defaultFrameworkScanIntervalMs()I
.end method

.method public abstract getApDefaultSsid()Ljava/lang/String;
.end method

.method public abstract getSecurity(Landroid/net/wifi/ScanResult;)I
.end method

.method public abstract getSecurity(Landroid/net/wifi/WifiConfiguration;)I
.end method

.method public abstract hasConnectableAp()Z
.end method

.method public abstract hasCustomizedAutoConnect()Z
.end method

.method public abstract init()V
.end method

.method public abstract isWifiConnecting(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract shouldAutoConnect()Z
.end method

.method public abstract shouldEnableAllNetworksForCompletion()Z
.end method

.method public abstract shouldEnableAllNetworksForScreenOn()Z
.end method

.method public abstract suspendNotification()V
.end method
