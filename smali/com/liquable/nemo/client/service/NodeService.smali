.class public Lcom/liquable/nemo/client/service/NodeService;
.super Ljava/lang/Object;
.source "NodeService.java"


# instance fields
.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 1
    .param p1, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/liquable/nemo/client/service/NodeService;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NodeService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 19
    iput-object p1, p0, Lcom/liquable/nemo/client/service/NodeService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 20
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/client/service/NodeService;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/liquable/nemo/client/service/NodeService;->lambda$listEndPointServers$13(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/client/service/NodeService;->lambda$findRelayServerRegions$14(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$findRelayServerRegions$14(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 2
    .param p0, "builder"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/liquable/volley/request/RequestBuilder;->withHttpGetNoCache()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/nodeService/relay-server-regions"

    .line 37
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Lcom/liquable/nemo/util/ServerRegions;

    .line 38
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$listEndPointServers$13(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 2
    .param p1, "builder"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpGetNoCache()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/nodeService/endpoints"

    .line 25
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/client/service/NodeService$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/client/service/NodeService$1;-><init>(Lcom/liquable/nemo/client/service/NodeService;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public findRelayServerRegions()Lcom/liquable/nemo/util/ServerRegions;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/NodeService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {}, Lcom/liquable/nemo/client/service/NodeService$$Lambda$2;->lambdaFactory$()Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/ServerRegions;
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ignored":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/liquable/nemo/client/service/NodeService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "findRelayServerRegions error"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listEndPointServers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/NodeService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {p0}, Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/client/service/NodeService;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "ignored":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/liquable/nemo/client/service/NodeService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "listEndPointServers error"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
