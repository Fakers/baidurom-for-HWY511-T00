.class Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 137
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 138
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 139
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    :goto_1
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v10, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 140
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    move v8, v7

    .line 139
    goto :goto_1

    .line 144
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 145
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 146
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_2

    move v7, v8

    :cond_2
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 147
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-ne v7, v8, :cond_3

    .line 149
    :try_start_2
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 150
    .local v4, index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 151
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insertRaw save one pdu in index "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .end local v4           #index:I
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    .line 166
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 168
    .local v2, e:Lcom/android/internal/telephony/CommandException;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update SMS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_0

    .line 172
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 152
    .end local v2           #e:Lcom/android/internal/telephony/CommandException;
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Ljava/lang/ClassCastException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2

    .line 162
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catchall_1
    move-exception v7

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 154
    :catch_1
    move-exception v3

    .line 155
    .local v3, ex:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v8, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "-1,"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 178
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 179
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 180
    :try_start_6
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_5

    .line 181
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v9, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 187
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 188
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v7

    .line 183
    :cond_5
    :try_start_7
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "Cannot load Sms records"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 184
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 185
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 193
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 194
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 195
    :try_start_8
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_6

    :goto_4
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v10, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 196
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v7

    :cond_6
    move v8, v7

    .line 195
    goto :goto_4

    .line 201
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 203
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 204
    :try_start_9
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_8

    .line 205
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 207
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v7

    if-nez v7, :cond_7

    .line 208
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v9, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-direct {v9}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;-><init>()V

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/mediatek/common/telephony/IccSmsStorageStatus;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 211
    :cond_7
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 213
    .local v6, tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v7

    iget v9, v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    iput v9, v7, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    .line 214
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v7

    iget v9, v6, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    iput v9, v7, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    .line 219
    .end local v6           #tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    :goto_5
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v7

    .line 217
    :cond_8
    :try_start_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    .line 224
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 225
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 226
    :try_start_b
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_9

    move v7, v8

    :cond_9
    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v10, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 227
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result v7

    if-ne v7, v8, :cond_a

    .line 229
    :try_start_c
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 230
    .restart local v4       #index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 231
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insertText save one pdu in index "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 242
    .end local v4           #index:I
    :goto_6
    :try_start_d
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 243
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v7

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v7

    .line 232
    :catch_2
    move-exception v2

    .line 233
    .restart local v2       #e:Ljava/lang/ClassCastException;
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_6

    .line 234
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v3

    .line 235
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 238
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v8, "[insertText fail to insert sms into ICC"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v8

    iget-object v10, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "-1,"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_6

    .line 246
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 247
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 248
    :try_start_f
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-nez v7, :cond_b

    .line 250
    :try_start_10
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/telephony/SmsParameters;

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v9, v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 263
    :goto_7
    :try_start_11
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 264
    monitor-exit v8

    goto/16 :goto_0

    :catchall_6
    move-exception v7

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v7

    .line 251
    :catch_4
    move-exception v2

    .line 252
    .restart local v2       #e:Ljava/lang/ClassCastException;
    :try_start_12
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_7

    .line 254
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_5
    move-exception v3

    .line 255
    .restart local v3       #ex:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 259
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to get sms params"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 260
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_7

    .line 267
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 268
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 269
    :try_start_13
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_c

    .line 270
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1402(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z

    .line 276
    :goto_8
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 277
    monitor-exit v8

    goto/16 :goto_0

    :catchall_7
    move-exception v7

    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v7

    .line 272
    :cond_c
    :try_start_14
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "[EFsmsp fail to set sms params"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 273
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1402(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_8

    .line 280
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 281
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 282
    :try_start_15
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-nez v7, :cond_e

    .line 285
    :try_start_16
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0

    .line 286
    .local v5, rawData:[B
    const/4 v7, 0x0

    aget-byte v7, v5, v7

    if-nez v7, :cond_d

    .line 287
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string/jumbo v9, "sms raw data status is FREE"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 288
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_16} :catch_6

    .line 301
    .end local v5           #rawData:[B
    :goto_9
    :try_start_17
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit v8

    goto/16 :goto_0

    :catchall_8
    move-exception v7

    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    throw v7

    .line 290
    .restart local v5       #rawData:[B
    :cond_d
    :try_start_18
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    new-instance v9, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v9, v5}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_18} :catch_6

    goto :goto_9

    .line 292
    .end local v5           #rawData:[B
    :catch_6
    move-exception v2

    .line 293
    .restart local v2       #e:Ljava/lang/ClassCastException;
    :try_start_19
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "fail to get sms raw data ClassCastException"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 295
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_9

    .line 298
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_e
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const-string v9, "fail to get sms raw data rild"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_9

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x64 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
    .end sparse-switch
.end method
