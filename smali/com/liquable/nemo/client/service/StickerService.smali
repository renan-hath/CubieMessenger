.class public Lcom/liquable/nemo/client/service/StickerService;
.super Ljava/lang/Object;
.source "StickerService.java"


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 24
    return-void
.end method


# virtual methods
.method public getStickerRoot(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;)Lcom/liquable/nemo/model/sticker/StickerRootDto;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "stickerService.getStickerRoot"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 30
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    const-class v4, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerRootDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public getStickerShop(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;I)Lcom/liquable/nemo/model/sticker/StickerShopDto;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .param p3, "itemSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "stickerService.getStickerShop"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 41
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-class v4, Lcom/liquable/nemo/model/sticker/StickerShopDto;

    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerShopDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public getVisibleSticker(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .param p3, "stickerCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/StickerNotFoundException;,
            Lcom/liquable/nemo/model/StickerCanNotVisibleException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "stickerService.getVisibleSticker"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 53
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const-class v4, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 54
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/StickerNotFoundException;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/liquable/nemo/model/StickerNotFoundException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 58
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    instance-of v1, v0, Lcom/liquable/nemo/model/StickerCanNotVisibleException;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lcom/liquable/nemo/model/StickerCanNotVisibleException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 61
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_1
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listStickerItems(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .param p3, "tabCode"    # Ljava/lang/String;
    .param p4, "startIndex"    # I
    .param p5, "itemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/sticker/StickerClientContext;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "stickerService.listStickerItems"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 73
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/StickerService$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/StickerService$1;-><init>(Lcom/liquable/nemo/client/service/StickerService;)V

    .line 74
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 72
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listStickerItemsByCodes(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/sticker/StickerClientContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "stickerItemCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "stickerService.listStickerItemsByCodes"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 85
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/StickerService$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/StickerService$2;-><init>(Lcom/liquable/nemo/client/service/StickerService;)V

    .line 86
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 84
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listStickerItemsByProductIds(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/sticker/StickerClientContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 96
    .local p3, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "stickerService.listStickerItemsByProductIds"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 97
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/StickerService$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/StickerService$3;-><init>(Lcom/liquable/nemo/client/service/StickerService;)V

    .line 98
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 96
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listStickerPackages(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/sticker/StickerClientContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/StickerService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "stickerService.listStickerPackages"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 109
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->toMap()Ljava/util/Map;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/StickerService$4;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/StickerService$4;-><init>(Lcom/liquable/nemo/client/service/StickerService;)V

    .line 110
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 108
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
