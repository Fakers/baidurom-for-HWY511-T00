.class public Lcom/mediatek/FMRadio/ChannelListProvider;
.super Landroid/content/ContentProvider;
.source "ChannelListProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME_FMRADIO:Ljava/lang/String; = "FMRadio.db"

.field public static final DATABASE_VERSION:I = 0x3

.field private static final TABLE_NAME:Ljava/lang/String; = "ChannelList"

.field private static final TAG:Ljava/lang/String; = "ChannelListProvider"


# instance fields
.field private mOpenHelper:Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 124
    .local v1, deleteNum:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/ChannelListProvider;->mOpenHelper:Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "ChannelList"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, e:Landroid/database/SQLException;
    const-string v3, "ChannelListProvider"

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListProvider;->mOpenHelper:Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "ChannelList"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v4

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Landroid/database/SQLException;
    const-string v2, "ChannelListProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ChannelListProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListProvider;->mOpenHelper:Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;

    .line 74
    const-string v0, "ChannelListProvider"

    const-string v1, "ChannelListProvider : onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 82
    const/4 v8, 0x0

    .line 85
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListProvider;->mOpenHelper:Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ChannelList"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 92
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v8

    .line 88
    :catch_0
    move-exception v9

    .line 89
    .local v9, e:Landroid/database/SQLException;
    const-string v1, "ChannelListProvider"

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/ChannelListProvider;->mOpenHelper:Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ChannelListProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 110
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "ChannelList"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, e:Landroid/database/SQLException;
    const-string v3, "ChannelListProvider"

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
