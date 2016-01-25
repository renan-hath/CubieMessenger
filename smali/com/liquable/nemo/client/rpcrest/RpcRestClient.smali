.class public Lcom/liquable/nemo/client/rpcrest/RpcRestClient;
.super Ljava/lang/Object;
.source "RpcRestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/client/rpcrest/RpcRestClient$LazyHolder;,
        Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;

.field private static final volleyErrorExceptionAdapter:Lcom/liquable/volley/request/VolleyErrorHandler;


# instance fields
.field private final cookieHandler:Ljava/net/CookieHandler;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final urlComposer:Lcom/liquable/volley/request/UrlComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstanceForNetwork()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    .line 78
    new-instance v0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$1;

    invoke-direct {v0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->volleyErrorExceptionAdapter:Lcom/liquable/volley/request/VolleyErrorHandler;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/Pref;)V
    .locals 2
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;

    .prologue
    .line 146
    new-instance v0, Lcom/liquable/nemo/client/rpcrest/RpcRestUrlComposer;

    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/client/rpcrest/RpcRestUrlComposer;-><init>(Lcom/liquable/nemo/client/ServerType;)V

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/volley/request/UrlComposer;)V

    .line 147
    return-void
.end method

.method constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/volley/request/UrlComposer;)V
    .locals 1
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "urlComposer"    # Lcom/liquable/volley/request/UrlComposer;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->pref:Lcom/liquable/nemo/util/Pref;

    .line 151
    iput-object p2, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->urlComposer:Lcom/liquable/volley/request/UrlComposer;

    .line 152
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 153
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;Ljava/lang/Exception;)Lcom/liquable/future/IFuture;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->lambda$executeWithFuture$22(Lcom/liquable/volley/request/Requestable;Ljava/lang/Exception;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private builder()Lcom/liquable/volley/request/RequestBuilder;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x7530

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 160
    .local v0, "noRetryPolicy":Lcom/android/volley/DefaultRetryPolicy;
    new-instance v1, Lcom/liquable/volley/request/RequestBuilder;

    sget-object v2, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$LazyHolder;->RPC_REQUEST_QUEUE:Lcom/android/volley/RequestQueue;

    invoke-direct {v1, v2}, Lcom/liquable/volley/request/RequestBuilder;-><init>(Lcom/android/volley/RequestQueue;)V

    iget-object v2, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->urlComposer:Lcom/liquable/volley/request/UrlComposer;

    invoke-virtual {v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withUrlComposer(Lcom/liquable/volley/request/UrlComposer;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 161
    invoke-virtual {v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withRequireSecure(Z)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    const-string/jumbo v2, "X-CUBIE-RPC-ACCESS-TOKEN"

    iget-object v3, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->pref:Lcom/liquable/nemo/util/Pref;

    .line 162
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->findRpcAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/volley/request/RequestBuilder;->withAddHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v0}, Lcom/liquable/volley/request/RequestBuilder;->withRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 164
    invoke-virtual {v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withCookieHandler(Ljava/net/CookieHandler;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    return-object v1
.end method

.method private handleVolleyError(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    new-instance v1, Lcom/liquable/volley/request/VolleyErrorDispatcher;

    sget-object v2, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->volleyErrorExceptionAdapter:Lcom/liquable/volley/request/VolleyErrorHandler;

    invoke-direct {v1, v2}, Lcom/liquable/volley/request/VolleyErrorDispatcher;-><init>(Lcom/liquable/volley/request/VolleyErrorHandler;)V

    invoke-virtual {v1, p1}, Lcom/liquable/volley/request/VolleyErrorDispatcher;->dispatch(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "dispatched":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/liquable/nemo/client/AsyncException;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/liquable/nemo/client/AsyncException;

    .end local v0    # "dispatched":Ljava/lang/Exception;
    throw v0

    .line 235
    .restart local v0    # "dispatched":Ljava/lang/Exception;
    :cond_0
    instance-of v1, v0, Lcom/liquable/nemo/model/DomainException;

    if-eqz v1, :cond_1

    .line 236
    check-cast v0, Lcom/liquable/nemo/model/DomainException;

    .end local v0    # "dispatched":Ljava/lang/Exception;
    throw v0

    .line 238
    .restart local v0    # "dispatched":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "could not handle volley error"

    invoke-virtual {v1, v2, p1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private synthetic lambda$executeWithFuture$22(Lcom/liquable/volley/request/Requestable;Ljava/lang/Exception;)Lcom/liquable/future/IFuture;
    .locals 5
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 181
    sget-object v2, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volley rpc request error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 182
    instance-of v2, p2, Lcom/android/volley/VolleyError;

    if-eqz v2, :cond_0

    .line 184
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/android/volley/VolleyError;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->handleVolleyError(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    sget-object v2, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "unexpected rpc volley request async exception"

    invoke-virtual {v2, v3, p2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    new-instance v2, Lcom/liquable/nemo/client/UnknownException;

    invoke-direct {v2}, Lcom/liquable/nemo/client/UnknownException;-><init>()V

    invoke-static {v2}, Lcom/liquable/future/Futures;->error(Ljava/lang/Exception;)Lcom/liquable/future/IFuture;

    move-result-object v2

    :goto_0
    return-object v2

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/liquable/future/Futures;->error(Ljava/lang/Exception;)Lcom/liquable/future/IFuture;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "requestConfig":Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;, "Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig<TT;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->builder()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;->config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v2

    .line 209
    .local v2, "requestable":Lcom/liquable/volley/request/Requestable;, "Lcom/liquable/volley/request/Requestable<TT;>;"
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "RpcRestClient sync: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/Logger;->debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-interface {v2}, Lcom/liquable/volley/request/Requestable;->request()Ljava/util/concurrent/Future;

    move-result-object v3

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Interrupted volley rpc request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 213
    new-instance v3, Lcom/liquable/nemo/client/InterruptedErrorException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/InterruptedErrorException;-><init>()V

    throw v3

    .line 214
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 215
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v3, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volley rpc request timeout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 216
    new-instance v3, Lcom/liquable/nemo/client/TimeOutException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/TimeOutException;-><init>()V

    throw v3

    .line 217
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v1

    .line 218
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 219
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Lcom/android/volley/VolleyError;

    if-eqz v3, :cond_0

    .line 220
    sget-object v3, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volley rpc request error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 221
    check-cast v0, Lcom/android/volley/VolleyError;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->handleVolleyError(Lcom/android/volley/VolleyError;)V

    .line 225
    :goto_0
    new-instance v3, Lcom/liquable/nemo/client/UnknownException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/UnknownException;-><init>()V

    throw v3

    .line 223
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    sget-object v3, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "unexpected rpc volley request execution exception"

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public executeWithFuture(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Lcom/liquable/future/IFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig",
            "<TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "requestConfig":Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;, "Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig<TT;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->builder()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;->config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    .line 179
    .local v0, "requestable":Lcom/liquable/volley/request/Requestable;, "Lcom/liquable/volley/request/Requestable<TT;>;"
    sget-object v1, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "RpcRestClient async: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/Logger;->debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {v0}, Lcom/liquable/volley/request/Requestable;->requestAsync()Lcom/liquable/future/IFuture;

    move-result-object v1

    const-class v2, Ljava/lang/Exception;

    invoke-static {p0, v0}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;Lcom/liquable/volley/request/Requestable;)Lcom/liquable/future/FunctionWait;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/liquable/future/IFuture;->flatMapError(Ljava/lang/Class;Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;

    move-result-object v1

    return-object v1
.end method
