.class public Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;
.super Ljava/lang/Object;
.source "CountryNameRegionCodeUtils.java"


# static fields
.field public static final COUNTRY_NAME:Ljava/lang/String; = "countryName"

.field public static final INTERNATIONAL_CALLING_CODE:Ljava/lang/String; = "countryCode"

.field public static final REGION_CODE:Ljava/lang/String; = "regionCode"

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final UNKNOWN_COUNTRY_CODE:Ljava/lang/String; = "ZZ"

.field static final countryNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;


# instance fields
.field private final countryCodesIso3166:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final internationalCallingCodeToCountryCodeIso3166Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils$1;

    invoke-direct {v0}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryNameMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 305
    .local v0, "tempCountryCodesIso3166":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/liquable/nemo/regist/InternationalCallingCodeToCountryCodeIso3166Map;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->internationalCallingCodeToCountryCodeIso3166Map:Ljava/util/Map;

    .line 306
    iget-object v2, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->internationalCallingCodeToCountryCodeIso3166Map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 307
    .local v1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 309
    .end local v1    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "001"

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryCodesIso3166:Ljava/util/List;

    .line 312
    iget-object v2, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryCodesIso3166:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 314
    invoke-direct {p0}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->createRegionDataList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->dataList:Ljava/util/List;

    .line 315
    return-void
.end method

.method private createRegionDataList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v2, "regionData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryCodesIso3166:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "regionCode":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "regionCode"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v4, "countryCode"

    .line 323
    invoke-direct {p0, v1}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInternationalCallingCodeForCountryCodeIso3166(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v4, "countryName"

    sget-object v5, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryNameMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "regionCode":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->instance:Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    invoke-direct {v0}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;-><init>()V

    sput-object v0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->instance:Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    .line 22
    :cond_0
    sget-object v0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->instance:Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    return-object v0
.end method

.method private getInternationalCallingCodeForCountryCodeIso3166(Ljava/lang/String;)I
    .locals 4
    .param p1, "countryCodeIso3166"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 386
    :goto_0
    return v1

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->internationalCallingCodeToCountryCodeIso3166Map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    move v1, v2

    .line 386
    goto :goto_0
.end method


# virtual methods
.method public filterDataList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 332
    .local v2, "isDigit":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->dataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 334
    .local v0, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    sget-object v4, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->INTERNATIONAL_CALLING_CODE:Ljava/lang/String;

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 335
    .local v1, "entryValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 336
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    .end local v1    # "entryValue":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->COUNTRY_NAME:Ljava/lang/String;

    goto :goto_1

    .line 339
    .end local v0    # "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method public getCountryCodeIso3166ByCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const-string/jumbo v1, "ZZ"

    .line 352
    :goto_0
    return-object v1

    .line 347
    :cond_0
    sget-object v1, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 352
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "ZZ"

    goto :goto_0
.end method

.method public getCountryCodeIso3166ByInternationalCallingCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "internationalCallingCode"    # I

    .prologue
    .line 356
    iget-object v1, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->internationalCallingCodeToCountryCodeIso3166Map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 357
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const-string/jumbo v1, "ZZ"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 361
    sget-object v0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "internationalCallingCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "countryCode"

    .line 367
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInternationalCallingCodeForCountryCodeIso3166(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v1, "countryName"

    sget-object v2, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->countryNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->dataList:Ljava/util/List;

    return-object v0
.end method
