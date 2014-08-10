.class public Lcom/mediatek/search/SearchEngineManagerService;
.super Lcom/mediatek/common/search/ISearchEngineManagerService$Stub;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/SearchEngineManagerService$1;,
        Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;,
        Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEngineManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

.field private mSearchEngineInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/common/search/ISearchEngineManagerService$Stub;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/search/SearchEngineManagerService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V

    return-void
.end method

.method private broadcastSearchEngineChangedInternal(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.search.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method private getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "favicon"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 201
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 202
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "name"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 214
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 215
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSearchEngineInfos()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    .line 140
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x204000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, searchEngines:[Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v6, 0x1

    array-length v7, v4

    if-lt v6, v7, :cond_1

    .line 144
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No data found for "

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :cond_1
    aget-object v5, v4, v8

    .line 147
    .local v5, sp:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 148
    aget-object v0, v4, v1

    .line 149
    .local v0, configInfo:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/mediatek/common/search/SearchEngineInfo;->parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v2

    .line 150
    .local v2, info:Lcom/mediatek/common/search/SearchEngineInfo;
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0           #configInfo:Ljava/lang/String;
    .end local v2           #info:Lcom/mediatek/common/search/SearchEngineInfo;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    if-eqz v6, :cond_3

    .line 155
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v6}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v7}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/search/SearchEngineManagerService;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 159
    :cond_3
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    if-nez v6, :cond_4

    .line 160
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/search/SearchEngineInfo;

    iput-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 163
    :cond_4
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/mediatek/search/SearchEngineManagerService;->broadcastSearchEngineChangedInternal(Landroid/content/Context;)V

    .line 164
    return-void
.end method


# virtual methods
.method public declared-synchronized getAvailableSearchEngines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    const-string v0, "SearchEngineManagerService"

    const-string v1, "get avilable search engines"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "name"
    .parameter "favicon"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    .line 193
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    if-eqz v0, :cond_0

    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    .restart local v0       #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    return-object v0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_0

    .line 235
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 231
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDefaultSearchEngine(Lcom/mediatek/common/search/SearchEngineInfo;)Z
    .locals 5
    .parameter "engine"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 254
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 255
    .local v0, eng:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 257
    const/4 v3, 0x1

    .line 260
    .end local v0           #eng:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
