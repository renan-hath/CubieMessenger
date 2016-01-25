.class public Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;
.super Ljava/lang/Object;
.source "MultiRegionAwsClientImpl.java"

# interfaces
.implements Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;


# instance fields
.field private final awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private final contentTypeResolver:Lcom/liquable/nemo/storage/aws/IContentTypeResolver;

.field private final rawAmazonS3Clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/AmazonS3Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/liquable/nemo/storage/aws/IContentTypeResolver;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "contentTypeResolver"    # Lcom/liquable/nemo/storage/aws/IContentTypeResolver;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->rawAmazonS3Clients:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 30
    iput-object p2, p0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->contentTypeResolver:Lcom/liquable/nemo/storage/aws/IContentTypeResolver;

    .line 31
    return-void
.end method

.method private declared-synchronized findOrCreateAmazonS3Client(Ljava/lang/String;)Lcom/amazonaws/services/s3/AmazonS3Client;
    .locals 2
    .param p1, "s3EndPoint"    # Ljava/lang/String;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->rawAmazonS3Clients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 45
    .local v0, "amazonS3Client":Lcom/amazonaws/services/s3/AmazonS3Client;
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    .end local v0    # "amazonS3Client":Lcom/amazonaws/services/s3/AmazonS3Client;
    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 47
    .restart local v0    # "amazonS3Client":Lcom/amazonaws/services/s3/AmazonS3Client;
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setEndpoint(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->rawAmazonS3Clients:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-object v0

    .line 44
    .end local v0    # "amazonS3Client":Lcom/amazonaws/services/s3/AmazonS3Client;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public deleteObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 4
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getS3EndPoint()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->findOrCreateAmazonS3Client(Ljava/lang/String;)Lcom/amazonaws/services/s3/AmazonS3Client;

    move-result-object v0

    .line 37
    .local v0, "amazonS3Client":Lcom/amazonaws/services/s3/AmazonS3Client;
    new-instance v1, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getS3EndPoint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->getBucket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v1, "deleteObjRequest":Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    .line 41
    return-void
.end method

.method public getObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 4
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getS3EndPoint()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->findOrCreateAmazonS3Client(Ljava/lang/String;)Lcom/amazonaws/services/s3/AmazonS3Client;

    move-result-object v0

    .line 56
    .local v0, "amazonS3Client":Lcom/amazonaws/services/s3/AmazonS3Client;
    new-instance v1, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getS3EndPoint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->getBucket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v1, "objectRequest":Lcom/amazonaws/services/s3/model/GetObjectRequest;
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v2

    return-object v2
.end method

.method public putObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 6
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "sourceFile"    # Ljava/io/File;
    .param p3, "cacheSeconds"    # I
    .param p4, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getS3EndPoint()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->findOrCreateAmazonS3Client(Ljava/lang/String;)Lcom/amazonaws/services/s3/AmazonS3Client;

    move-result-object v0

    .line 68
    .local v0, "amazonS3Client":Lcom/amazonaws/services/s3/AmazonS3Client;
    new-instance v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getS3EndPoint()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->getBucket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 71
    .local v3, "putObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    sget-object v4, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->PublicRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 72
    invoke-virtual {v3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 74
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 78
    .local v2, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    iget-object v4, p0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;->contentTypeResolver:Lcom/liquable/nemo/storage/aws/IContentTypeResolver;

    invoke-virtual {p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->getKeyPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/liquable/nemo/storage/aws/IContentTypeResolver;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "contentType":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 82
    :cond_0
    if-lez p3, :cond_1

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "max-age="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setCacheControl(Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 87
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 88
    return-void
.end method
