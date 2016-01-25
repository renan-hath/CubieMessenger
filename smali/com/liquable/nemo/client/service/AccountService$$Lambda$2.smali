.class final synthetic Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# instance fields
.field private final arg$1:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;->arg$1:Z

    return-void
.end method

.method private static get$Lambda(Z)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;-><init>(Z)V

    return-object v0
.end method

.method public static lambdaFactory$(Z)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    iget-boolean v0, p0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$2;->arg$1:Z

    # invokes: Lcom/liquable/nemo/client/service/AccountService;->lambda$updateUseOfflineSequence$10(ZLcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    invoke-static {v0, p1}, Lcom/liquable/nemo/client/service/AccountService;->access$lambda$1(ZLcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
