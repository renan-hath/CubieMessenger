.class final Lcom/liquable/nemo/client/rpcrest/RpcRestClient$1;
.super Ljava/lang/Object;
.source "RpcRestClient.java"

# interfaces
.implements Lcom/liquable/volley/request/VolleyErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/rpcrest/RpcRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAuthFailureError(Lcom/android/volley/AuthFailureError;)V
    .locals 1
    .param p1, "e"    # Lcom/android/volley/AuthFailureError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/SecurityErrorException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/liquable/nemo/client/SecurityErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/SecurityErrorException;-><init>()V

    throw v0
.end method

.method public handleDefault(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "e"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/UnknownException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/liquable/nemo/client/UnknownException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/UnknownException;-><init>()V

    throw v0
.end method

.method public handleNetworkError(Lcom/android/volley/NetworkError;)V
    .locals 1
    .param p1, "e"    # Lcom/android/volley/NetworkError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>()V

    throw v0
.end method

.method public handleNoConnectionError(Lcom/android/volley/NoConnectionError;)V
    .locals 1
    .param p1, "e"    # Lcom/android/volley/NoConnectionError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>()V

    throw v0
.end method

.method public handleParseError(Lcom/android/volley/ParseError;)V
    .locals 1
    .param p1, "e"    # Lcom/android/volley/ParseError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/SyntaxErrorException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v0
.end method

.method public handleServerError(Lcom/android/volley/ServerError;)V
    .locals 7
    .param p1, "e"    # Lcom/android/volley/ServerError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/PlatformErrorException;,
            Lcom/liquable/nemo/model/DomainException;,
            Lcom/liquable/nemo/client/SyntaxErrorException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x190

    .line 108
    iget-object v2, p1, Lcom/android/volley/ServerError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 112
    .local v2, "response":Lcom/android/volley/NetworkResponse;
    iget v4, v2, Lcom/android/volley/NetworkResponse;->statusCode:I

    if-ne v4, v5, :cond_0

    .line 115
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .local v3, "responseStr":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->getInstance()Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/model/DomainException;

    move-result-object v4

    throw v4
    :try_end_1
    .catch Lcom/liquable/nemo/model/ExceptionMappingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :catch_0
    move-exception v1

    .line 125
    .local v1, "mappingException":Lcom/liquable/nemo/model/ExceptionMappingException;
    # getter for: Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status 400 but not domain exception: raw body:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 126
    new-instance v4, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v4

    .line 116
    .end local v1    # "mappingException":Lcom/liquable/nemo/model/ExceptionMappingException;
    .end local v3    # "responseStr":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "encodingException":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v4

    .line 128
    .end local v0    # "encodingException":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget v4, v2, Lcom/android/volley/NetworkResponse;->statusCode:I

    if-le v4, v5, :cond_1

    iget v4, v2, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_1

    .line 129
    new-instance v4, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v4

    .line 131
    :cond_1
    new-instance v4, Lcom/liquable/nemo/client/PlatformErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/PlatformErrorException;-><init>()V

    throw v4
.end method

.method public handleTimeoutError(Lcom/android/volley/TimeoutError;)V
    .locals 1
    .param p1, "e"    # Lcom/android/volley/TimeoutError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/TimeOutException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/liquable/nemo/client/TimeOutException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/TimeOutException;-><init>()V

    throw v0
.end method
