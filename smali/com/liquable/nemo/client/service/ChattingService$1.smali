.class Lcom/liquable/nemo/client/service/ChattingService$1;
.super Ljava/lang/Object;
.source "ChattingService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/ChattingService;->acknowledge(Lcom/liquable/nemo/model/message/OfflineSyncDto;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/client/service/ChattingService;

.field final synthetic val$seqIds:Ljava/util/List;

.field final synthetic val$syncDto:Lcom/liquable/nemo/model/message/OfflineSyncDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/ChattingService;Lcom/liquable/nemo/model/message/OfflineSyncDto;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/ChattingService;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/liquable/nemo/client/service/ChattingService$1;->this$0:Lcom/liquable/nemo/client/service/ChattingService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/ChattingService$1;->val$syncDto:Lcom/liquable/nemo/model/message/OfflineSyncDto;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/ChattingService$1;->val$seqIds:Ljava/util/List;

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
    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "checkPoint"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/ChattingService$1;->val$syncDto:Lcom/liquable/nemo/model/message/OfflineSyncDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/message/OfflineSyncDto;->getCheckPoint()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v1, "sequenceIds"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/ChattingService$1;->val$seqIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    const-string/jumbo v2, "/offlineMessageService/acknowledge"

    .line 145
    invoke-virtual {v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Lcom/liquable/volley/request/RequestBuilder;->withJsonBody(Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    .line 147
    invoke-virtual {v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v1

    return-object v1
.end method
