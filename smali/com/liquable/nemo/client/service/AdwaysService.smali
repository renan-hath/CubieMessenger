.class public Lcom/liquable/nemo/client/service/AdwaysService;
.super Ljava/lang/Object;
.source "AdwaysService.java"


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/liquable/nemo/client/service/AdwaysService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 20
    return-void
.end method


# virtual methods
.method public hasAnyCampaigns(Ljava/lang/String;Ljava/util/Map;Lcom/liquable/nemo/model/sticker/StickerClientContext;)Z
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p3, "stickerContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/liquable/nemo/model/sticker/StickerClientContext;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "clientContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AdwaysService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "adwaysService.hasAnyCampaigns"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    .line 27
    invoke-virtual {p3}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public isCampaignComplete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AdwaysService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "adwaysService.isCampaignComplete"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listCampaignStickerItems(Ljava/lang/String;Ljava/util/Map;Lcom/liquable/nemo/model/sticker/StickerClientContext;)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p3, "stickerContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/liquable/nemo/model/sticker/StickerClientContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "clientContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AdwaysService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "adwaysService.listCampaignStickerItems"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    .line 58
    invoke-virtual {p3}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/StringListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/StringListMapper;

    .line 57
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listCampaigns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "stickerProductId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "clientContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/AdwaysService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "adwaysService.listCampaigns"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/AdwaysCampaignDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AdwaysCampaignDtoListMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
