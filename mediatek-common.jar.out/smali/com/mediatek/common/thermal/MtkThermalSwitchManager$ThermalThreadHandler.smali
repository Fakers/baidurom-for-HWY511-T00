.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;
.super Landroid/os/Handler;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_APP_RESUMED:I = 0x0

.field private static final MESSAGE_TIMER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    .line 168
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    return-void
.end method

.method private checkIsDTM()Z
    .locals 8

    .prologue
    .line 246
    const/4 v5, 0x0

    .line 247
    .local v5, ret:Z
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/.tp.settings"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 251
    iget-object v6, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const-string v7, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    #calls: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->execShellCommand(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$300(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Ljava/lang/String;)V

    .line 254
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    const-string v6, "/data/.tp.settings"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 261
    .local v3, instream:Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 263
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 264
    .local v2, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 267
    .local v0, buffReader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 268
    const-string v6, "/etc/.tp/thermal.conf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    const/4 v5, 0x1

    .line 275
    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v3           #instream:Ljava/io/InputStream;
    :cond_2
    :goto_0
    return v5

    .line 276
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private startTimer(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 237
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 238
    .local v0, msg:Landroid/os/Message;
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->removeMessages(I)V

    .line 243
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 174
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 179
    .local v0, dtm:Z
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thermal state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dtm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 182
    if-ne v5, v0, :cond_0

    .line 184
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x2

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 185
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #calls: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    .line 186
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 187
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    .line 188
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x3

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0           #dtm:Z
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ThermalSwitchManager"

    const-string v3, "Exception in ThermalThreadHandler.handleMessage: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dtm:Z
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 192
    if-ne v5, v0, :cond_2

    .line 194
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x2

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 195
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 196
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #calls: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToThermalProtection()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$100(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    .line 197
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    .line 198
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x3

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    goto/16 :goto_0

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 203
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    goto/16 :goto_0

    .line 212
    .end local v0           #dtm:Z
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 213
    .restart local v0       #dtm:Z
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thermal state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dtm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #getter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$000(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 217
    if-ne v5, v0, :cond_3

    .line 219
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    goto/16 :goto_0

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x4

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I

    .line 224
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    #calls: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->changeToDynamicThermalManagement()V
    invoke-static {v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$200(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    .line 225
    iget-object v2, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->mState:I
    invoke-static {v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->access$002(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
