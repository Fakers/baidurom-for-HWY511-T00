.class public Landroid/os/MessageLogger;
.super Ljava/lang/Object;
.source "MessageLogger.java"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field static final FLUSHOUT_SIZE:I = 0x800

.field static final LONGER_TIME:I = 0xc8

.field static final LONGER_TIME_MESSAGE_SIZE:I = 0x50

.field static final MESSAGE_SIZE:I = 0x28

.field private static final TAG:Ljava/lang/String; = "MessageLogger"

.field private static mElapsedLongTimeRecord:Ljava/util/LinkedList;

.field private static mEnableLooperLog:Z

.field private static mLastRecord:Ljava/lang/String;

.field private static mLastRecordDateTime:J

.field private static mLastRecordKernelTime:J

.field private static mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

.field private static mMessageHistoryRecord:Ljava/util/LinkedList;

.field private static mMessageTimeRecord:Ljava/util/LinkedList;

.field private static mMsgCnt:J

.field private static mNonSleepLastRecordKernelTime:J

.field private static mNonSleepLongTimeRecord:Ljava/util/LinkedList;

.field private static mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

.field private static mState:I

.field private static messageInfo:Ljava/lang/String;


# instance fields
.field public nonSleepWallStart:J

.field public nonSleepWallTime:J

.field public wallStart:J

.field public wallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/os/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, Landroid/os/MessageLogger;->mState:I

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 40
    const-string v0, ""

    sput-object v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static addTimeToList(Ljava/util/LinkedList;JJ)V
    .locals 1
    .parameter "mList"
    .parameter "startTime"
    .parameter "durationTime"

    .prologue
    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public static dump()Ljava/lang/String;
    .locals 25

    .prologue
    .line 169
    sget-object v19, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v19

    .line 170
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v18, 0x400

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v5, history:Ljava/lang/StringBuilder;
    const-string v18, "MSG HISTORY IN MAIN THREAD:\n"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Current kernel time : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "ms\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v13, simpleDateFormat:Ljava/text/SimpleDateFormat;
    sget-object v18, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    if-nez v18, :cond_1

    const/4 v14, 0x0

    .line 187
    .local v14, sizeForMsgRecord:I
    :goto_0
    sget v18, Landroid/os/MessageLogger;->mState:I

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 188
    new-instance v3, Ljava/util/Date;

    sget-wide v20, Landroid/os/MessageLogger;->mLastRecordDateTime:J

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 189
    .local v3, date:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sget-wide v22, Landroid/os/MessageLogger;->mLastRecordKernelTime:J

    sub-long v15, v20, v22

    .line 190
    .local v15, spent:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sget-wide v22, Landroid/os/MessageLogger;->mNonSleepLastRecordKernelTime:J

    sub-long v9, v20, v22

    .line 192
    .local v9, nonSleepSpent:J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Last record : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v20, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Last record dispatching elapsedTime:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " ms/upTime:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " ms\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Last record dispatching time : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v14, v14, -0x1

    .line 200
    .end local v3           #date:Ljava/util/Date;
    .end local v9           #nonSleepSpent:J
    .end local v15           #spent:J
    :cond_0
    const/4 v8, 0x0

    .line 201
    .local v8, msg:Ljava/lang/String;
    const/16 v17, 0x0

    .line 202
    .local v17, time:Ljava/lang/Long;
    const/4 v11, 0x0

    .line 203
    .local v11, nonSleepTime:Ljava/lang/Long;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v18, 0x400

    move/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    .local v7, longerHistory:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 205
    .local v4, flushed:Z
    :goto_1
    if-lez v14, :cond_3

    .line 206
    sget-object v18, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-static {v14}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 207
    .restart local v8       #msg:Ljava/lang/String;
    sget-object v18, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v14}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #time:Ljava/lang/Long;
    check-cast v17, Ljava/lang/Long;

    .line 208
    .restart local v17       #time:Ljava/lang/Long;
    sget-object v18, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v14}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .line 209
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    const-string v18, ">"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 210
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 211
    .restart local v3       #date:Ljava/util/Date;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " from "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .end local v3           #date:Ljava/util/Date;
    :goto_2
    invoke-static {v5, v4}, Landroid/os/MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)V

    .line 205
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 186
    .end local v4           #flushed:Z
    .end local v7           #longerHistory:Ljava/lang/StringBuilder;
    .end local v8           #msg:Ljava/lang/String;
    .end local v11           #nonSleepTime:Ljava/lang/Long;
    .end local v14           #sizeForMsgRecord:I
    .end local v17           #time:Ljava/lang/Long;
    :cond_1
    sget-object v18, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v14

    goto/16 :goto_0

    .line 214
    .restart local v4       #flushed:Z
    .restart local v7       #longerHistory:Ljava/lang/StringBuilder;
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    .restart local v14       #sizeForMsgRecord:I
    .restart local v17       #time:Ljava/lang/Long;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " elapsedTime:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " ms/upTime:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " ms"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 249
    .end local v4           #flushed:Z
    .end local v7           #longerHistory:Ljava/lang/StringBuilder;
    .end local v8           #msg:Ljava/lang/String;
    .end local v11           #nonSleepTime:Ljava/lang/Long;
    .end local v13           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .end local v14           #sizeForMsgRecord:I
    .end local v17           #time:Ljava/lang/Long;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 221
    .restart local v4       #flushed:Z
    .restart local v7       #longerHistory:Ljava/lang/StringBuilder;
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    .restart local v13       #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .restart local v14       #sizeForMsgRecord:I
    .restart local v17       #time:Ljava/lang/Long;
    :cond_3
    if-nez v4, :cond_4

    .line 223
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 224
    const-string v18, "MessageLogger"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_4
    const/4 v4, 0x0

    .line 229
    const-string v18, "=== LONGER MSG HISTORY IN MAIN THREAD ===\n"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    sget-object v18, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v14

    .line 231
    sget-object v18, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    .line 232
    .local v6, indexForTimeRecord:I
    :goto_3
    if-lez v14, :cond_5

    .line 233
    sget-object v18, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-static {v14}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 234
    .restart local v8       #msg:Ljava/lang/String;
    sget-object v18, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .line 235
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    sget-object v18, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    add-int/lit8 v20, v6, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #time:Ljava/lang/Long;
    check-cast v17, Ljava/lang/Long;

    .line 236
    .restart local v17       #time:Ljava/lang/Long;
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 237
    .restart local v3       #date:Ljava/util/Date;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " from "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " elapsedTime:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v18, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " ms/upTime:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "ms"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {v7, v4}, Landroid/os/MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)V

    .line 232
    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_3

    .line 242
    .end local v3           #date:Ljava/util/Date;
    :cond_5
    if-nez v4, :cond_6

    .line 244
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 245
    const-string v18, "MessageLogger"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_6
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/MessageQueue;->dumpMessageQueue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 252
    .local v12, retMessageInfo:Ljava/lang/String;
    const-string v18, ""

    sput-object v18, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 253
    return-object v12
