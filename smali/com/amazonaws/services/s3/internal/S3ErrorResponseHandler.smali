.class public Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;
.source "S3ErrorResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V
    .locals 2
    .param p1, "ase"    # Lcom/amazonaws/AmazonServiceException;
    .param p2, "errorResponse"    # Lcom/amazonaws/http/HttpResponse;

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 52
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 10
    .param p1, "errorResponse"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getRequest()Lcom/amazonaws/Request;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v8

    sget-object v9, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    if-ne v8, v9, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "x-amz-request-id"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    .local v5, "requestId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "x-amz-id-2"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "extendedRequestId":Ljava/lang/String;
    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 76
    invoke-virtual {v0, v5}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V

    .line 99
    :goto_0
    return-object v0

    .line 82
    .end local v0    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v3    # "extendedRequestId":Ljava/lang/String;
    .end local v5    # "requestId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 83
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string/jumbo v8, "Error/Message"

    invoke-static {v8, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v8, "Error/Code"

    invoke-static {v8, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "errorCode":Ljava/lang/String;
    const-string/jumbo v8, "Error/RequestId"

    invoke-static {v8, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .restart local v5    # "requestId":Ljava/lang/String;
    const-string/jumbo v8, "Error/HostId"

    invoke-static {v8, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .restart local v3    # "extendedRequestId":Ljava/lang/String;
    const-string/jumbo v8, "Error/ServerTime"

    invoke-static {v8, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "serverTime":Ljava/lang/String;
    const-string/jumbo v8, "Error/RequestTime"

    invoke-static {v8, v1}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "requestTime":Ljava/lang/String;
    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v0, v4}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 92
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v5}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v7}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setServerTime(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v6}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestTime(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V

    goto :goto_0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method
