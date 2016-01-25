.class final synthetic Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;->arg$1:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/String;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/String;)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$3;->arg$1:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/client/service/AccountService;->lambda$generateSubAccountSessionPincode$11(Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    invoke-static {v0, p1}, Lcom/liquable/nemo/client/service/AccountService;->access$lambda$2(Ljava/lang/String;Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