.end method

.method private static flushedOrNot(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .parameter "sb"
    .parameter "bl"

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***Flushing, Current Size Is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "***TAIL\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 p1, 0x1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/MessageLogger;->messageInfo:Ljava/lang/String;

    .line 136
    const-string v0, "MessageLogger"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    if-eqz p1, :cond_0

    .line 143
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static sizeToIndex(I)I
    .locals 0
    .parameter "size"

    .prologue
    .line 126
    add-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 9
    .parameter "s"

    .prologue
    .line 56
    sget-object v3, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v3

    .line 58
    :try_start_0
    sget v2, Landroid/os/MessageLogger;->mState:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/os/MessageLogger;->mState:I

    .line 59
    sget-object v2, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 60
    .local v1, size:I
    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    .line 61
    sget-object v2, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 62
    sget-object v2, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 63
    sget-object v2, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Msg#:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Landroid/os/MessageLogger;->mMsgCnt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    sget-wide v4, Landroid/os/MessageLogger;->mMsgCnt:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 68
    sget-object v2, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Landroid/os/MessageLogger;->mLastRecordKernelTime:J

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Landroid/os/MessageLogger;->mNonSleepLastRecordKernelTime:J

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    sput-wide v4, Landroid/os/MessageLogger;->mLastRecordDateTime:J

    .line 72
    sget v2, Landroid/os/MessageLogger;->mState:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 73
    const/4 v2, 0x0

    sput v2, Landroid/os/MessageLogger;->mState:I

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/os/MessageLogger;->wallStart:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/os/MessageLogger;->wallTime:J

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/os/MessageLogger;->nonSleepWallStart:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    .line 76
    sget-object v2, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/os/MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/os/MessageLogger;->wallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 77
    sget-object v2, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/os/MessageLogger;->nonSleepWallStart:J

    iget-wide v6, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 79
    iget-wide v4, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    const-wide/16 v6, 0xc8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 80
    sget-object v2, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v4, 0x50

    if-lt v2, v4, :cond_1

    .line 82
    sget-object v2, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 85
    sget-object v2, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 86
    sget-object v2, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0           #i:I
    :cond_1
    sget-object v2, Landroid/os/MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v2, Landroid/os/MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/os/MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/os/MessageLogger;->nonSleepWallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 92
    sget-object v2, Landroid/os/MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/os/MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/os/MessageLogger;->wallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 115
    :cond_2
    :goto_1
    sget-boolean v2, Landroid/os/MessageLogger;->mEnableLooperLog:Z

    if-eqz v2, :cond_3

    .line 116
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    const-string v2, "MessageLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debugging_MessageLogger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    :goto_2
    monitor-exit v3

    .line 123
    return-void

    .line 96
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/MessageLogger;->wallStart:J

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/MessageLogger;->nonSleepWallStart:J

    goto :goto_1

    .line 122
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 119
    .restart local v1       #size:I
    :cond_5
    :try_start_1
    const-string v2, "MessageLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debugging_MessageLogger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/os/MessageLogger;->wallTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
