.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1097
    const-string v14, "vold.encrypt_progress"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1098
    .local v3, encryptProgress:Ljava/lang/String;
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "encryptProgress("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1100
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "encryptProgress("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), skip the command to vold."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;
    invoke-static {v15}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v15

    const-string v16, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static/range {v14 .. v16}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1115
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3400(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3400(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1187
    :cond_1
    :goto_0
    return-void

    .line 1123
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v14}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v14

    const-string v15, "volume"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "list"

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v14

    const/16 v15, 0x6e

    invoke-static {v14, v15}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v11

    .line 1126
    .local v11, vols:[Ljava/lang/String;
    move-object v1, v11

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v12, v1, v4

    .line 1127
    .local v12, volstr:Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1129
    .local v10, tok:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v6, v10, v14

    .line 1130
    .local v6, path:Ljava/lang/String;
    const-string v9, "removed"

    .line 1133
    .local v9, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 1135
    .local v13, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    const/4 v14, 0x2

    :try_start_2
    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1138
    .local v8, st:I
    if-nez v8, :cond_6

    .line 1139
    const-string v9, "removed"

    .line 1152
    :goto_2
    if-eqz v9, :cond_3

    .line 1153
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Updating valid state "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v13, v9}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1126
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1135
    .end local v8           #st:I
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1157
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    .end local v10           #tok:[Ljava/lang/String;
    .end local v11           #vols:[Ljava/lang/String;
    .end local v12           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1158
    .local v2, e:Ljava/lang/Exception;
    const-string v14, "MountService"

    const-string v15, "Error processing initial volume state"

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3500(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 1160
    .local v7, primary:Landroid/os/storage/StorageVolume;
    if-eqz v7, :cond_4

    .line 1161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const-string v15, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v7, v15}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1165
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #primary:Landroid/os/storage/StorageVolume;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v14}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 1175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1179
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v14}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3400(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3400(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 1140
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v8       #st:I
    .restart local v9       #state:Ljava/lang/String;
    .restart local v10       #tok:[Ljava/lang/String;
    .restart local v11       #vols:[Ljava/lang/String;
    .restart local v12       #volstr:Ljava/lang/String;
    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v14, 0x1

    if-ne v8, v14, :cond_7

    .line 1141
    :try_start_5
    const-string v9, "unmounted"

    goto/16 :goto_2

    .line 1142
    :cond_7
    const/4 v14, 0x4

    if-ne v8, v14, :cond_8

    .line 1143
    const-string v9, "mounted"

    .line 1144
    const-string v14, "MountService"

    const-string v15, "Media already mounted on daemon connection"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1145
    :cond_8
    const/4 v14, 0x7

    if-ne v8, v14, :cond_9

    .line 1146
    const-string v9, "shared"

    .line 1147
    const-string v14, "MountService"

    const-string v15, "Media shared on daemon connection"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1149
    :cond_9
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "Unexpected state %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
