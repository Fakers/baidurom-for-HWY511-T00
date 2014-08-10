.class public Landroid/util/RegionType;
.super Ljava/lang/Object;
.source "RegionType.java"


# static fields
.field public static sim2Plmn:Ljava/lang/String;

.field public static sim2RegionType:Ljava/lang/String;

.field public static simPlmn:Ljava/lang/String;

.field public static simRegionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static getRegionType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mContext"
    .parameter "plmn"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 93
    :cond_1
    sget-object v1, Landroid/util/RegionType;->simPlmn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    sget-object v0, Landroid/util/RegionType;->simRegionType:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_2
    sget-object v1, Landroid/util/RegionType;->sim2Plmn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    sget-object v0, Landroid/util/RegionType;->sim2RegionType:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {p0, p1}, Landroid/util/RegionType;->getRegionTypeFromXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, ret:Ljava/lang/String;
    sget-object v1, Landroid/util/RegionType;->simPlmn:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 102
    sput-object p1, Landroid/util/RegionType;->simPlmn:Ljava/lang/String;

    .line 103
    sput-object v0, Landroid/util/RegionType;->simRegionType:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_4
    sput-object p1, Landroid/util/RegionType;->sim2Plmn:Ljava/lang/String;

    .line 106
    sput-object v0, Landroid/util/RegionType;->sim2RegionType:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getRegionTypeFromXml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mContext"
    .parameter "key"

    .prologue
    .line 112
    const v0, 0x10f000d

    .line 113
    .local v0, id:I
    const/4 v1, 0x0

    .line 114
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 116
    .local v2, region_type:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 117
    invoke-static {v1, p1}, Landroid/util/RegionType;->getTypeFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 123
    :cond_0
    return-object v2

    .line 119
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 120
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3
.end method

.method public static getSimRegionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "mContext"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/RegionType;->getSimRegionType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimRegionType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "mContext"
    .parameter "phoneId"

    .prologue
    .line 72
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 73
    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, plmn:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Landroid/util/RegionType;->getRegionType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0           #plmn:Ljava/lang/String;
    :cond_0
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #plmn:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getTypeFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "parser"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 128
    :try_start_0
    const-string/jumbo v5, "regiontypes"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 132
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, element:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 134
    const-string v5, "RegionType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mccmnc ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #element:Ljava/lang/String;
    :goto_0
    move-object v3, v4

    .line 151
    :goto_1
    return-object v3

    .line 137
    .restart local v1       #element:Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "regiontype"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const/4 v5, 0x0

    const-string/jumbo v6, "mccmnc"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    const/4 v5, 0x0

    const-string/jumbo v6, "type"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, regionType:Ljava/lang/String;
    const-string v5, "RegionType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mccmnc ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") found,type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 146
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #mccmnc:Ljava/lang/String;
    .end local v3           #regionType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "RegionType"

    const-string v6, "XML parser exception reading region type patterns"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 148
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/IOException;
    const-string v5, "RegionType"

    const-string v6, "I/O exception reading region type patterns"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
