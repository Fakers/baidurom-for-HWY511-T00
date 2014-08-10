.class public final Lcom/mediatek/common/search/SearchEngineInfo;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final DEFAULT_SP:Ljava/lang/String; = "--"

.field private static final EMPTY:Ljava/lang/String; = "nil"

.field public static final FAVICON:I = 0x2

.field private static final FIELD_ENCODING:I = 0x4

.field private static final FIELD_FAVICON:I = 0x2

.field private static final FIELD_KEYWORD:I = 0x1

.field private static final FIELD_LABEL:I = 0x0

.field private static final FIELD_SEARCH_URI:I = 0x3

.field private static final FIELD_SUGGEST_URI:I = 0x5

.field public static final NAME:I = -0x1

.field private static final NUM_FIELDS:I = 0x6

.field private static final PARAMETER_INPUT_ENCODING:Ljava/lang/String; = "{inputEncoding}"

.field private static final PARAMETER_LANGUAGE:Ljava/lang/String; = "{language}"

.field private static final PARAMETER_SEARCH_TERMS:Ljava/lang/String; = "{searchTerms}"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "SearchEngineInfo"

    sput-object v0, Lcom/mediatek/common/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/mediatek/common/search/SearchEngineInfo$1;

    invoke-direct {v0}, Lcom/mediatek/common/search/SearchEngineInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/search/SearchEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mName:Ljava/lang/String;

    .line 237
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "data"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mName:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    .line 107
    return-void
.end method

.method private getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "templateUri"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    :goto_0
    return-object v2

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 203
    .local v1, enc:Ljava/lang/String;
    :try_start_0
    const-string v3, "{searchTerms}"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/mediatek/common/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured when encoding query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSearchUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getSuggestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static parseField([Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "fieldIndex"

    .prologue
    .line 328
    add-int/lit8 v0, p1, 0x1

    .line 330
    .local v0, realFieldIndex:I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nil"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, p0, v0

    goto :goto_0
.end method

.method public static parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 17
    .parameter "configInfo"
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 257
    sget-object v14, Lcom/mediatek/common/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Parse From config file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz p0, :cond_0

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 261
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Empty config info"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 264
    :cond_1
    if-eqz p1, :cond_2

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 265
    :cond_2
    const-string p1, "--"

    .line 268
    :cond_3
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, configData:[Ljava/lang/String;
    array-length v14, v1

    const/4 v15, 0x7

    if-eq v14, v15, :cond_4

    .line 271
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Field Missing"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 274
    :cond_4
    const/4 v14, -0x1

    invoke-static {v1, v14}, Lcom/mediatek/common/search/SearchEngineInfo;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, engineName:Ljava/lang/String;
    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/mediatek/common/search/SearchEngineInfo;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, engineLabel:Ljava/lang/String;
    const/4 v14, 0x1

    invoke-static {v1, v14}, Lcom/mediatek/common/search/SearchEngineInfo;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, engineKeyword:Ljava/lang/String;
    const/4 v14, 0x2

    invoke-static {v1, v14}, Lcom/mediatek/common/search/SearchEngineInfo;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, engineFavicon:Ljava/lang/String;
    const/4 v14, 0x3

    invoke-static {v1, v14}, Lcom/mediatek/common/search/SearchEngineInfo;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, engineSearchUri:Ljava/lang/String;
    const/4 v14, 0x4

    invoke-static {v1, v14}, Lcom/mediatek/common/search/SearchEngineInfo;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, engineEncoding:Ljava/lang/String;
    const/4 v14, 0x5

    invoke-static {v1, v14}, Lcom/mediatek/common/search/SearchEngineInfo;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 283
    .local v9, engineSuggestUri:Ljava/lang/String;
    sget-object v14, Lcom/mediatek/common/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SearchEngineInfo consturctor called, search engine name is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez v8, :cond_5

    .line 287
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has an empty search URI"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 292
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 293
    .local v12, locale:Ljava/util/Locale;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .local v10, language:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 295
    const/16 v14, 0x2d

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, language_str:Ljava/lang/String;
    const-string v14, "{language}"

    invoke-virtual {v8, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 301
    if-eqz v9, :cond_7

    .line 302
    const-string v14, "{language}"

    invoke-virtual {v9, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 306
    :cond_7
    if-nez v3, :cond_8

    .line 307
    const-string v3, "UTF-8"

    .line 311
    :cond_8
    const-string v14, "{inputEncoding}"

    invoke-virtual {v8, v14, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 312
    if-eqz v9, :cond_9

    .line 313
    const-string v14, "{inputEncoding}"

    invoke-virtual {v9, v14, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 316
    :cond_9
    const/4 v14, 0x6

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v6, v2, v14

    const/4 v14, 0x1

    aput-object v5, v2, v14

    const/4 v14, 0x2

    aput-object v4, v2, v14

    const/4 v14, 0x3

    aput-object v8, v2, v14

    const/4 v14, 0x4

    aput-object v3, v2, v14

    const/4 v14, 0x5

    aput-object v9, v2, v14

    .line 318
    .local v2, datas:[Ljava/lang/String;
    new-instance v13, Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-direct {v13, v7, v2}, Lcom/mediatek/common/search/SearchEngineInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 320
    .local v13, newInstance:Lcom/mediatek/common/search/SearchEngineInfo;
    return-object v13
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getFaviconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngineInfo;->getSearchUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/common/search/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngineInfo;->getSuggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/common/search/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngineInfo;->getSuggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchEngineInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 252
    return-void
.end method
