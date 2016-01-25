.class Lcom/liquable/nemo/client/rpcrest/RpcRestClient$LazyHolder;
.super Ljava/lang/Object;
.source "RpcRestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/rpcrest/RpcRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field public static final RPC_REQUEST_QUEUE:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 67
    new-instance v2, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v2}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 68
    .local v2, "stack":Lcom/android/volley/toolbox/HttpStack;
    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v0, v2}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 69
    .local v0, "network":Lcom/android/volley/Network;
    const/4 v3, 0x3

    .line 70
    .local v3, "threadPoolSize":I
    new-instance v1, Lcom/android/volley/RequestQueue;

    new-instance v4, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v4}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    const/4 v5, 0x3

    invoke-direct {v1, v4, v0, v5}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    .line 71
    .local v1, "queue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->start()V

    .line 72
    sput-object v1, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$LazyHolder;->RPC_REQUEST_QUEUE:Lcom/android/volley/RequestQueue;

    .line 73
    # getter for: Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    const-string/jumbo v5, "rpc rest client volley queue started"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
