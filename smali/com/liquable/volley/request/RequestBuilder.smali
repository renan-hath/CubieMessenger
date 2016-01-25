.class public Lcom/liquable/volley/request/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;,
        Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;,
        Lcom/liquable/volley/request/RequestBuilder$DefaultUrlComposer;
    }
.end annotation


# instance fields
.field private allowCache:Z

.field private cookieHandler:Ljava/net/CookieHandler;

.field private emptyResponseError:Lcom/android/volley/VolleyError;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private jsonBody:Ljava/lang/Object;

.field private method:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private priority:Lcom/android/volley/Request$Priority;

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private requireSecure:Ljava/lang/Boolean;

.field private retryPolicy:Lcom/android/volley/RetryPolicy;

.field private urlComposer:Lcom/liquable/volley/request/UrlComposer;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;)V
    .locals 1
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/volley/request/RequestBuilder;->allowCache:Z

    .line 310
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->path:Ljava/lang/String;

    .line 312
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->priority:Lcom/android/volley/Request$Priority;

    .line 321
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->jsonBody:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->port:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->requireSecure:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/volley/request/RequestBuilder;)Ljava/net/CookieHandler;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/volley/request/RequestBuilder;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/liquable/volley/request/RequestBuilder;->restoreCookieIfNeeded(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/volley/request/RequestBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget v0, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    return v0
.end method

.method static synthetic access$500(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/Request$Priority;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->priority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/volley/request/RequestBuilder;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/liquable/volley/request/RequestBuilder;->storeCookieIfNeeded(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/VolleyError;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->emptyResponseError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/volley/request/RequestBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/liquable/volley/request/RequestBuilder;->allowCache:Z

    return v0
.end method

.method private buildFullUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;

    invoke-direct {v0, p0}, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;-><init>(Lcom/liquable/volley/request/RequestBuilder;)V

    .line 436
    .local v0, "requestInfo":Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder;->urlComposer:Lcom/liquable/volley/request/UrlComposer;

    if-nez v1, :cond_0

    .line 437
    new-instance v1, Lcom/liquable/volley/request/RequestBuilder$DefaultUrlComposer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/liquable/volley/request/RequestBuilder$DefaultUrlComposer;-><init>(Lcom/liquable/volley/request/RequestBuilder$1;)V

    invoke-virtual {v1, v0}, Lcom/liquable/volley/request/RequestBuilder$DefaultUrlComposer;->compose(Lcom/liquable/volley/request/RequestInfo;)Ljava/lang/String;

    move-result-object v1

    .line 440
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder;->urlComposer:Lcom/liquable/volley/request/UrlComposer;

    invoke-interface {v1, v0}, Lcom/liquable/volley/request/UrlComposer;->compose(Lcom/liquable/volley/request/RequestInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private restoreCookieIfNeeded(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "targetRequestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder;->cookieHandler:Ljava/net/CookieHandler;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 330
    invoke-virtual {v2, v3, v4}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 332
    .local v0, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 333
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 339
    .end local v0    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v2

    goto :goto_0

    .line 340
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private storeCookieIfNeeded(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 351
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 354
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/liquable/volley/request/RequestBuilder;->cookieHandler:Ljava/net/CookieHandler;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v2

    goto :goto_0

    .line 356
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;)",
            "Lcom/liquable/volley/request/Requestable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "resultMapper":Lcom/liquable/nemo/client/mapper/ResultMapper;, "Lcom/liquable/nemo/client/mapper/ResultMapper<TT;>;"
    const/4 v4, 0x0

    .line 401
    new-instance v0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;

    iget v2, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 402
    invoke-direct {p0}, Lcom/liquable/volley/request/RequestBuilder;->buildFullUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/liquable/volley/request/RequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;-><init>(Lcom/liquable/volley/request/RequestBuilder;ILjava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;Lcom/liquable/nemo/client/mapper/ResultMapper;Lcom/android/volley/RetryPolicy;)V

    return-object v0
.end method

.method public build(Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/lang/Object;)Lcom/liquable/volley/request/Requestable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;TT;)",
            "Lcom/liquable/volley/request/Requestable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "resultMapper":Lcom/liquable/nemo/client/mapper/ResultMapper;, "Lcom/liquable/nemo/client/mapper/ResultMapper<TT;>;"
    .local p2, "emptyResponseValue":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 391
    new-instance v0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;

    iget v2, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 392
    invoke-direct {p0}, Lcom/liquable/volley/request/RequestBuilder;->buildFullUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/liquable/volley/request/RequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    move-object v1, p0

    move-object v4, p2

    move-object v6, v5

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;-><init>(Lcom/liquable/volley/request/RequestBuilder;ILjava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;Lcom/liquable/nemo/client/mapper/ResultMapper;Lcom/android/volley/RetryPolicy;)V

    return-object v0
.end method

.method public build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/liquable/volley/request/Requestable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "returnTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;Ljava/lang/Object;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/Class;Ljava/lang/Object;)Lcom/liquable/volley/request/Requestable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Lcom/liquable/volley/request/Requestable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "returnTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "emptyResponseValue":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 381
    new-instance v0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;

    iget v2, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 382
    invoke-direct {p0}, Lcom/liquable/volley/request/RequestBuilder;->buildFullUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/liquable/volley/request/RequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    move-object v1, p0

    move-object v4, p2

    move-object v6, p1

    move-object v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;-><init>(Lcom/liquable/volley/request/RequestBuilder;ILjava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;Lcom/liquable/nemo/client/mapper/ResultMapper;Lcom/android/volley/RetryPolicy;)V

    return-object v0
.end method

.method public build(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/volley/request/Requestable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TT;>;)",
            "Lcom/liquable/volley/request/Requestable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "returnTypeReference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liquable/volley/request/RequestBuilder;->build(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Object;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Object;)Lcom/liquable/volley/request/Requestable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TT;>;TT;)",
            "Lcom/liquable/volley/request/Requestable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "returnTypeReference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    .local p2, "emptyResponseValue":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 424
    new-instance v0, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;

    iget v2, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 425
    invoke-direct {p0}, Lcom/liquable/volley/request/RequestBuilder;->buildFullUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/liquable/volley/request/RequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/liquable/volley/request/RequestBuilder$JacksonRequest;-><init>(Lcom/liquable/volley/request/RequestBuilder;ILjava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/Class;Lcom/liquable/nemo/client/mapper/ResultMapper;Lcom/android/volley/RetryPolicy;)V

    return-object v0
.end method

.method public withAddHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-object p0
.end method

.method public withAddHeaders(Ljava/util/Map;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/volley/request/RequestBuilder;"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 461
    return-object p0
.end method

.method public withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    .line 475
    :cond_0
    if-nez p2, :cond_1

    .line 476
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 477
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Iterable;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    const-string/jumbo v1, ","

    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 479
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    const-string/jumbo v1, ","

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public withAddParams(Ljava/util/Map;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/volley/request/RequestBuilder;"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 493
    return-object p0
.end method

.method public withCookieHandler(Ljava/net/CookieHandler;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->cookieHandler:Ljava/net/CookieHandler;

    .line 453
    return-object p0
.end method

.method public withEmptyResponseAsError(Lcom/android/volley/VolleyError;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 0
    .param p1, "emptyResponseError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->emptyResponseError:Lcom/android/volley/VolleyError;

    .line 506
    return-object p0
.end method

.method public withHost(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->host:Ljava/lang/String;

    .line 511
    return-object p0
.end method

.method public withHttpGetAllowCache()Lcom/liquable/volley/request/RequestBuilder;
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/volley/request/RequestBuilder;->allowCache:Z

    .line 523
    return-object p0
.end method

.method public withHttpGetNoCache()Lcom/liquable/volley/request/RequestBuilder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 531
    iput v0, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 532
    iput-boolean v0, p0, Lcom/liquable/volley/request/RequestBuilder;->allowCache:Z

    .line 533
    return-object p0
.end method

.method public withHttpPost()Lcom/liquable/volley/request/RequestBuilder;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/volley/request/RequestBuilder;->method:I

    .line 538
    return-object p0
.end method

.method public withJsonBody(Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 0
    .param p1, "dto"    # Ljava/lang/Object;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->jsonBody:Ljava/lang/Object;

    .line 550
    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 3
    .param p1, "pathStartWithSlash"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "path must start with slash \'/\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->path:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public withPort(I)Lcom/liquable/volley/request/RequestBuilder;
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->port:Ljava/lang/Integer;

    .line 571
    return-object p0
.end method

.method public withPriority(Lcom/android/volley/Request$Priority;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 0
    .param p1, "priority"    # Lcom/android/volley/Request$Priority;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->priority:Lcom/android/volley/Request$Priority;

    .line 576
    return-object p0
.end method

.method public withRequireSecure(Z)Lcom/liquable/volley/request/RequestBuilder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 597
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/volley/request/RequestBuilder;->requireSecure:Ljava/lang/Boolean;

    .line 598
    return-object p0
.end method

.method public withRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 0
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    .line 581
    return-object p0
.end method

.method public withUrlComposer(Lcom/liquable/volley/request/UrlComposer;)Lcom/liquable/volley/request/RequestBuilder;
    .locals 0
    .param p1, "composer"    # Lcom/liquable/volley/request/UrlComposer;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder;->urlComposer:Lcom/liquable/volley/request/UrlComposer;

    .line 603
    return-object p0
.end method
