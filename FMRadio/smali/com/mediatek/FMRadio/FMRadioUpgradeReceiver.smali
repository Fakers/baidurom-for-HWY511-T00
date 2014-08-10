.class public Lcom/mediatek/FMRadio/FMRadioUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioUpgradeReceiver.java"


# static fields
.field private static final REFS_DB_VERSION:Ljava/lang/String; = "db_version"

.field private static final TABLE_NAME:Ljava/lang/String; = "StationList"

.field private static final TAG:Ljava/lang/String; = "FMRadioUpgradeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 55
    const-string v2, "FMRadioUpgradeReceiver"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "db_version"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, prefVersion:I
    if-eq v0, v5, :cond_0

    .line 58
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "db_version"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    invoke-static {p1, v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->doClearStations(Landroid/content/Context;Z)Z

    .line 62
    :cond_0
    return-void
.end method
