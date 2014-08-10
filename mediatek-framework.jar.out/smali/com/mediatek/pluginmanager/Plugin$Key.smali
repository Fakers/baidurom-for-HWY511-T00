.class Lcom/mediatek/pluginmanager/Plugin$Key;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/pluginmanager/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field private mLoader:Ljava/lang/ClassLoader;

.field private mSourcePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "path"
    .parameter "loader"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/mediatek/pluginmanager/Plugin$Key;->mSourcePath:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/mediatek/pluginmanager/Plugin$Key;->mLoader:Ljava/lang/ClassLoader;

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    instance-of v3, p1, Lcom/mediatek/pluginmanager/Plugin$Key;

    if-nez v3, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/mediatek/pluginmanager/Plugin$Key;

    .line 116
    .local v0, key:Lcom/mediatek/pluginmanager/Plugin$Key;
    iget-object v3, p0, Lcom/mediatek/pluginmanager/Plugin$Key;->mLoader:Ljava/lang/ClassLoader;

    iget-object v4, v0, Lcom/mediatek/pluginmanager/Plugin$Key;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/mediatek/pluginmanager/Plugin$Key;->mSourcePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/pluginmanager/Plugin$Key;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 120
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/mediatek/pluginmanager/Plugin$Key;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 128
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mediatek/pluginmanager/Plugin$Key;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 129
    return v0
.end method
