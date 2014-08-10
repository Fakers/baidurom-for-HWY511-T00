.class public Lcom/mediatek/geocoding/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"

# interfaces
.implements Lcom/mediatek/common/geocoding/IGeoCodingQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field private static final FILTER_LIST:[Ljava/lang/String; = null

.field private static HwDataPath:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

.field private mIsDBReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 61
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 62
    const-string v1, "/system/etc/Met_areaInq.dat"

    sput-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->HwDataPath:Ljava/lang/String;

    .line 63
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "+86"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "193"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "10193"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "1255577"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "12593"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "17901"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "17908"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "17909"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "17911"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "17931"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "17951"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "17969"

    aput-object v3, v1, v2

    sput-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->FILTER_LIST:[Ljava/lang/String;

    .line 72
    :try_start_0
    const-string v1, "hwarea_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 75
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 77
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Load engmodelJNI failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private canQuery()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private closeDatabase()V
    .locals 1

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v0}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 294
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static filtrate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 101
    :cond_0
    const/4 v1, 0x0

    .line 102
    .local v1, hasReplaced:Z
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->FILTER_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 103
    .local v4, num:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 105
    const/4 v1, 0x1

    .line 102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v4           #num:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_0

    .line 109
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    sget-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/mediatek/geocoding/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/mediatek/geocoding/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 88
    const-string v0, "GeoCodingQuery"

    const-string v2, "getInstance(): myInstance is created"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 270
    :try_start_0
    const-string v1, "GeoCodingQuery"

    const-string v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;-><init>(Lcom/mediatek/geocoding/GeoCodingQuery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 273
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method

.method public static native queryPhoneUnicodeInformation(IILjava/lang/String;)Ljava/lang/String;
.end method

.method public static native queryTelUnicodeInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public queryAreaFromHwData(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "In"

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 120
    .local v2, bret:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v3, v2

    .line 198
    .end local v2           #bret:Ljava/lang/String;
    .local v3, bret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 124
    .end local v3           #bret:Ljava/lang/String;
    .restart local v2       #bret:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->filtrate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    if-nez p1, :cond_1

    move-object v3, v2

    .line 127
    .end local v2           #bret:Ljava/lang/String;
    .restart local v3       #bret:Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v3           #bret:Ljava/lang/String;
    .restart local v2       #bret:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 131
    .local v0, Alllen:I
    const/4 v10, 0x3

    if-ge v0, v10, :cond_2

    move-object v3, v2

    .line 133
    .end local v2           #bret:Ljava/lang/String;
    .restart local v3       #bret:Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v3           #bret:Ljava/lang/String;
    .restart local v2       #bret:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x7

    if-le v0, v10, :cond_6

    const/4 v1, 0x7

    .line 138
    .local v1, Phonelen:I
    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 144
    .local v5, j1:I
    const/4 v10, 0x1

    const/4 v11, 0x2

    :try_start_1
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 150
    .local v6, j2:I
    const/4 v10, 0x2

    :try_start_2
    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 155
    .local v7, j3_7:I
    const-string v10, "queryAreafromData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "j1 ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v10, "queryAreafromData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "j2 ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v10, "queryAreafromData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "j3 ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v10, 0x1

    if-ne v5, v10, :cond_7

    const/4 v10, 0x3

    if-eq v6, v10, :cond_3

    const/4 v10, 0x4

    if-eq v6, v10, :cond_3

    const/4 v10, 0x5

    if-eq v6, v10, :cond_3

    const/16 v10, 0x8

    if-ne v6, v10, :cond_7

    .line 160
    :cond_3
    const/16 v10, 0xa

    if-le v0, v10, :cond_4

    .line 162
    sget-object v10, Lcom/mediatek/geocoding/GeoCodingQuery;->HwDataPath:Ljava/lang/String;

    invoke-static {v6, v7, v10}, Lcom/mediatek/geocoding/GeoCodingQuery;->queryPhoneUnicodeInformation(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_4
    :goto_2
    const-string v10, "bret"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bret ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v2, :cond_5

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    .line 185
    .local v8, len:I
    const/4 v9, 0x0

    .line 188
    .local v9, npos:I
    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_3
    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    .line 194
    const-string v10, "bret"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "npos ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v10, 0x2

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v8           #len:I
    .end local v9           #npos:I
    :cond_5
    move-object v3, v2

    .line 198
    .end local v2           #bret:Ljava/lang/String;
    .restart local v3       #bret:Ljava/lang/String;
    goto/16 :goto_0

    .end local v1           #Phonelen:I
    .end local v3           #bret:Ljava/lang/String;
    .end local v5           #j1:I
    .end local v6           #j2:I
    .end local v7           #j3_7:I
    .restart local v2       #bret:Ljava/lang/String;
    :cond_6
    move v1, v0

    .line 135
    goto/16 :goto_1

    .line 139
    .restart local v1       #Phonelen:I
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 140
    .end local v2           #bret:Ljava/lang/String;
    .restart local v3       #bret:Ljava/lang/String;
    goto/16 :goto_0

    .line 145
    .end local v3           #bret:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #bret:Ljava/lang/String;
    .restart local v5       #j1:I
    :catch_1
    move-exception v4

    .restart local v4       #e:Ljava/lang/Exception;
    move-object v3, v2

    .line 146
    .end local v2           #bret:Ljava/lang/String;
    .restart local v3       #bret:Ljava/lang/String;
    goto/16 :goto_0

    .line 151
    .end local v3           #bret:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #bret:Ljava/lang/String;
    .restart local v6       #j2:I
    :catch_2
    move-exception v4

    .restart local v4       #e:Ljava/lang/Exception;
    move-object v3, v2

    .line 152
    .end local v2           #bret:Ljava/lang/String;
    .restart local v3       #bret:Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .end local v3           #bret:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #bret:Ljava/lang/String;
    .restart local v7       #j3_7:I
    :cond_7
    if-nez v5, :cond_4

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_8

    .line 169
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mediatek/geocoding/GeoCodingQuery;->HwDataPath:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mediatek/geocoding/GeoCodingQuery;->queryTelUnicodeInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    if-nez v2, :cond_4

    .line 172
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mediatek/geocoding/GeoCodingQuery;->HwDataPath:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mediatek/geocoding/GeoCodingQuery;->queryTelUnicodeInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 177
    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mediatek/geocoding/GeoCodingQuery;->HwDataPath:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mediatek/geocoding/GeoCodingQuery;->queryTelUnicodeInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 190
    .restart local v8       #len:I
    .restart local v9       #npos:I
    :catch_3
    move-exception v4

    .restart local v4       #e:Ljava/lang/Exception;
    move-object v3, v2

    .line 191
    .end local v2           #bret:Ljava/lang/String;
    .restart local v3       #bret:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "number"

    .prologue
    .line 201
    const-string v8, ""

    .line 202
    .local v8, returnValue:Ljava/lang/String;
    const/16 v5, 0xb

    .line 203
    .local v5, numberValidLength:I
    const/4 v3, 0x4

    .line 207
    .local v3, numberTailLength:I
    invoke-virtual {p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->queryAreaFromHwData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    if-eqz v8, :cond_0

    move-object v9, v8

    .line 265
    .end local v8           #returnValue:Ljava/lang/String;
    .local v9, returnValue:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 213
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v8       #returnValue:Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-nez v12, :cond_1

    .line 214
    const-string v12, "GeoCodingQuery"

    const-string v13, "Database is not opened !"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 215
    .end local v8           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 220
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v8       #returnValue:Ljava/lang/String;
    :cond_1
    const-string v12, " "

    const-string v13, ""

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, queryNumber:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 222
    .local v4, numberTotalLength:I
    if-ge v4, v5, :cond_2

    .line 223
    const-string v12, "GeoCodingQuery"

    const-string v13, "The length of dial number is less than 11 !"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 224
    .end local v8           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v8       #returnValue:Ljava/lang/String;
    :cond_2
    const-string v12, "00"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "0086"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2b

    if-ne v12, v13, :cond_5

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x38

    if-ne v12, v13, :cond_4

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x36

    if-eq v12, v13, :cond_5

    .line 230
    :cond_4
    const-string v12, "GeoCodingQuery"

    const-string v13, "The dial number is a international number and didn\'t start with +86!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 231
    .end local v8           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v8       #returnValue:Ljava/lang/String;
    :cond_5
    sub-int v11, v4, v5

    .line 235
    .local v11, startIndex:I
    sub-int v1, v4, v3

    .line 236
    .local v1, endIndex:I
    invoke-virtual {v6, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 238
    const/4 v7, 0x7

    .line 240
    .local v7, queryNumberLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_8

    .line 242
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-lt v12, v13, :cond_6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x39

    if-le v12, v13, :cond_7

    :cond_6
    move-object v9, v8

    .line 243
    .end local v8           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v8       #returnValue:Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Select city_name from NumberCity, city where _id = CityID and NumberHead = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 254
    .local v10, sqlCmd:Ljava/lang/String;
    iget-object v12, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_9

    .line 257
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 258
    const/4 v12, 0x0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 261
    :cond_9
    if-eqz v0, :cond_a

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v9, v8

    .line 265
    .end local v8           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    goto/16 :goto_0
.end method
