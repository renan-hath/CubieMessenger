.class final synthetic Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# instance fields
.field private final arg$1:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;->arg$1:I

    return-void
.end method

.method private static get$Lambda(I)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;-><init>(I)V

    return-object v0
.end method

.method public static lambdaFactory$(I)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    iget v0, p0, Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;->arg$1:I

    # invokes: Lcom/liquable/nemo/client/service/ChattingService;->lambda$getNextSync$8(ILcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    invoke-static {v0, p1}, Lcom/liquable/nemo/client/service/ChattingService;->access$lambda$0(ILcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
