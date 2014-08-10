.class public Lcom/mediatek/common/telephony/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "setupMenu.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DB_ID:Ljava/lang/String; = "_id"

.field public static final DB_INSTANCE:Ljava/lang/String; = "instance"

.field public static final DB_TITLE:Ljava/lang/String; = "data"

.field private static final TABLE_NAME:Ljava/lang/String; = "menu_info"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    const-string v0, "setupMenu.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 77
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 120
    const-string v3, "DBHelper: delete"

    invoke-static {p0, v3}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id=?"

    .line 123
    .local v1, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 124
    .local v2, whereValue:[Ljava/lang/String;
    const-string v3, "menu_info"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "inst"
    .parameter "newData"

    .prologue
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBHelper: insert :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 112
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "instance"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v4, "data"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v4, "menu_info"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 116
    .local v2, row:J
    return-wide v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 83
    const-string v1, "DBHelper: onCreate"

    invoke-static {p0, v1}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string v0, "CREATE TABLE IF NOT EXISTS menu_info (_id INTEGER PRIMARY KEY, instance text, data text);"

    .line 86
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 93
    const-string v1, "DBHelper: onUpgrade"

    invoke-static {p0, v1}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string v0, " DROP TABLE IF EXISTS menu_info"

    .line 95
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    return-void
.end method

.method public readDataFromDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBHelper: readDataFromDB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, str:Ljava/lang/String;
    const/4 v1, 0x0

    .line 141
    .local v1, s1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/DBHelper;->select()Landroid/database/Cursor;

    move-result-object v0

    .line 143
    .local v0, cs:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const-string v3, "instance"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const-string v3, "data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDataFromDB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v2

    .line 155
    :goto_0
    return-object v3

    .line 153
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    const-string v3, "readDataFromDB: null 0"

    invoke-static {p0, v3}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public saveDataToDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "inst"
    .parameter "data"

    .prologue
    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DBHelper: saveDataToDB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "into: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 162
    .local v3, s1:Ljava/lang/String;
    const/4 v2, -0x1

    .line 165
    .local v2, id:I
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/DBHelper;->select()Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, cs:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    const-string v5, "instance"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 171
    const-string v5, "saveDataToDB: update"

    invoke-static {p0, v5}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lcom/mediatek/common/telephony/DBHelper;->update(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, efx:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "database or disk is full"

    invoke-static {p0, v5}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v1           #efx:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 183
    const-string v5, "saveDataToDB: insert"

    invoke-static {p0, v5}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/common/telephony/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :cond_2
    :goto_1
    return-void

    .line 186
    :catch_1
    move-exception v1

    .line 187
    .restart local v1       #efx:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "database or disk is full when insert data"

    invoke-static {p0, v5}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public select()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 100
    const-string v1, "DBHelper: select"

    invoke-static {p0, v1}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "instance"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "data"

    aput-object v4, v2, v1

    .line 104
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "menu_info"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 106
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public update(ILjava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "newData"

    .prologue
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBHelper: update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/common/telephony/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 130
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "_id=?"

    .line 131
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 132
    .local v3, whereValue:[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "data"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v4, "menu_info"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    return-void
.end method
