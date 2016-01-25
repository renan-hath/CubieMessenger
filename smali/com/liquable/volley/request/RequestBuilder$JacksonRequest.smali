.class Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;
.super Lcom/liquable/volley/request/CompletableRequest;
.source "RequestBuilder.java"

# interfaces
.implements Lcom/liquable/volley/request/Requestable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/volley/request/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JacksonRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/liquable/volley/request/CompletableRequest",
        "<TT;>;",
        "Lcom/liquable/volley/request/Requestable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final emptyResponseValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final resultMapper:Lcom/liquable/nemo/client/mapper/ResultMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liquable/volley/request/RequestBuilder;

.field private final typeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final typeReference:Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liquable/volley/request/RequestBuilder;ILjava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;Lcom/liquable/nemo/client/mapper/ResultMapper;Lcom/android/volley/RetryPolicy;)V
    .locals 0
    .param p2, "method"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p8, "retryPolicy"    # Lcom/android/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;",
            "Lcom/android/volley/RetryPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    .local p4, "emptyResponseValue":Ljava/lang/Object;, "TT;"
    .local p5, "typeReference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    .local p6, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p7, "resultMapper":Lcom/liquable/nemo/client/mapper/ResultMapper;, "Lcom/liquable/nemo/client/mapper/ResultMapper<TT;>;"
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/liquable/volley/request/CompletableRequest;-><init>(ILjava/lang/String;)V

    .line 78
    iput-object p4, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->emptyResponseValue:Ljava/lang/Object;

    .line 79
    iput-object p5, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->typeReference:Lorg/codehaus/jackson/type/TypeReference;

    .line 80
    iput-object p6, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->typeClass:Ljava/lang/Class;

    .line 81
    iput-object p7, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->resultMapper:Lcom/liquable/nemo/client/mapper/ResultMapper;

    .line 82
    if-eqz p8, :cond_0

    .line 83
    invoke-virtual {p0, p8}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 85
    :cond_0
    return-void
.end method

.method private decodeResponseJson(Lcom/android/volley/NetworkResponse;)Ljava/lang/Object;
    .locals 5
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/ParseError;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->typeReference:Lorg/codehaus/jackson/type/TypeReference;

    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v2

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->typeReference:Lorg/codehaus/jackson/type/TypeReference;

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/json/SimpleJsonMapper;->readValue([BLorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    :goto_0
    return-object v2

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->typeClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 93
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v2

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->typeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/json/SimpleJsonMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->resultMapper:Lcom/liquable/nemo/client/mapper/ResultMapper;

    if-eqz v2, :cond_2

    .line 96
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v2

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/json/SimpleJsonMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "raw":Ljava/lang/Object;
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->resultMapper:Lcom/liquable/nemo/client/mapper/ResultMapper;

    invoke-interface {v2, v1}, Lcom/liquable/nemo/client/mapper/ResultMapper;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 99
    .end local v1    # "raw":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v2
.end method

.method private isPostJsonBody()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    const/4 v0, 0x1

    .line 163
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->method:I
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$400(Lcom/liquable/volley/request/RequestBuilder;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->jsonBody:Ljava/lang/Object;
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$000(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    invoke-direct {p0}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->isPostJsonBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->jsonBody:Ljava/lang/Object;
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$000(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/json/SimpleJsonMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/liquable/volley/request/CompletableRequest;->getBody()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    invoke-direct {p0}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->isPostJsonBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string/jumbo v0, "application/json"

    .line 121
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/liquable/volley/request/CompletableRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "createdHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "createdHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .restart local v0    # "createdHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->cookieHandler:Ljava/net/CookieHandler;
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$200(Lcom/liquable/volley/request/RequestBuilder;)Ljava/net/CookieHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "createdHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    .restart local v0    # "createdHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    invoke-virtual {p0}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/liquable/volley/request/RequestBuilder;->restoreCookieIfNeeded(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v1, v2, v0}, Lcom/liquable/volley/request/RequestBuilder;->access$300(Lcom/liquable/volley/request/RequestBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    :cond_2
    if-eqz v0, :cond_3

    .line 142
    .end local v0    # "createdHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .restart local v0    # "createdHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-super {p0}, Lcom/liquable/volley/request/CompletableRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->method:I
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$400(Lcom/liquable/volley/request/RequestBuilder;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$500(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->priority:Lcom/android/volley/Request$Priority;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$600(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/Request$Priority;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    invoke-super {p0}, Lcom/liquable/volley/request/CompletableRequest;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->priority:Lcom/android/volley/Request$Priority;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$600(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/Request$Priority;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    invoke-virtual {p0}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    # invokes: Lcom/liquable/volley/request/RequestBuilder;->storeCookieIfNeeded(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v3, v4, v5}, Lcom/liquable/volley/request/RequestBuilder;->access$700(Lcom/liquable/volley/request/RequestBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    iget-object v3, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->typeClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/Void;

    if-ne v3, v4, :cond_0

    .line 171
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    .line 192
    :goto_0
    return-object v3

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->emptyResponseValue:Ljava/lang/Object;

    .line 176
    .local v1, "decoded":Ljava/lang/Object;, "TT;"
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v3, v3

    if-lez v3, :cond_2

    .line 177
    invoke-direct {p0, p1}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->decodeResponseJson(Lcom/android/volley/NetworkResponse;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->allowCache:Z
    invoke-static {v3}, Lcom/liquable/volley/request/RequestBuilder;->access$900(Lcom/liquable/volley/request/RequestBuilder;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->method:I
    invoke-static {v3}, Lcom/liquable/volley/request/RequestBuilder;->access$400(Lcom/liquable/volley/request/RequestBuilder;)I

    move-result v3

    if-nez v3, :cond_3

    .line 186
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 190
    .local v0, "cacheEntry":Lcom/android/volley/Cache$Entry;
    :goto_1
    invoke-static {v1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0

    .line 179
    .end local v0    # "cacheEntry":Lcom/android/volley/Cache$Entry;
    :cond_2
    iget-object v3, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->emptyResponseError:Lcom/android/volley/VolleyError;
    invoke-static {v3}, Lcom/liquable/volley/request/RequestBuilder;->access$800(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/VolleyError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->emptyResponseError:Lcom/android/volley/VolleyError;
    invoke-static {v3}, Lcom/liquable/volley/request/RequestBuilder;->access$800(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/VolleyError;

    move-result-object v3

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_0
    .catch Lcom/android/volley/ParseError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 188
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "cacheEntry":Lcom/android/volley/Cache$Entry;
    goto :goto_1

    .line 191
    .end local v0    # "cacheEntry":Lcom/android/volley/Cache$Entry;
    .end local v1    # "decoded":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Lcom/android/volley/ParseError;
    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method

.method public request()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->requestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$1000(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->execute(Lcom/android/volley/RequestQueue;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public requestAsync()Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;, "Lcom/liquable/volley/request/RequestBuilder$JacksonRequest<TT;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->requestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$1000(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;->executeAsync(Lcom/android/volley/RequestQueue;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
