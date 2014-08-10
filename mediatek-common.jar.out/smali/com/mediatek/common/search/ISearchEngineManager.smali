.class public interface abstract Lcom/mediatek/common/search/ISearchEngineManager;
.super Ljava/lang/Object;
.source "ISearchEngineManager.java"


# static fields
.field public static final ACTION_SEARCH_ENGINE_CHANGED:Ljava/lang/String; = "com.mediatek.search.SEARCH_ENGINE_CHANGED"


# virtual methods
.method public abstract getAvailableSearchEngines()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
.end method

.method public abstract getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;
.end method

.method public abstract getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
.end method

.method public abstract getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
.end method

.method public abstract getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
.end method

.method public abstract setDefaultSearchEngine(Lcom/mediatek/common/search/SearchEngineInfo;)Z
.end method
