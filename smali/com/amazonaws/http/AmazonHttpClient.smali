.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "AmazonHttpClient.java"


# static fields
.field private static httpClientFactory:Lcom/amazonaws/http/HttpClientFactory;

.field private static httpRequestFactory:Lcom/amazonaws/http/HttpRequestFactory;

.field static final log:Lorg/apache/commons/logging/Log;

.field private static final random:Ljava/util/Random;

.field private static final requestLog:Lorg/apache/commons/logging/Log;


# instance fields
.field private final config:Lcom/amazonaws/ClientConfiguration;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private responseMetadataCache:Lcom/amazonaws/util/ResponseMetadataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    const-string/jumbo v2, "com.amazonaws.request"

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    .line 67
    const-class v2, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    .line 99
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->random:Ljava/util/Random;

    .line 100
    new-instance v2, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v2}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->httpRequestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    .line 102
    new-instance v2, Lcom/amazonaws/http/HttpClientFactory;

    invoke-direct {v2}, Lcom/amazonaws/http/HttpClientFactory;-><init>()V

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->httpClientFactory:Lcom/amazonaws/http/HttpClientFactory;

    .line 112
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "1.6.0_06"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "1.6.0_13"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "1.6.0_17"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "problematicJvmVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "jvmVersion":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Detected a possible problem with the current JVM version ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ").  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "If you experience XML parsing problems using the SDK, try upgrading to a more recent JVM update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/amazonaws/util/ResponseMetadataCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/amazonaws/util/ResponseMetadataCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->responseMetadataCache:Lcom/amazonaws/util/ResponseMetadataCache;

    .line 133
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 134
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->httpClientFactory:Lcom/amazonaws/http/HttpClientFactory;

    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0, v1}, Lcom/amazonaws/http/HttpClientFactory;->createHttpClient(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 135
    return-void
.end method

.method private applyRequestData(Lcom/amazonaws/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/RequestClientOptions;->getClientMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "User-Agent"

    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/RequestClientOptions;->getClientMarker()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method private createResponse(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/http/HttpResponse;
    .locals 7
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p3, "apacheHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v2, Lcom/amazonaws/http/HttpResponse;

    invoke-direct {v2, p2, p1}, Lcom/amazonaws/http/HttpResponse;-><init>(Lcom/amazonaws/Request;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 175
    .local v2, "httpResponse":Lcom/amazonaws/http/HttpResponse;
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 177
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V

    .line 180
    :cond_0
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/HttpResponse;->setStatusCode(I)V

    .line 181
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/HttpResponse;->setStatusText(Ljava/lang/String;)V

    .line 182
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 184
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/amazonaws/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1
    return-object v2
.end method

.method private static createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "existingUserAgentString"    # Ljava/lang/String;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    .end local p0    # "existingUserAgentString":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "existingUserAgentString":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 20
    .param p4, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    .local p3, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    const/4 v13, 0x0

    .line 274
    .local v13, "leaveHttpConnectionOpen":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    const-wide/16 v4, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v8}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 276
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending Request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 282
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/http/AmazonHttpClient;->applyRequestData(Lcom/amazonaws/Request;)V

    .line 284
    const/16 v19, 0x0

    .line 285
    .local v19, "retryCount":I
    const/16 v18, 0x0

    .line 286
    .local v18, "redirectedURI":Ljava/net/URI;
    const/4 v10, 0x0

    .line 287
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    const/4 v11, 0x0

    .line 291
    .local v11, "exception":Lcom/amazonaws/AmazonServiceException;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v16, "originalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 293
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v15, "originalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 298
    :cond_1
    :goto_0
    if-lez v19, :cond_2

    .line 300
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setParameters(Ljava/util/Map;)V

    .line 301
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/amazonaws/Request;->setHeaders(Ljava/util/Map;)V

    .line 305
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getSigner()Lcom/amazonaws/auth/Signer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 307
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getSigner()Lcom/amazonaws/auth/Signer;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/amazonaws/auth/Signer;->sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 310
    :cond_3
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->httpRequestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v4, v10, v1}, Lcom/amazonaws/http/HttpRequestFactory;->createHttpRequest(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/HttpEntity;Lcom/amazonaws/http/ExecutionContext;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    .line 315
    .local v6, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    instance-of v3, v6, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_4

    move-object v3, v6

    .line 317
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 320
    :cond_4
    if-eqz v18, :cond_5

    .line 322
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 325
    :cond_5
    const/4 v7, 0x0

    .line 328
    .local v7, "response":Lorg/apache/http/HttpResponse;
    if-lez v19, :cond_6

    .line 330
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCustomBackoffStrategy()Lcom/amazonaws/internal/CustomBackoffStrategy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v11, v3}, Lcom/amazonaws/http/AmazonHttpClient;->pauseExponentially(ILcom/amazonaws/AmazonServiceException;Lcom/amazonaws/internal/CustomBackoffStrategy;)V

    .line 333
    if-eqz v10, :cond_6

    .line 335
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 336
    .local v9, "content":Ljava/io/InputStream;
    invoke-virtual {v9}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 338
    invoke-virtual {v9}, Ljava/io/InputStream;->reset()V

    .line 343
    .end local v9    # "content":Ljava/io/InputStream;
    :cond_6
    const/4 v11, 0x0

    .line 344
    add-int/lit8 v19, v19, 0x1

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/amazonaws/http/AmazonHttpClient;->isRequestSuccessful(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 353
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v13

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    .line 354
    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/http/AmazonHttpClient;->handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 405
    if-nez v13, :cond_7

    .line 409
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 413
    :cond_7
    :goto_1
    return-object v3

    .line 360
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/amazonaws/http/AmazonHttpClient;->isTemporaryRedirect(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 367
    const-string/jumbo v3, "location"

    invoke-interface {v7, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v14

    .line 368
    .local v14, "locationHeaders":[Lorg/apache/http/Header;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 369
    .local v17, "redirectedLocation":Ljava/lang/String;
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Redirecting to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 370
    invoke-static/range {v17 .. v17}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v18

    .line 371
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    .end local v14    # "locationHeaders":[Lorg/apache/http/Header;
    .end local v17    # "redirectedLocation":Ljava/lang/String;
    :cond_9
    if-nez v13, :cond_1

    .line 409
    :try_start_3
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 411
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 375
    :cond_a
    :try_start_4
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v13

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/amazonaws/http/AmazonHttpClient;->handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v11

    .line 381
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v11, v1}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 383
    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 387
    :catch_1
    move-exception v12

    .line 389
    .local v12, "ioe":Ljava/io/IOException;
    :try_start_5
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to execute HTTP request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 391
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v12, v1}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 393
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to execute HTTP request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 405
    .end local v12    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-nez v13, :cond_b

    .line 409
    :try_start_6
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 413
    :cond_b
    :goto_2
    throw v3

    .line 405
    .restart local v12    # "ioe":Ljava/io/IOException;
    :cond_c
    if-nez v13, :cond_1

    .line 409
    :try_start_7
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 411
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .end local v12    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method private handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 12
    .param p3, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p4, "apacheHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    const/16 v11, 0x1f7

    const/16 v10, 0x19d

    .line 464
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 465
    .local v6, "status":I
    move-object/from16 v0, p4

    invoke-direct {p0, p3, p1, v0}, Lcom/amazonaws/http/AmazonHttpClient;->createResponse(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v5

    .line 466
    .local v5, "response":Lcom/amazonaws/http/HttpResponse;
    invoke-interface {p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, p3, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v7, :cond_0

    move-object v2, p3

    .line 468
    check-cast v2, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 469
    .local v2, "entityEnclosingRequest":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    new-instance v7, Lcom/amazonaws/http/HttpMethodReleaseInputStream;

    invoke-direct {v7, v2}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    invoke-virtual {v5, v7}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V

    .line 472
    .end local v2    # "entityEnclosingRequest":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    :cond_0
    const/4 v4, 0x0

    .line 475
    .local v4, "exception":Lcom/amazonaws/AmazonServiceException;
    :try_start_0
    invoke-interface {p2, v5}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    move-object v4, v0

    .line 476
    sget-object v7, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received error response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    invoke-virtual {v4, v6}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 508
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v4}, Lcom/amazonaws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 510
    return-object v4

    .line 478
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    if-ne v6, v10, :cond_1

    .line 484
    new-instance v4, Lcom/amazonaws/AmazonServiceException;

    .end local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    const-string/jumbo v7, "Request entity too large"

    invoke-direct {v4, v7}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 485
    .restart local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v4, v10}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 487
    sget-object v7, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 488
    const-string/jumbo v7, "Request entity too large"

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_1
    if-ne v6, v11, :cond_2

    const-string/jumbo v7, "Service Unavailable"

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 493
    new-instance v4, Lcom/amazonaws/AmazonServiceException;

    .end local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    const-string/jumbo v7, "Service unavailable"

    invoke-direct {v4, v7}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 494
    .restart local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v4, v11}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 496
    sget-object v7, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 497
    const-string/jumbo v7, "Service unavailable"

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to unmarshall error response ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v7, v3, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 20
    .param p3, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p4, "apacheHttpResponse"    # Lorg/apache/http/HttpResponse;
    .param p5, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lorg/apache/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->createResponse(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v12

    .line 542
    .local v12, "httpResponse":Lcom/amazonaws/http/HttpResponse;
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p3

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v11, p3

    .line 544
    check-cast v11, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 545
    .local v11, "httpEntityEnclosingRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    new-instance v17, Lcom/amazonaws/http/HttpMethodReleaseInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V

    .line 550
    .end local v11    # "httpEntityEnclosingRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_0
    const/4 v5, 0x0

    .line 551
    .local v5, "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :try_start_0
    const-string/jumbo v17, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 553
    new-instance v6, Lcom/amazonaws/util/CountingInputStream;

    invoke-virtual {v12}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/amazonaws/util/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v5    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .local v6, "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :try_start_1
    invoke-virtual {v12, v6}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 557
    .end local v6    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .restart local v5    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 558
    .local v14, "startTime":J
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/AmazonWebServiceResponse;

    .line 559
    .local v4, "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 560
    .local v8, "endTime":J
    const-string/jumbo v17, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 562
    invoke-virtual/range {p5 .. p5}, Lcom/amazonaws/http/ExecutionContext;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 564
    invoke-virtual/range {p5 .. p5}, Lcom/amazonaws/http/ExecutionContext;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object v16

    .line 565
    .local v16, "timingInfo":Lcom/amazonaws/util/TimingInfo;
    new-instance v13, Lcom/amazonaws/util/TimingInfo;

    invoke-direct {v13, v14, v15, v8, v9}, Lcom/amazonaws/util/TimingInfo;-><init>(JJ)V

    .line 566
    .local v13, "responseProcessingTiming":Lcom/amazonaws/util/TimingInfo;
    const-string/jumbo v17, "response-processing"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/amazonaws/util/TimingInfo;->addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V

    .line 569
    if-eqz v5, :cond_2

    .line 571
    const-string/jumbo v17, "bytes-processed"

    invoke-virtual {v5}, Lcom/amazonaws/util/CountingInputStream;->getByteCount()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/amazonaws/util/TimingInfo;->addCounter(Ljava/lang/String;Ljava/lang/Number;)V

    .line 577
    .end local v13    # "responseProcessingTiming":Lcom/amazonaws/util/TimingInfo;
    .end local v16    # "timingInfo":Lcom/amazonaws/util/TimingInfo;
    :cond_2
    if-nez v4, :cond_3

    .line 578
    new-instance v17, Ljava/lang/RuntimeException;

    const-string/jumbo v18, "Unable to unmarshall response metadata"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 593
    .end local v4    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    .end local v8    # "endTime":J
    .end local v14    # "startTime":J
    :catch_0
    move-exception v7

    .line 595
    .local v7, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unable to unmarshall response ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 596
    .local v10, "errorMessage":Ljava/lang/String;
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 580
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "errorMessage":Ljava/lang/String;
    .restart local v4    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    .restart local v8    # "endTime":J
    .restart local v14    # "startTime":J
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/http/AmazonHttpClient;->responseMetadataCache:Lcom/amazonaws/util/ResponseMetadataCache;

    move-object/from16 v17, v0

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v18

    invoke-virtual {v4}, Lcom/amazonaws/AmazonWebServiceResponse;->getResponseMetadata()Lcom/amazonaws/ResponseMetadata;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/amazonaws/util/ResponseMetadataCache;->add(Ljava/lang/Object;Lcom/amazonaws/ResponseMetadata;)V

    .line 583
    sget-object v17, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 585
    sget-object v17, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received successful response: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", AWS Request ID: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 591
    :cond_4
    invoke-virtual {v4}, Lcom/amazonaws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v17

    return-object v17

    .line 593
    .end local v4    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    .end local v5    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .end local v8    # "endTime":J
    .end local v14    # "startTime":J
    .restart local v6    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :catch_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .restart local v5    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    goto :goto_0
.end method

.method private isRequestSuccessful(Lorg/apache/http/HttpResponse;)Z
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 602
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 603
    .local v0, "status":I
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTemporaryRedirect(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 608
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 609
    .local v0, "status":I
    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "Location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z
    .locals 3
    .param p1, "ase"    # Lcom/amazonaws/AmazonServiceException;

    .prologue
    const/4 v0, 0x0

    .line 624
    if-nez p1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "Throttling"

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "ThrottlingException"

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "ProvisionedThroughputExceededException"

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pauseExponentially(ILcom/amazonaws/AmazonServiceException;Lcom/amazonaws/internal/CustomBackoffStrategy;)V
    .locals 9
    .param p1, "retries"    # I
    .param p2, "previousException"    # Lcom/amazonaws/AmazonServiceException;
    .param p3, "backoffStrategy"    # Lcom/amazonaws/internal/CustomBackoffStrategy;

    .prologue
    .line 642
    const-wide/16 v0, 0x0

    .line 643
    .local v0, "delay":J
    if-eqz p3, :cond_1

    .line 645
    invoke-virtual {p3, p1}, Lcom/amazonaws/internal/CustomBackoffStrategy;->getBackoffPeriod(I)I

    move-result v5

    int-to-long v0, v5

    .line 657
    :goto_0
    const-wide/16 v5, 0x4e20

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 658
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 660
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Retriable error detected, will retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms, attempt number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 668
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    return-void

    .line 649
    :cond_1
    const-wide/16 v3, 0x12c

    .line 650
    .local v3, "scaleFactor":J
    invoke-direct {p0, p2}, Lcom/amazonaws/http/AmazonHttpClient;->isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 652
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->random:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x1f4

    int-to-long v3, v5

    .line 654
    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-double v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    long-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-long v0, v5

    goto :goto_0

    .line 670
    .end local v3    # "scaleFactor":J
    :catch_0
    move-exception v2

    .line 672
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private shouldRetry(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;I)Z
    .locals 6
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "retries"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 690
    iget-object v4, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v4}, Lcom/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v4

    if-le p3, v4, :cond_1

    .line 737
    .end local p1    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_0
    :goto_0
    return v2

    .line 693
    .restart local p1    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_1
    instance-of v4, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_2

    .line 695
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 696
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 700
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    instance-of v4, p2, Lorg/apache/http/NoHttpResponseException;

    if-nez v4, :cond_3

    instance-of v4, p2, Ljava/net/SocketException;

    if-nez v4, :cond_3

    instance-of v4, p2, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_5

    .line 703
    :cond_3
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 705
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Retrying on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    move v2, v3

    .line 709
    goto :goto_0

    .line 712
    :cond_5
    instance-of v4, p2, Lcom/amazonaws/AmazonServiceException;

    if-eqz v4, :cond_0

    move-object v0, p2

    .line 714
    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    .line 723
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_7

    :cond_6
    move v2, v3

    .line 725
    goto :goto_0

    .line 733
    :cond_7
    invoke-direct {p0, v0}, Lcom/amazonaws/http/AmazonHttpClient;->isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 734
    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 11
    .param p4, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    .local p3, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 209
    .local v5, "startTime":J
    if-nez p4, :cond_0

    .line 210
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    const-string/jumbo v10, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 211
    :cond_0
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->getRequestHandlers()Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    if-nez v4, :cond_1

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .restart local v4    # "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/handlers/RequestHandler;

    .line 218
    .local v3, "requestHandler":Lcom/amazonaws/handlers/RequestHandler;
    invoke-interface {v3, p1}, Lcom/amazonaws/handlers/RequestHandler;->beforeRequest(Lcom/amazonaws/Request;)V

    goto :goto_0

    .line 223
    .end local v3    # "requestHandler":Lcom/amazonaws/handlers/RequestHandler;
    :cond_2
    :try_start_0
    new-instance v8, Lcom/amazonaws/util/TimingInfo;

    invoke-direct {v8, v5, v6}, Lcom/amazonaws/util/TimingInfo;-><init>(J)V

    .line 224
    .local v8, "timingInfo":Lcom/amazonaws/util/TimingInfo;
    invoke-virtual {p4, v8}, Lcom/amazonaws/http/ExecutionContext;->setTimingInfo(Lcom/amazonaws/util/TimingInfo;)V

    .line 225
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    .line 226
    .local v7, "t":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/util/TimingInfo;->setEndTime(J)V

    .line 228
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/handlers/RequestHandler;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .local v1, "handler":Lcom/amazonaws/handlers/RequestHandler;
    :try_start_1
    invoke-interface {v1, p1, v7, v8}, Lcom/amazonaws/handlers/RequestHandler;->afterResponse(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v9

    goto :goto_1

    .line 240
    .end local v1    # "handler":Lcom/amazonaws/handlers/RequestHandler;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .end local v8    # "timingInfo":Lcom/amazonaws/util/TimingInfo;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Lcom/amazonaws/AmazonClientException;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/handlers/RequestHandler;

    .line 244
    .restart local v1    # "handler":Lcom/amazonaws/handlers/RequestHandler;
    invoke-interface {v1, p1, v0}, Lcom/amazonaws/handlers/RequestHandler;->afterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V

    goto :goto_2

    .line 246
    .end local v1    # "handler":Lcom/amazonaws/handlers/RequestHandler;
    :cond_3
    throw v0

    .line 238
    .end local v0    # "e":Lcom/amazonaws/AmazonClientException;
    .restart local v7    # "t":Ljava/lang/Object;, "TT;"
    .restart local v8    # "timingInfo":Lcom/amazonaws/util/TimingInfo;
    :cond_4
    return-object v7
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    .line 423
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 424
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 749
    return-void
.end method
