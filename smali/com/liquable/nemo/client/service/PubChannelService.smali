.class public Lcom/liquable/nemo/client/service/PubChannelService;
.super Ljava/lang/Object;
.source "PubChannelService.java"


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;
    .param p2, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/client/service/PubChannelService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/client/service/PubChannelService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 23
    return-void
.end method


# virtual methods
.method public subscribeFromUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "rawUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/PubChannelSubscribeException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PubChannelService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/PubChannelService$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/client/service/PubChannelService$1;-><init>(Lcom/liquable/nemo/client/service/PubChannelService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/PubChannelSubscribeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lcom/liquable/nemo/model/PubChannelSubscribeException;
    throw v0

    .line 41
    .end local v0    # "e":Lcom/liquable/nemo/model/PubChannelSubscribeException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subscriberUid"    # Ljava/lang/String;
    .param p2, "broadcasterUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PubChannelService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "pubChannelService.unsubscribe"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
