.class public Lcom/mediatek/telephony/PhoneNumberUtilsEx;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsEx.java"


# static fields
.field private static final DBG:Z = false

.field public static final ID_INVALID:I = 0x5

.field public static final ID_VALID:I = 0x3

.field public static final ID_VALID_BUT_NEED_AREA_CODE:I = 0x2

.field public static final ID_VALID_DOMESTIC_ONLY:I = 0x4

.field public static final ID_VALID_ECC:I = 0x1

.field public static final ID_VALID_WHEN_CALL_EXIST:I = 0x6

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtilsEx"

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 83
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 84
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    const/16 v7, 0x2b

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 239
    if-nez p0, :cond_1

    .line 240
    const/4 p0, 0x0

    .line 275
    .end local p0
    .local v0, m:Ljava/util/regex/Matcher;
    .local v1, p:Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object p0

    .line 243
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .restart local p0
    :cond_1
    const-string v2, "*31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "#31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Start with *31# or #31#, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->log(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 246
    :cond_3
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 248
    const-string v2, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 249
    .restart local v1       #p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 250
    .restart local v0       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    const-string v2, ""

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern1, return empty string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->log(Ljava/lang/String;)V

    .line 255
    const-string p0, ""

    goto :goto_0

    .line 256
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern1, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->log(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 263
    :cond_5
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matcher pattern2, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->log(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static extractGsmMmiNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/16 v8, 0x2b

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v6, 0x0

    .line 116
    :goto_0
    return-object v6

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 100
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 103
    .local v1, firstCharAdded:Z
    const/4 v5, 0x0

    .line 105
    .local v5, starfound:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 107
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v0, v8, :cond_1

    if-eqz v1, :cond_1

    if-ne v0, v8, :cond_3

    const/4 v6, 0x1

    if-le v2, v6, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_3

    .line 109
    :cond_1
    const/4 v1, 0x1

    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getCountryCodeToRegionCodeMap()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 578
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v7

    .line 579
    .local v7, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    new-instance v6, Ljava/util/HashMap;

    const/16 v8, 0x11e

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 580
    .local v6, regionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCallingCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 582
    .local v1, countryCodeKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 583
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 584
    .local v0, countryCode:Ljava/lang/Integer;
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCallingCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 585
    .local v5, regionCodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator2:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 586
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 588
    .local v2, countryISO:Ljava/lang/String;
    const-string v8, "001"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 590
    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 596
    .end local v0           #countryCode:Ljava/lang/Integer;
    .end local v2           #countryISO:Ljava/lang/String;
    .end local v4           #iterator2:Ljava/util/Iterator;
    .end local v5           #regionCodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v6
.end method

.method public static getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "countryIso"

    .prologue
    .line 397
    if-nez p0, :cond_1

    .line 398
    const-string v1, ""

    .line 411
    :cond_0
    :goto_0
    return-object v1

    .line 401
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 402
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {v2, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 403
    .local v0, metadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "tw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    const-string v1, "0(?:0[25679] | 16 | 17 | 19)"

    goto :goto_0

    .line 411
    .end local v1           #prefix:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    .line 452
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 453
    :cond_0
    const/4 v4, 0x0

    .line 465
    :cond_1
    :goto_0
    return v4

    .line 456
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, number:Ljava/lang/String;
    const/4 v4, 0x0

    .line 458
    .local v4, result:Z
    const-string v5, "cn"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    const-string v3, "[1-9]{1}[0-9]{2,7}"

    .line 460
    .local v3, patternString:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 461
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 462
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    goto :goto_0
.end method

.method private static isDomesticOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x0

    .line 425
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v4, v5

    .line 438
    :cond_1
    :goto_0
    return v4

    .line 429
    :cond_2
    const/4 v4, 0x1

    .line 430
    .local v4, result:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, number:Ljava/lang/String;
    const-string v6, "cn"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "tw"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 433
    :cond_3
    const-string v3, "[1-9]{1}[0-9]{2,5}"

    .line 434
    .local v3, patternString:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 435
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 436
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static isIdleSsString(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialString"

    .prologue
    const/4 v11, 0x2

    .line 152
    const-string v8, "PhoneNumberUtilsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isIdleSsString(): dialString = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, newDialString:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, networkPortion:Ljava/lang/String;
    const-string v8, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 159
    .local v6, sPatternSuppService:Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 161
    .local v5, ret:Z
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 163
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 164
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, sc:Ljava/lang/String;
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, dialNumber:Ljava/lang/String;
    const-string v8, "PhoneNumberUtilsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dialNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz v7, :cond_2

    const-string v8, "31"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    const-string v8, "*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 169
    const-string v8, "PhoneNumberUtilsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is temporary CLIR"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #dialNumber:Ljava/lang/String;
    .end local v7           #sc:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v8, "PhoneNumberUtilsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isIdleSsString: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v5

    .line 171
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #dialNumber:Ljava/lang/String;
    .restart local v7       #sc:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 173
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #dialNumber:Ljava/lang/String;
    .end local v7           #sc:Ljava/lang/String;
    :cond_3
    const-string v8, "#"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    const/4 v5, 0x1

    goto :goto_0

    .line 175
    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v11, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-eq v8, v9, :cond_1

    :cond_5
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "00"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 177
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isIncallSsString(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 194
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 222
    const-string v0, "ro.ril.ecclist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "PhoneNumberUtilsEx"

    const-string v1, "[isSpecialEmergencyNumber] there is no sim inserted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v0, p0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSpecialMmiNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 562
    const-string v2, "[0-5]{1}|[1-2]{1}[1-9]{1}"

    .line 565
    .local v2, patternString:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 566
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 567
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method private static isValidNationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    const/16 v10, 0x30

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 478
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v6, v7

    .line 549
    :cond_1
    :goto_0
    return v6

    .line 484
    :cond_2
    const-string v8, "0"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 486
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 490
    :cond_3
    const/4 v6, 0x0

    .line 491
    .local v6, result:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, number:Ljava/lang/String;
    const/16 v8, 0x153

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "10"

    aput-object v8, v0, v7

    const-string v7, "21"

    aput-object v7, v0, v9

    const/4 v7, 0x2

    const-string v8, "22"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "23"

    aput-object v8, v0, v7

    const/4 v7, 0x4

    const-string v8, "24"

    aput-object v8, v0, v7

    const/4 v7, 0x5

    const-string v8, "25"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, "26"

    aput-object v8, v0, v7

    const/4 v7, 0x7

    const-string v8, "27"

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string v8, "28"

    aput-object v8, v0, v7

    const/16 v7, 0x9

    const-string v8, "29"

    aput-object v8, v0, v7

    const/16 v7, 0xa

    const-string v8, "20"

    aput-object v8, v0, v7

    const/16 v7, 0xb

    const-string v8, "311"

    aput-object v8, v0, v7

    const/16 v7, 0xc

    const-string v8, "312"

    aput-object v8, v0, v7

    const/16 v7, 0xd

    const-string v8, "313"

    aput-object v8, v0, v7

    const/16 v7, 0xe

    const-string v8, "314"

    aput-object v8, v0, v7

    const/16 v7, 0xf

    const-string v8, "315"

    aput-object v8, v0, v7

    const/16 v7, 0x10

    const-string v8, "316"

    aput-object v8, v0, v7

    const/16 v7, 0x11

    const-string v8, "317"

    aput-object v8, v0, v7

    const/16 v7, 0x12

    const-string v8, "318"

    aput-object v8, v0, v7

    const/16 v7, 0x13

    const-string v8, "319"

    aput-object v8, v0, v7

    const/16 v7, 0x14

    const-string v8, "310"

    aput-object v8, v0, v7

    const/16 v7, 0x15

    const-string v8, "335"

    aput-object v8, v0, v7

    const/16 v7, 0x16

    const-string v8, "349"

    aput-object v8, v0, v7

    const/16 v7, 0x17

    const-string v8, "351"

    aput-object v8, v0, v7

    const/16 v7, 0x18

    const-string v8, "352"

    aput-object v8, v0, v7

    const/16 v7, 0x19

    const-string v8, "353"

    aput-object v8, v0, v7

    const/16 v7, 0x1a

    const-string v8, "354"

    aput-object v8, v0, v7

    const/16 v7, 0x1b

    const-string v8, "355"

    aput-object v8, v0, v7

    const/16 v7, 0x1c

    const-string v8, "356"

    aput-object v8, v0, v7

    const/16 v7, 0x1d

    const-string v8, "357"

    aput-object v8, v0, v7

    const/16 v7, 0x1e

    const-string v8, "358"

    aput-object v8, v0, v7

    const/16 v7, 0x1f

    const-string v8, "350"

    aput-object v8, v0, v7

    const/16 v7, 0x20

    const-string v8, "371"

    aput-object v8, v0, v7

    const/16 v7, 0x21

    const-string v8, "372"

    aput-object v8, v0, v7

    const/16 v7, 0x22

    const-string v8, "373"

    aput-object v8, v0, v7

    const/16 v7, 0x23

    const-string v8, "374"

    aput-object v8, v0, v7

    const/16 v7, 0x24

    const-string v8, "375"

    aput-object v8, v0, v7

    const/16 v7, 0x25

    const-string v8, "376"

    aput-object v8, v0, v7

    const/16 v7, 0x26

    const-string v8, "377"

    aput-object v8, v0, v7

    const/16 v7, 0x27

    const-string v8, "378"

    aput-object v8, v0, v7

    const/16 v7, 0x28

    const-string v8, "379"

    aput-object v8, v0, v7

    const/16 v7, 0x29

    const-string v8, "370"

    aput-object v8, v0, v7

    const/16 v7, 0x2a

    const-string v8, "391"

    aput-object v8, v0, v7

    const/16 v7, 0x2b

    const-string v8, "392"

    aput-object v8, v0, v7

    const/16 v7, 0x2c

    const-string v8, "393"

    aput-object v8, v0, v7

    const/16 v7, 0x2d

    const-string v8, "394"

    aput-object v8, v0, v7

    const/16 v7, 0x2e

    const-string v8, "395"

    aput-object v8, v0, v7

    const/16 v7, 0x2f

    const-string v8, "396"

    aput-object v8, v0, v7

    const-string v7, "397"

    aput-object v7, v0, v10

    const/16 v7, 0x31

    const-string v8, "398"

    aput-object v8, v0, v7

    const/16 v7, 0x32

    const-string v8, "411"

    aput-object v8, v0, v7

    const/16 v7, 0x33

    const-string v8, "412"

    aput-object v8, v0, v7

    const/16 v7, 0x34

    const-string v8, "414"

    aput-object v8, v0, v7

    const/16 v7, 0x35

    const-string v8, "415"

    aput-object v8, v0, v7

    const/16 v7, 0x36

    const-string v8, "416"

    aput-object v8, v0, v7

    const/16 v7, 0x37

    const-string v8, "417"

    aput-object v8, v0, v7

    const/16 v7, 0x38

    const-string v8, "418"

    aput-object v8, v0, v7

    const/16 v7, 0x39

    const-string v8, "419"

    aput-object v8, v0, v7

    const/16 v7, 0x3a

    const-string v8, "421"

    aput-object v8, v0, v7

    const/16 v7, 0x3b

    const-string v8, "427"

    aput-object v8, v0, v7

    const/16 v7, 0x3c

    const-string v8, "429"

    aput-object v8, v0, v7

    const/16 v7, 0x3d

    const-string v8, "431"

    aput-object v8, v0, v7

    const/16 v7, 0x3e

    const-string v8, "432"

    aput-object v8, v0, v7

    const/16 v7, 0x3f

    const-string v8, "433"

    aput-object v8, v0, v7

    const/16 v7, 0x40

    const-string v8, "434"

    aput-object v8, v0, v7

    const/16 v7, 0x41

    const-string v8, "435"

    aput-object v8, v0, v7

    const/16 v7, 0x42

    const-string v8, "436"

    aput-object v8, v0, v7

    const/16 v7, 0x43

    const-string v8, "437"

    aput-object v8, v0, v7

    const/16 v7, 0x44

    const-string v8, "438"

    aput-object v8, v0, v7

    const/16 v7, 0x45

    const-string v8, "439"

    aput-object v8, v0, v7

    const/16 v7, 0x46

    const-string v8, "451"

    aput-object v8, v0, v7

    const/16 v7, 0x47

    const-string v8, "452"

    aput-object v8, v0, v7

    const/16 v7, 0x48

    const-string v8, "453"

    aput-object v8, v0, v7

    const/16 v7, 0x49

    const-string v8, "454"

    aput-object v8, v0, v7

    const/16 v7, 0x4a

    const-string v8, "455"

    aput-object v8, v0, v7

    const/16 v7, 0x4b

    const-string v8, "456"

    aput-object v8, v0, v7

    const/16 v7, 0x4c

    const-string v8, "457"

    aput-object v8, v0, v7

    const/16 v7, 0x4d

    const-string v8, "458"

    aput-object v8, v0, v7

    const/16 v7, 0x4e

    const-string v8, "459"

    aput-object v8, v0, v7

    const/16 v7, 0x4f

    const-string v8, "464"

    aput-object v8, v0, v7

    const/16 v7, 0x50

    const-string v8, "467"

    aput-object v8, v0, v7

    const/16 v7, 0x51

    const-string v8, "468"

    aput-object v8, v0, v7

    const/16 v7, 0x52

    const-string v8, "469"

    aput-object v8, v0, v7

    const/16 v7, 0x53

    const-string v8, "471"

    aput-object v8, v0, v7

    const/16 v7, 0x54

    const-string v8, "472"

    aput-object v8, v0, v7

    const/16 v7, 0x55

    const-string v8, "473"

    aput-object v8, v0, v7

    const/16 v7, 0x56

    const-string v8, "474"

    aput-object v8, v0, v7

    const/16 v7, 0x57

    const-string v8, "475"

    aput-object v8, v0, v7

    const/16 v7, 0x58

    const-string v8, "476"

    aput-object v8, v0, v7

    const/16 v7, 0x59

    const-string v8, "477"

    aput-object v8, v0, v7

    const/16 v7, 0x5a

    const-string v8, "478"

    aput-object v8, v0, v7

    const/16 v7, 0x5b

    const-string v8, "479"

    aput-object v8, v0, v7

    const/16 v7, 0x5c

    const-string v8, "470"

    aput-object v8, v0, v7

    const/16 v7, 0x5d

    const-string v8, "482"

    aput-object v8, v0, v7

    const/16 v7, 0x5e

    const-string v8, "483"

    aput-object v8, v0, v7

    const/16 v7, 0x5f

    const-string v8, "511"

    aput-object v8, v0, v7

    const/16 v7, 0x60

    const-string v8, "512"

    aput-object v8, v0, v7

    const/16 v7, 0x61

    const-string v8, "513"

    aput-object v8, v0, v7

    const/16 v7, 0x62

    const-string v8, "514"

    aput-object v8, v0, v7

    const/16 v7, 0x63

    const-string v8, "515"

    aput-object v8, v0, v7

    const/16 v7, 0x64

    const-string v8, "516"

    aput-object v8, v0, v7

    const/16 v7, 0x65

    const-string v8, "517"

    aput-object v8, v0, v7

    const/16 v7, 0x66

    const-string v8, "518"

    aput-object v8, v0, v7

    const/16 v7, 0x67

    const-string v8, "519"

    aput-object v8, v0, v7

    const/16 v7, 0x68

    const-string v8, "510"

    aput-object v8, v0, v7

    const/16 v7, 0x69

    const-string v8, "523"

    aput-object v8, v0, v7

    const/16 v7, 0x6a

    const-string v8, "527"

    aput-object v8, v0, v7

    const/16 v7, 0x6b

    const-string v8, "531"

    aput-object v8, v0, v7

    const/16 v7, 0x6c

    const-string v8, "532"

    aput-object v8, v0, v7

    const/16 v7, 0x6d

    const-string v8, "533"

    aput-object v8, v0, v7

    const/16 v7, 0x6e

    const-string v8, "534"

    aput-object v8, v0, v7

    const/16 v7, 0x6f

    const-string v8, "535"

    aput-object v8, v0, v7

    const/16 v7, 0x70

    const-string v8, "536"

    aput-object v8, v0, v7

    const/16 v7, 0x71

    const-string v8, "537"

    aput-object v8, v0, v7

    const/16 v7, 0x72

    const-string v8, "538"

    aput-object v8, v0, v7

    const/16 v7, 0x73

    const-string v8, "539"

    aput-object v8, v0, v7

    const/16 v7, 0x74

    const-string v8, "530"

    aput-object v8, v0, v7

    const/16 v7, 0x75

    const-string v8, "543"

    aput-object v8, v0, v7

    const/16 v7, 0x76

    const-string v8, "546"

    aput-object v8, v0, v7

    const/16 v7, 0x77

    const-string v8, "631"

    aput-object v8, v0, v7

    const/16 v7, 0x78

    const-string v8, "632"

    aput-object v8, v0, v7

    const/16 v7, 0x79

    const-string v8, "633"

    aput-object v8, v0, v7

    const/16 v7, 0x7a

    const-string v8, "634"

    aput-object v8, v0, v7

    const/16 v7, 0x7b

    const-string v8, "635"

    aput-object v8, v0, v7

    const/16 v7, 0x7c

    const-string v8, "551"

    aput-object v8, v0, v7

    const/16 v7, 0x7d

    const-string v8, "552"

    aput-object v8, v0, v7

    const/16 v7, 0x7e

    const-string v8, "553"

    aput-object v8, v0, v7

    const/16 v7, 0x7f

    const-string v8, "554"

    aput-object v8, v0, v7

    const/16 v7, 0x80

    const-string v8, "555"

    aput-object v8, v0, v7

    const/16 v7, 0x81

    const-string v8, "555"

    aput-object v8, v0, v7

    const/16 v7, 0x82

    const-string v8, "556"

    aput-object v8, v0, v7

    const/16 v7, 0x83

    const-string v8, "557"

    aput-object v8, v0, v7

    const/16 v7, 0x84

    const-string v8, "558"

    aput-object v8, v0, v7

    const/16 v7, 0x85

    const-string v8, "559"

    aput-object v8, v0, v7

    const/16 v7, 0x86

    const-string v8, "561"

    aput-object v8, v0, v7

    const/16 v7, 0x87

    const-string v8, "562"

    aput-object v8, v0, v7

    const/16 v7, 0x88

    const-string v8, "563"

    aput-object v8, v0, v7

    const/16 v7, 0x89

    const-string v8, "564"

    aput-object v8, v0, v7

    const/16 v7, 0x8a

    const-string v8, "565"

    aput-object v8, v0, v7

    const/16 v7, 0x8b

    const-string v8, "566"

    aput-object v8, v0, v7

    const/16 v7, 0x8c

    const-string v8, "571"

    aput-object v8, v0, v7

    const/16 v7, 0x8d

    const-string v8, "572"

    aput-object v8, v0, v7

    const/16 v7, 0x8e

    const-string v8, "573"

    aput-object v8, v0, v7

    const/16 v7, 0x8f

    const-string v8, "574"

    aput-object v8, v0, v7

    const/16 v7, 0x90

    const-string v8, "575"

    aput-object v8, v0, v7

    const/16 v7, 0x91

    const-string v8, "576"

    aput-object v8, v0, v7

    const/16 v7, 0x92

    const-string v8, "577"

    aput-object v8, v0, v7

    const/16 v7, 0x93

    const-string v8, "578"

    aput-object v8, v0, v7

    const/16 v7, 0x94

    const-string v8, "579"

    aput-object v8, v0, v7

    const/16 v7, 0x95

    const-string v8, "570"

    aput-object v8, v0, v7

    const/16 v7, 0x96

    const-string v8, "580"

    aput-object v8, v0, v7

    const/16 v7, 0x97

    const-string v8, "591"

    aput-object v8, v0, v7

    const/16 v7, 0x98

    const-string v8, "592"

    aput-object v8, v0, v7

    const/16 v7, 0x99

    const-string v8, "593"

    aput-object v8, v0, v7

    const/16 v7, 0x9a

    const-string v8, "594"

    aput-object v8, v0, v7

    const/16 v7, 0x9b

    const-string v8, "595"

    aput-object v8, v0, v7

    const/16 v7, 0x9c

    const-string v8, "596"

    aput-object v8, v0, v7

    const/16 v7, 0x9d

    const-string v8, "597"

    aput-object v8, v0, v7

    const/16 v7, 0x9e

    const-string v8, "598"

    aput-object v8, v0, v7

    const/16 v7, 0x9f

    const-string v8, "599"

    aput-object v8, v0, v7

    const/16 v7, 0xa0

    const-string v8, "631"

    aput-object v8, v0, v7

    const/16 v7, 0xa1

    const-string v8, "632"

    aput-object v8, v0, v7

    const/16 v7, 0xa2

    const-string v8, "633"

    aput-object v8, v0, v7

    const/16 v7, 0xa3

    const-string v8, "634"

    aput-object v8, v0, v7

    const/16 v7, 0xa4

    const-string v8, "635"

    aput-object v8, v0, v7

    const/16 v7, 0xa5

    const-string v8, "660"

    aput-object v8, v0, v7

    const/16 v7, 0xa6

    const-string v8, "662"

    aput-object v8, v0, v7

    const/16 v7, 0xa7

    const-string v8, "663"

    aput-object v8, v0, v7

    const/16 v7, 0xa8

    const-string v8, "668"

    aput-object v8, v0, v7

    const/16 v7, 0xa9

    const-string v8, "691"

    aput-object v8, v0, v7

    const/16 v7, 0xaa

    const-string v8, "692"

    aput-object v8, v0, v7

    const/16 v7, 0xab

    const-string v8, "711"

    aput-object v8, v0, v7

    const/16 v7, 0xac

    const-string v8, "712"

    aput-object v8, v0, v7

    const/16 v7, 0xad

    const-string v8, "713"

    aput-object v8, v0, v7

    const/16 v7, 0xae

    const-string v8, "714"

    aput-object v8, v0, v7

    const/16 v7, 0xaf

    const-string v8, "715"

    aput-object v8, v0, v7

    const/16 v7, 0xb0

    const-string v8, "716"

    aput-object v8, v0, v7

    const/16 v7, 0xb1

    const-string v8, "717"

    aput-object v8, v0, v7

    const/16 v7, 0xb2

    const-string v8, "718"

    aput-object v8, v0, v7

    const/16 v7, 0xb3

    const-string v8, "719"

    aput-object v8, v0, v7

    const/16 v7, 0xb4

    const-string v8, "710"

    aput-object v8, v0, v7

    const/16 v7, 0xb5

    const-string v8, "722"

    aput-object v8, v0, v7

    const/16 v7, 0xb6

    const-string v8, "724"

    aput-object v8, v0, v7

    const/16 v7, 0xb7

    const-string v8, "728"

    aput-object v8, v0, v7

    const/16 v7, 0xb8

    const-string v8, "731"

    aput-object v8, v0, v7

    const/16 v7, 0xb9

    const-string v8, "734"

    aput-object v8, v0, v7

    const/16 v7, 0xba

    const-string v8, "735"

    aput-object v8, v0, v7

    const/16 v7, 0xbb

    const-string v8, "736"

    aput-object v8, v0, v7

    const/16 v7, 0xbc

    const-string v8, "737"

    aput-object v8, v0, v7

    const/16 v7, 0xbd

    const-string v8, "738"

    aput-object v8, v0, v7

    const/16 v7, 0xbe

    const-string v8, "739"

    aput-object v8, v0, v7

    const/16 v7, 0xbf

    const-string v8, "730"

    aput-object v8, v0, v7

    const/16 v7, 0xc0

    const-string v8, "743"

    aput-object v8, v0, v7

    const/16 v7, 0xc1

    const-string v8, "744"

    aput-object v8, v0, v7

    const/16 v7, 0xc2

    const-string v8, "745"

    aput-object v8, v0, v7

    const/16 v7, 0xc3

    const-string v8, "746"

    aput-object v8, v0, v7

    const/16 v7, 0xc4

    const-string v8, "750"

    aput-object v8, v0, v7

    const/16 v7, 0xc5

    const-string v8, "751"

    aput-object v8, v0, v7

    const/16 v7, 0xc6

    const-string v8, "752"

    aput-object v8, v0, v7

    const/16 v7, 0xc7

    const-string v8, "753"

    aput-object v8, v0, v7

    const/16 v7, 0xc8

    const-string v8, "754"

    aput-object v8, v0, v7

    const/16 v7, 0xc9

    const-string v8, "755"

    aput-object v8, v0, v7

    const/16 v7, 0xca

    const-string v8, "756"

    aput-object v8, v0, v7

    const/16 v7, 0xcb

    const-string v8, "757"

    aput-object v8, v0, v7

    const/16 v7, 0xcc

    const-string v8, "758"

    aput-object v8, v0, v7

    const/16 v7, 0xcd

    const-string v8, "759"

    aput-object v8, v0, v7

    const/16 v7, 0xce

    const-string v8, "760"

    aput-object v8, v0, v7

    const/16 v7, 0xcf

    const-string v8, "762"

    aput-object v8, v0, v7

    const/16 v7, 0xd0

    const-string v8, "763"

    aput-object v8, v0, v7

    const/16 v7, 0xd1

    const-string v8, "766"

    aput-object v8, v0, v7

    const/16 v7, 0xd2

    const-string v8, "768"

    aput-object v8, v0, v7

    const/16 v7, 0xd3

    const-string v8, "769"

    aput-object v8, v0, v7

    const/16 v7, 0xd4

    const-string v8, "660"

    aput-object v8, v0, v7

    const/16 v7, 0xd5

    const-string v8, "662"

    aput-object v8, v0, v7

    const/16 v7, 0xd6

    const-string v8, "663"

    aput-object v8, v0, v7

    const/16 v7, 0xd7

    const-string v8, "668"

    aput-object v8, v0, v7

    const/16 v7, 0xd8

    const-string v8, "771"

    aput-object v8, v0, v7

    const/16 v7, 0xd9

    const-string v8, "772"

    aput-object v8, v0, v7

    const/16 v7, 0xda

    const-string v8, "773"

    aput-object v8, v0, v7

    const/16 v7, 0xdb

    const-string v8, "774"

    aput-object v8, v0, v7

    const/16 v7, 0xdc

    const-string v8, "775"

    aput-object v8, v0, v7

    const/16 v7, 0xdd

    const-string v8, "776"

    aput-object v8, v0, v7

    const/16 v7, 0xde

    const-string v8, "777"

    aput-object v8, v0, v7

    const/16 v7, 0xdf

    const-string v8, "778"

    aput-object v8, v0, v7

    const/16 v7, 0xe0

    const-string v8, "779"

    aput-object v8, v0, v7

    const/16 v7, 0xe1

    const-string v8, "770"

    aput-object v8, v0, v7

    const/16 v7, 0xe2

    const-string v8, "791"

    aput-object v8, v0, v7

    const/16 v7, 0xe3

    const-string v8, "792"

    aput-object v8, v0, v7

    const/16 v7, 0xe4

    const-string v8, "793"

    aput-object v8, v0, v7

    const/16 v7, 0xe5

    const-string v8, "794"

    aput-object v8, v0, v7

    const/16 v7, 0xe6

    const-string v8, "795"

    aput-object v8, v0, v7

    const/16 v7, 0xe7

    const-string v8, "796"

    aput-object v8, v0, v7

    const/16 v7, 0xe8

    const-string v8, "797"

    aput-object v8, v0, v7

    const/16 v7, 0xe9

    const-string v8, "798"

    aput-object v8, v0, v7

    const/16 v7, 0xea

    const-string v8, "799"

    aput-object v8, v0, v7

    const/16 v7, 0xeb

    const-string v8, "790"

    aput-object v8, v0, v7

    const/16 v7, 0xec

    const-string v8, "701"

    aput-object v8, v0, v7

    const/16 v7, 0xed

    const-string v8, "812"

    aput-object v8, v0, v7

    const/16 v7, 0xee

    const-string v8, "813"

    aput-object v8, v0, v7

    const/16 v7, 0xef

    const-string v8, "816"

    aput-object v8, v0, v7

    const/16 v7, 0xf0

    const-string v8, "817"

    aput-object v8, v0, v7

    const/16 v7, 0xf1

    const-string v8, "818"

    aput-object v8, v0, v7

    const/16 v7, 0xf2

    const-string v8, "825"

    aput-object v8, v0, v7

    const/16 v7, 0xf3

    const-string v8, "826"

    aput-object v8, v0, v7

    const/16 v7, 0xf4

    const-string v8, "827"

    aput-object v8, v0, v7

    const/16 v7, 0xf5

    const-string v8, "831"

    aput-object v8, v0, v7

    const/16 v7, 0xf6

    const-string v8, "832"

    aput-object v8, v0, v7

    const/16 v7, 0xf7

    const-string v8, "833"

    aput-object v8, v0, v7

    const/16 v7, 0xf8

    const-string v8, "834"

    aput-object v8, v0, v7

    const/16 v7, 0xf9

    const-string v8, "835"

    aput-object v8, v0, v7

    const/16 v7, 0xfa

    const-string v8, "836"

    aput-object v8, v0, v7

    const/16 v7, 0xfb

    const-string v8, "837"

    aput-object v8, v0, v7

    const/16 v7, 0xfc

    const-string v8, "838"

    aput-object v8, v0, v7

    const/16 v7, 0xfd

    const-string v8, "839"

    aput-object v8, v0, v7

    const/16 v7, 0xfe

    const-string v8, "830"

    aput-object v8, v0, v7

    const/16 v7, 0xff

    const-string v8, "851"

    aput-object v8, v0, v7

    const/16 v7, 0x100

    const-string v8, "852"

    aput-object v8, v0, v7

    const/16 v7, 0x101

    const-string v8, "853"

    aput-object v8, v0, v7

    const/16 v7, 0x102

    const-string v8, "854"

    aput-object v8, v0, v7

    const/16 v7, 0x103

    const-string v8, "855"

    aput-object v8, v0, v7

    const/16 v7, 0x104

    const-string v8, "856"

    aput-object v8, v0, v7

    const/16 v7, 0x105

    const-string v8, "857"

    aput-object v8, v0, v7

    const/16 v7, 0x106

    const-string v8, "858"

    aput-object v8, v0, v7

    const/16 v7, 0x107

    const-string v8, "859"

    aput-object v8, v0, v7

    const/16 v7, 0x108

    const-string v8, "871"

    aput-object v8, v0, v7

    const/16 v7, 0x109

    const-string v8, "872"

    aput-object v8, v0, v7

    const/16 v7, 0x10a

    const-string v8, "873"

    aput-object v8, v0, v7

    const/16 v7, 0x10b

    const-string v8, "874"

    aput-object v8, v0, v7

    const/16 v7, 0x10c

    const-string v8, "875"

    aput-object v8, v0, v7

    const/16 v7, 0x10d

    const-string v8, "876"

    aput-object v8, v0, v7

    const/16 v7, 0x10e

    const-string v8, "877"

    aput-object v8, v0, v7

    const/16 v7, 0x10f

    const-string v8, "878"

    aput-object v8, v0, v7

    const/16 v7, 0x110

    const-string v8, "879"

    aput-object v8, v0, v7

    const/16 v7, 0x111

    const-string v8, "870"

    aput-object v8, v0, v7

    const/16 v7, 0x112

    const-string v8, "883"

    aput-object v8, v0, v7

    const/16 v7, 0x113

    const-string v8, "886"

    aput-object v8, v0, v7

    const/16 v7, 0x114

    const-string v8, "887"

    aput-object v8, v0, v7

    const/16 v7, 0x115

    const-string v8, "888"

    aput-object v8, v0, v7

    const/16 v7, 0x116

    const-string v8, "691"

    aput-object v8, v0, v7

    const/16 v7, 0x117

    const-string v8, "692"

    aput-object v8, v0, v7

    const/16 v7, 0x118

    const-string v8, "891"

    aput-object v8, v0, v7

    const/16 v7, 0x119

    const-string v8, "892"

    aput-object v8, v0, v7

    const/16 v7, 0x11a

    const-string v8, "893"

    aput-object v8, v0, v7

    const/16 v7, 0x11b

    const-string v8, "894"

    aput-object v8, v0, v7

    const/16 v7, 0x11c

    const-string v8, "895"

    aput-object v8, v0, v7

    const/16 v7, 0x11d

    const-string v8, "896"

    aput-object v8, v0, v7

    const/16 v7, 0x11e

    const-string v8, "897"

    aput-object v8, v0, v7

    const/16 v7, 0x11f

    const-string v8, "898"

    aput-object v8, v0, v7

    const/16 v7, 0x120

    const-string v8, "911"

    aput-object v8, v0, v7

    const/16 v7, 0x121

    const-string v8, "912"

    aput-object v8, v0, v7

    const/16 v7, 0x122

    const-string v8, "913"

    aput-object v8, v0, v7

    const/16 v7, 0x123

    const-string v8, "914"

    aput-object v8, v0, v7

    const/16 v7, 0x124

    const-string v8, "915"

    aput-object v8, v0, v7

    const/16 v7, 0x125

    const-string v8, "916"

    aput-object v8, v0, v7

    const/16 v7, 0x126

    const-string v8, "917"

    aput-object v8, v0, v7

    const/16 v7, 0x127

    const-string v8, "919"

    aput-object v8, v0, v7

    const/16 v7, 0x128

    const-string v8, "931"

    aput-object v8, v0, v7

    const/16 v7, 0x129

    const-string v8, "932"

    aput-object v8, v0, v7

    const/16 v7, 0x12a

    const-string v8, "933"

    aput-object v8, v0, v7

    const/16 v7, 0x12b

    const-string v8, "934"

    aput-object v8, v0, v7

    const/16 v7, 0x12c

    const-string v8, "935"

    aput-object v8, v0, v7

    const/16 v7, 0x12d

    const-string v8, "936"

    aput-object v8, v0, v7

    const/16 v7, 0x12e

    const-string v8, "937"

    aput-object v8, v0, v7

    const/16 v7, 0x12f

    const-string v8, "938"

    aput-object v8, v0, v7

    const/16 v7, 0x130

    const-string v8, "939"

    aput-object v8, v0, v7

    const/16 v7, 0x131

    const-string v8, "930"

    aput-object v8, v0, v7

    const/16 v7, 0x132

    const-string v8, "940"

    aput-object v8, v0, v7

    const/16 v7, 0x133

    const-string v8, "941"

    aput-object v8, v0, v7

    const/16 v7, 0x134

    const-string v8, "943"

    aput-object v8, v0, v7

    const/16 v7, 0x135

    const-string v8, "951"

    aput-object v8, v0, v7

    const/16 v7, 0x136

    const-string v8, "952"

    aput-object v8, v0, v7

    const/16 v7, 0x137

    const-string v8, "953"

    aput-object v8, v0, v7

    const/16 v7, 0x138

    const-string v8, "954"

    aput-object v8, v0, v7

    const/16 v7, 0x139

    const-string v8, "955"

    aput-object v8, v0, v7

    const/16 v7, 0x13a

    const-string v8, "971"

    aput-object v8, v0, v7

    const/16 v7, 0x13b

    const-string v8, "972"

    aput-object v8, v0, v7

    const/16 v7, 0x13c

    const-string v8, "973"

    aput-object v8, v0, v7

    const/16 v7, 0x13d

    const-string v8, "974"

    aput-object v8, v0, v7

    const/16 v7, 0x13e

    const-string v8, "975"

    aput-object v8, v0, v7

    const/16 v7, 0x13f

    const-string v8, "976"

    aput-object v8, v0, v7

    const/16 v7, 0x140

    const-string v8, "977"

    aput-object v8, v0, v7

    const/16 v7, 0x141

    const-string v8, "979"

    aput-object v8, v0, v7

    const/16 v7, 0x142

    const-string v8, "970"

    aput-object v8, v0, v7

    const/16 v7, 0x143

    const-string v8, "991"

    aput-object v8, v0, v7

    const/16 v7, 0x144

    const-string v8, "992"

    aput-object v8, v0, v7

    const/16 v7, 0x145

    const-string v8, "993"

    aput-object v8, v0, v7

    const/16 v7, 0x146

    const-string v8, "994"

    aput-object v8, v0, v7

    const/16 v7, 0x147

    const-string v8, "995"

    aput-object v8, v0, v7

    const/16 v7, 0x148

    const-string v8, "996"

    aput-object v8, v0, v7

    const/16 v7, 0x149

    const-string v8, "997"

    aput-object v8, v0, v7

    const/16 v7, 0x14a

    const-string v8, "998"

    aput-object v8, v0, v7

    const/16 v7, 0x14b

    const-string v8, "999"

    aput-object v8, v0, v7

    const/16 v7, 0x14c

    const-string v8, "990"

    aput-object v8, v0, v7

    const/16 v7, 0x14d

    const-string v8, "901"

    aput-object v8, v0, v7

    const/16 v7, 0x14e

    const-string v8, "902"

    aput-object v8, v0, v7

    const/16 v7, 0x14f

    const-string v8, "903"

    aput-object v8, v0, v7

    const/16 v7, 0x150

    const-string v8, "906"

    aput-object v8, v0, v7

    const/16 v7, 0x151

    const-string v8, "908"

    aput-object v8, v0, v7

    const/16 v7, 0x152

    const-string v8, "909"

    aput-object v8, v0, v7

    .line 535
    .local v0, CHINA_AREA_PREFIXS:[Ljava/lang/String;
    const-string v7, "cn"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 536
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 537
    .local v5, prefix:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 538
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    .line 540
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 543
    :cond_4
    const/4 v6, 0x1

    .line 545
    goto/16 :goto_0

    .line 536
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isValidNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .parameter "countryIso"
    .parameter "phoneNumber"

    .prologue
    .line 296
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 297
    :cond_0
    const/4 v14, 0x5

    .line 385
    :cond_1
    :goto_0
    return v14

    .line 300
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 302
    .local v9, matchResult:Z
    const/4 v3, 0x0

    .line 303
    .local v3, areaCodeMatchResult:Z
    const/4 v14, 0x3

    .line 304
    .local v14, result:I
    const-string v12, ""

    .line 305
    .local v12, patternString:Ljava/lang/String;
    const-string v4, ""

    .line 307
    .local v4, areaCodePattern:Ljava/lang/String;
    const/4 v15, 0x1

    new-array v1, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "00"

    aput-object v16, v1, v15

    .line 308
    .local v1, CHINA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;
    const/16 v15, 0x8

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "002"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string v16, "005"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string v16, "006"

    aput-object v16, v2, v15

    const/4 v15, 0x3

    const-string v16, "007"

    aput-object v16, v2, v15

    const/4 v15, 0x4

    const-string v16, "009"

    aput-object v16, v2, v15

    const/4 v15, 0x5

    const-string v16, "016"

    aput-object v16, v2, v15

    const/4 v15, 0x6

    const-string v16, "017"

    aput-object v16, v2, v15

    const/4 v15, 0x7

    const-string v16, "019"

    aput-object v16, v2, v15

    .line 310
    .local v2, TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;
    const-string v15, "cn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 311
    const-string v12, "1[3-8]{1}[0-9]{1}[0-9]{8}|01[3-8]{1}[0-9]{1}[0-9]{8}|[1-9]{1}[0-9]{5,7}|11[0-9]{1}114|400[0-9]{7}|179[0-9]{8,}|125[0-9]{8,}|"

    .line 319
    const-string v4, "010[1-9]{1}[0-9]{7}|02[0-9]{1}[1-9]{1}[0-9]{7}|0[3-9]{1}[0-9]{2}[1-9]{1}[0-9]{6,7}|010[1-9]{1}[0-9]{2,4}|02[0-9]{1}[1-9]{1}[0-9]{2,4}|0[3-9]{1}[0-9]{2}[1-9]{1}[0-9]{2,4}|01011[0-9]{1}114|02[0-9]{1}11[0-9]{1}114|0[3-9]{1}[0-9]{2}11[0-9]{1}114|"

    .line 330
    move-object v5, v1

    .local v5, arr$:[Ljava/lang/String;
    array-length v7, v5

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_7

    aget-object v13, v5, v6

    .line 331
    .local v13, prefix:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 332
    const-string v15, "PhoneNumberUtilsEx"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isValidNumber = CN start with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 337
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v13           #prefix:Ljava/lang/String;
    :cond_4
    const-string v15, "tw"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 338
    const-string v12, "09[0-9]{8}|0[2-8]{1}[0-9]{7,8}|"

    .line 342
    move-object v5, v2

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v7, v5

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v7, :cond_7

    aget-object v13, v5, v6

    .line 343
    .restart local v13       #prefix:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 344
    const-string v15, "PhoneNumberUtilsEx"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isValidNumber = TW start with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 350
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v13           #prefix:Ljava/lang/String;
    :cond_6
    const/4 v14, 0x3

    goto/16 :goto_0

    .line 353
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "[1-9]{1}[0-9]{2,4}|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "000|08"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 356
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 357
    .local v11, p:Ljava/util/regex/Pattern;
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 358
    .local v8, m:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    .line 361
    if-nez v9, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 363
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 364
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 365
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 369
    :cond_8
    if-nez v9, :cond_9

    if-eqz v3, :cond_d

    .line 370
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 371
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 372
    :cond_a
    invoke-static/range {p0 .. p1}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 373
    const/4 v14, 0x2

    goto/16 :goto_0

    .line 374
    :cond_b
    invoke-static/range {p0 .. p1}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isDomesticOnly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 375
    const/4 v14, 0x4

    goto/16 :goto_0

    .line 376
    :cond_c
    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p1}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isValidNationalNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 377
    const/4 v14, 0x5

    goto/16 :goto_0

    .line 379
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isSpecialMmiNumber(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 380
    const/4 v14, 0x6

    goto/16 :goto_0

    .line 382
    :cond_e
    const/4 v14, 0x5

    goto/16 :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .locals 1
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 140
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 601
    const-string v0, "PhoneNumberUtilsEx"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method public static prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 123
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v0, p0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_0
    return-object p0
.end method
