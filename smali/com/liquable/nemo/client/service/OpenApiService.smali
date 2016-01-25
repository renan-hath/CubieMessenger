.class public Lcom/liquable/nemo/client/service/OpenApiService;
.super Ljava/lang/Object;
.source "OpenApiService.java"


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;
    .param p2, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/client/service/OpenApiService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 24
    iput-object p2, p0, Lcom/liquable/nemo/client/service/OpenApiService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 25
    return-void
.end method


# virtual methods
.method public authorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .locals 3
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;,
            Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/OpenApiService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/OpenApiService$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/liquable/nemo/client/service/OpenApiService$1;-><init>(Lcom/liquable/nemo/client/service/OpenApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;
    throw v0

    .line 44
    .end local v0    # "e":Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException;
    throw v0

    .line 46
    .end local v0    # "e":Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException;
    :catch_2
    move-exception v0

    .line 47
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;
    .locals 3
    .param p1, "openApiAppId"    # Ljava/lang/String;
    .param p2, "appUniqueDeviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/OpenApiService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/OpenApiService$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/liquable/nemo/client/service/OpenApiService$2;-><init>(Lcom/liquable/nemo/client/service/OpenApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public disconnectDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "openApiAppId"    # Ljava/lang/String;
    .param p2, "appUniqueDeviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/OpenApiService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/OpenApiService$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/liquable/nemo/client/service/OpenApiService$3;-><init>(Lcom/liquable/nemo/client/service/OpenApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public getApp(Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .locals 3
    .param p1, "openApiAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/OpenApiService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/OpenApiService$4;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/client/service/OpenApiService$4;-><init>(Lcom/liquable/nemo/client/service/OpenApiService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
