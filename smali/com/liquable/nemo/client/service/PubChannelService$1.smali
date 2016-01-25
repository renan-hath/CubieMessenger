.class Lcom/liquable/nemo/client/service/PubChannelService$1;
.super Ljava/lang/Object;
.source "PubChannelService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/PubChannelService;->subscribeFromUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/PubChannelService;

.field final synthetic val$rawUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/PubChannelService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/PubChannelService;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/client/service/PubChannelService$1;->this$0:Lcom/liquable/nemo/client/service/PubChannelService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/PubChannelService$1;->val$rawUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 3
    .param p1, "builder"    # Lcom/liquable/volley/request/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/volley/request/RequestBuilder;",
            ")",
            "Lcom/liquable/volley/request/Requestable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/pubChannelService/subscribeFromUrl"

    .line 32
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "rawUrl"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/PubChannelService$1;->val$rawUrl:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 34
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
