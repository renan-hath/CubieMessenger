.class public Lcom/liquable/nemo/ads/model/AdsManager;
.super Ljava/lang/Object;
.source "AdsManager.java"


# static fields
.field public static final AD_VERSION:Ljava/lang/String; = "1"


# instance fields
.field private final adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

.field private final homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/home/HomeServerClient;Lcom/liquable/nemo/ads/model/AdsDao;)V
    .locals 0
    .param p1, "homeServerClient"    # Lcom/liquable/nemo/client/home/HomeServerClient;
    .param p2, "adsDao"    # Lcom/liquable/nemo/ads/model/AdsDao;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/ads/model/AdsManager;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    .line 25
    iput-object p2, p0, Lcom/liquable/nemo/ads/model/AdsManager;->adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

    .line 26
    return-void
.end method


# virtual methods
.method public findRandomAds()Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .locals 2

    .prologue
    .line 29
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/ads/model/AdsManager;->listAvailables(Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 30
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 33
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 34
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    goto :goto_0
.end method

.method listAvailables(Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/ads/model/ConsumableAdItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    iget-object v2, p0, Lcom/liquable/nemo/ads/model/AdsManager;->adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

    invoke-virtual {v2}, Lcom/liquable/nemo/ads/model/AdsDao;->listAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .line 41
    .local v0, "item":Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->isConsumed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->isExpired(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->isExceedDisplayCount()Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0    # "item":Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    :cond_1
    return-object v1
.end method

.method public purgeAdItems()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsManager;->adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/ads/model/AdsDao;->deleteAll()V

    .line 50
    return-void
.end method

.method public syncAdItems()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsManager;->adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

    iget-object v1, p0, Lcom/liquable/nemo/ads/model/AdsManager;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/home/HomeServerClient;->listAdItemDtos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/ads/model/AdsDao;->sync(Ljava/util/List;)V

    .line 58
    return-void
.end method

.method public update(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V
    .locals 1
    .param p1, "adItem"    # Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsManager;->adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/ads/model/AdsDao;->replace(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    .line 62
    return-void
.end method
