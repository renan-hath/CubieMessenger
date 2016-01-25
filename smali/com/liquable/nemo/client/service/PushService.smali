.class public Lcom/liquable/nemo/client/service/PushService;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/liquable/nemo/client/service/IPushService;


# instance fields
.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 0
    .param p1, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/client/service/PushService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 14
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/liquable/nemo/client/service/PushService;->lambda$pushVoipDialing$21(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$pushVoipDialing$21(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 2
    .param p3, "builder"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 19
    invoke-virtual {p3}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/pushService/pushVoipDialing"

    .line 20
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "dialId"

    .line 21
    invoke-virtual {v0, v1, p0}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "receiverUid"

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "ip"

    .line 23
    invoke-virtual {v0, v1, p2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 24
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public pushVoipDialing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "receiverUid"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/PushService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/client/service/PushService$$Lambda$1;->lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
