.class final synthetic Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/FunctionWait;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

.field private final arg$2:Lcom/liquable/volley/request/Requestable;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;->arg$1:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    iput-object p2, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;->arg$2:Lcom/liquable/volley/request/Requestable;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;)Lcom/liquable/future/FunctionWait;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;-><init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;)Lcom/liquable/future/FunctionWait;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;-><init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;->arg$1:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    iget-object v1, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;->arg$2:Lcom/liquable/volley/request/Requestable;

    check-cast p1, Ljava/lang/Exception;

    # invokes: Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->lambda$executeWithFuture$22(Lcom/liquable/volley/request/Requestable;Ljava/lang/Exception;)Lcom/liquable/future/IFuture;
    invoke-static {v0, v1, p1}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->access$lambda$0(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;Ljava/lang/Exception;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
