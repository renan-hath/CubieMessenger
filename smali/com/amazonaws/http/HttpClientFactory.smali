.class Lcom/amazonaws/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public createHttpClient(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;
    .locals 17
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, "userAgent":Ljava/lang/String;
    sget-object v14, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 164
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 168
    :cond_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 169
    .local v3, "httpClientParams":Lorg/apache/http/params/HttpParams;
    const/4 v14, 0x0

    invoke-static {v3, v14}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 170
    invoke-static {v3, v13}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getConnectionTimeout()I

    move-result v14

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketTimeout()I

    move-result v14

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 173
    const/4 v14, 0x1

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 174
    const/4 v14, 0x1

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v12, v14, v15

    .line 177
    .local v12, "socketSendBufferSizeHint":I
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v14

    const/4 v15, 0x1

    aget v11, v14, v15

    .line 178
    .local v11, "socketReceiveBufferSizeHint":I
    if-gtz v12, :cond_1

    if-lez v11, :cond_2

    .line 180
    :cond_1
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v3, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 185
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/amazonaws/http/ConnectionManagerFactory;->createThreadSafeClientConnManager(Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-result-object v1

    .line 187
    .local v1, "connectionManager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 200
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "proxyHost":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPort()I

    move-result v8

    .line 202
    .local v8, "proxyPort":I
    if-eqz v5, :cond_3

    if-lez v8, :cond_3

    .line 204
    sget-object v14, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Configuring Proxy. Proxy Host: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "Proxy Port: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 208
    new-instance v6, Lorg/apache/http/HttpHost;

    invoke-direct {v6, v5, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 209
    .local v6, "proxyHttpHost":Lorg/apache/http/HttpHost;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string/jumbo v15, "http.route.default-proxy"

    invoke-interface {v14, v15, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyUsername()Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "proxyUsername":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPassword()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, "proxyPassword":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyDomain()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "proxyDomain":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyWorkstation()Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, "proxyWorkstation":Ljava/lang/String;
    if-eqz v9, :cond_3

    if-eqz v7, :cond_3

    .line 218
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v14

    new-instance v15, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v15, v5, v8}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v16, Lorg/apache/http/auth/NTCredentials;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v7, v10, v4}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 224
    .end local v4    # "proxyDomain":Ljava/lang/String;
    .end local v6    # "proxyHttpHost":Lorg/apache/http/HttpHost;
    .end local v7    # "proxyPassword":Ljava/lang/String;
    .end local v9    # "proxyUsername":Ljava/lang/String;
    .end local v10    # "proxyWorkstation":Ljava/lang/String;
    :cond_3
    return-object v2
.end method
