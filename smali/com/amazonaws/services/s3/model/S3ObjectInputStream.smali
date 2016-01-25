.class public Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
.super Ljava/io/FilterInputStream;
.source "S3ObjectInputStream.java"


# instance fields
.field private final httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 38
    return-void
.end method


# virtual methods
.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method
