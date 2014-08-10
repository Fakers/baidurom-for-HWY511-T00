.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;


# direct methods
.method constructor <init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, action:Ljava/lang/String;
    const-string v10, "ThermalSwitchManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received intent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 290
    const v1, 0x7fffffff

    .line 291
    .local v1, appTimeout:I
    const/16 v9, 0x3c

    .line 292
    .local v9, resetTime:I
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/.tp.settings"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, f:Ljava/io/File;
    sget-object v10, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 296
    .local v8, o:Ljava/lang/String;
    sget-object v10, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v1, :cond_0

    .line 297
    sget-object v10, Lcom/mediatek/common/thermal/MtkThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 300
    .end local v8           #o:Ljava/lang/String;
    :cond_1
    const-string v10, "ThermalSwitchManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smallest app timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " seconds"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 305
    iget-object v10, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const-string v11, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    #calls: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Ljava/lang/String;)V

    .line 308
    :cond_2
    new-instance v3, Ljava/io/File;

    .end local v3           #f:Ljava/io/File;
    const-string v10, "/data/.tp.settings"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 312
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 315
    .local v6, instream:Ljava/io/InputStream;
    if-eqz v6, :cond_3

    .line 317
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 318
    .local v5, inputReader:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 321
    .local v2, buffReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 322
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 323
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 329
    .end local v2           #buffReader:Ljava/io/BufferedReader;
    .end local v5           #inputReader:Ljava/io/InputStreamReader;
    .end local v7           #line:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v6           #instream:Ljava/io/InputStream;
    :cond_4
    :goto_1
    const-string v10, "ThermalSwitchManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "thermal reset time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-ge v1, v9, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljunit/framework/Assert;->assertFalse(Z)V

    .line 338
    iget-object v10, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$1;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v11, 0x1

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v10, v11}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 340
    .end local v1           #appTimeout:I
    .end local v3           #f:Ljava/io/File;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #resetTime:I
    :cond_5
    return-void

    .line 336
    .restart local v1       #appTimeout:I
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #resetTime:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 330
    :catch_0
    move-exception v10

    goto :goto_1
.end method
