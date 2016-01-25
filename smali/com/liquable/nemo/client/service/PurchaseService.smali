.class public Lcom/liquable/nemo/client/service/PurchaseService;
.super Ljava/lang/Object;
.source "PurchaseService.java"


# static fields
.field public static rpcAlwaysFails:Z


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/liquable/nemo/client/service/PurchaseService;->rpcAlwaysFails:Z

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/client/service/PurchaseService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 22
    return-void
.end method


# virtual methods
.method public limitedTimeOfferSticker(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    sget-boolean v1, Lcom/liquable/nemo/client/service/PurchaseService;->rpcAlwaysFails:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PurchaseService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "purchaseService.limitedTimeOfferSticker__________"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-class v4, Ljava/lang/Boolean;

    .line 31
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 28
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 33
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PurchaseService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "purchaseService.limitedTimeOfferSticker"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-class v4, Ljava/lang/Boolean;

    .line 35
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public purchaseViaGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "inappSignedData"    # Ljava/lang/String;
    .param p3, "inappSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/InAppBillingSignatureException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    sget-boolean v1, Lcom/liquable/nemo/client/service/PurchaseService;->rpcAlwaysFails:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PurchaseService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "purchaseService.purchaseViaGooglePlay__________"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/PurchaseService$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/PurchaseService$1;-><init>(Lcom/liquable/nemo/client/service/PurchaseService;)V

    .line 49
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 47
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 52
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PurchaseService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "purchaseService.purchaseViaGooglePlay"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/PurchaseService$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/PurchaseService$2;-><init>(Lcom/liquable/nemo/client/service/PurchaseService;)V

    .line 54
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/InAppBillingSignatureException;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lcom/liquable/nemo/model/InAppBillingSignatureException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 61
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_1
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public purchaseViaGooglePlayV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "inappSignedData"    # Ljava/lang/String;
    .param p3, "inappSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/InAppBillingSignatureException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PurchaseService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "purchaseService.purchaseViaGooglePlayV3"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const-class v4, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;

    .line 72
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 70
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/InAppBillingSignatureException;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/liquable/nemo/model/InAppBillingSignatureException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 77
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
