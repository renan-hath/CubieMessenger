.class final synthetic Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/client/service/NodeService;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/client/service/NodeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;->arg$1:Lcom/liquable/nemo/client/service/NodeService;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/client/service/NodeService;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;-><init>(Lcom/liquable/nemo/client/service/NodeService;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/client/service/NodeService;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;-><init>(Lcom/liquable/nemo/client/service/NodeService;)V

    return-object v0
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NodeService$$Lambda$1;->arg$1:Lcom/liquable/nemo/client/service/NodeService;

    # invokes: Lcom/liquable/nemo/client/service/NodeService;->lambda$listEndPointServers$13(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    invoke-static {v0, p1}, Lcom/liquable/nemo/client/service/NodeService;->access$lambda$0(Lcom/liquable/nemo/client/service/NodeService;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
