.class final synthetic Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# static fields
.field private static final instance:Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;

    invoke-direct {v0}, Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;-><init>()V

    sput-object v0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;->instance:Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;->instance:Lcom/liquable/nemo/client/service/AccountService$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    # invokes: Lcom/liquable/nemo/client/service/AccountService;->lambda$registerSubAccount$12(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    invoke-static {p1}, Lcom/liquable/nemo/client/service/AccountService;->access$lambda$3(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
