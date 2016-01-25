.class public Lcom/liquable/nemo/storage/aws/NemoS3Service;
.super Ljava/lang/Object;
.source "NemoS3Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;
    }
.end annotation


# static fields
.field private static final AWS_ERROR_EXPIRED_TOKEN:Ljava/lang/String; = "ExpiredToken"

.field private static final AWS_ERROR_NO_SUCH_KEY:Ljava/lang/String; = "NoSuchKey"

.field private static final AWS_ERROR_REQUEST_TIME_TOO_SKEWED:Ljava/lang/String; = "RequestTimeTooSkewed"

.field private static final AWS_SERVER_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field static debugLogger:Lcom/liquable/nemo/util/Logger;

.field private static instance:Lcom/liquable/nemo/storage/aws/NemoS3Service;

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final amazonS3Client:Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;

.field private final credentialsProvider:Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;

.field private final downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->logger:Lcom/liquable/nemo/util/Logger;

    .line 76
    new-instance v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;

    invoke-direct {v0}, Lcom/liquable/nemo/storage/aws/NemoS3Service;-><init>()V

    sput-object v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->instance:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    .line 86
    const-class v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v1, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/liquable/nemo/storage/aws/NemoS3Service$1;

    invoke-direct {v1}, Lcom/liquable/nemo/storage/aws/NemoS3Service$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/storage/aws/NemoS3Service;-><init>(ZLcom/liquable/nemo/storage/aws/IContentTypeResolver;)V

    .line 97
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ZLcom/liquable/nemo/storage/aws/IContentTypeResolver;)V
    .locals 2
    .param p1, "useProxy"    # Z
    .param p2, "contentTypeResolver"    # Lcom/liquable/nemo/storage/aws/IContentTypeResolver;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    new-instance v0, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;-><init>(Lcom/liquable/nemo/storage/aws/NemoS3Service$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->credentialsProvider:Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;

    .line 104
    new-instance v0, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;

    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->credentialsProvider:Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;

    invoke-direct {v0, v1, p2}, Lcom/liquable/nemo/storage/aws/MultiRegionAwsClientImpl;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/liquable/nemo/storage/aws/IContentTypeResolver;)V

    iput-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->amazonS3Client:Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/storage/aws/NemoS3Service;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/storage/aws/NemoS3Service;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/liquable/nemo/storage/aws/NemoS3Service;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->instance:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    return-object v0
.end method

.method private reportError(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AmazonS3Exception;Ljava/lang/String;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 222
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "errorCode"

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v1, "key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v1, "currentTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v1, "serverTime"

    invoke-static {}, Lcom/liquable/nemo/util/ServerTime;->getInstance()Lcom/liquable/nemo/util/ServerTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/util/ServerTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v1, "aws-requestTime"

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getRequestTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string/jumbo v1, "aws-serverTime"

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getServerTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/liquable/nemo/util/DebugReporter;->getInstance()Lcom/liquable/nemo/util/DebugReporter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "debugV4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/DebugReporter;->debug(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    invoke-static {}, Lcom/liquable/nemo/util/DebugReporter;->getInstance()Lcom/liquable/nemo/util/DebugReporter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/liquable/nemo/util/DebugReporter;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateClientServerTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "serverTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v2, "Z"

    const-string/jumbo v3, "+0000"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 239
    .local v0, "serverTimeFromAws":Ljava/util/Date;
    invoke-static {}, Lcom/liquable/nemo/util/ServerTime;->getInstance()Lcom/liquable/nemo/util/ServerTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ServerTime;->setFrameReceiveTime(J)V

    .line 240
    return-void
.end method


# virtual methods
.method public abortDownload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public abortUpload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public delete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->credentialsProvider:Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;->swap(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->amazonS3Client:Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;->deleteObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 118
    return-void
.end method

.method public download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 6
    .param p1, "targetPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "targetFile"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;
    .param p4, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 124
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;Z)V

    .line 125
    return-void
.end method

.method public download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;Z)V
    .locals 31
    .param p1, "targetPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "targetFile"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;
    .param p4, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p5, "retryableWhenTimeSkew"    # Z

    .prologue
    .line 133
    sget-object v3, Lcom/liquable/nemo/storage/aws/NemoS3Service;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->credentialsProvider:Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;->swap(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const/16 v3, 0x2800

    new-array v9, v3, [B

    .line 137
    .local v9, "bytes":[B
    const/16 v18, 0x0

    .line 138
    .local v18, "n":I
    const/16 v26, 0x0

    .line 139
    .local v26, "sum":I
    const/16 v21, 0x0

    .line 140
    .local v21, "out":Ljava/io/OutputStream;
    const/4 v13, 0x0

    .line 141
    .local v13, "in":Ljava/io/InputStream;
    const/16 v27, 0x0

    .line 144
    .local v27, "tmpFile":Ljava/io/File;
    :try_start_0
    new-instance v28, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    .end local v27    # "tmpFile":Ljava/io/File;
    .local v28, "tmpFile":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->amazonS3Client:Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;->getObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v25

    .line 148
    .local v25, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    invoke-virtual/range {v25 .. v25}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v29

    .line 149
    .local v29, "totalBytes":J
    invoke-virtual/range {v25 .. v25}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v13

    .line 150
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 151
    .end local v21    # "out":Ljava/io/OutputStream;
    .local v22, "out":Ljava/io/OutputStream;
    const-wide/16 v14, 0x0

    .line 152
    .local v14, "lastNotifyRate":D
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 153
    .local v16, "lastNotifyTime":J
    :goto_0
    invoke-virtual {v13, v9}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "aborted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v16    # "lastNotifyTime":J
    :catch_0
    move-exception v10

    move-object/from16 v27, v28

    .end local v28    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    move-object/from16 v21, v22

    .line 182
    .end local v14    # "lastNotifyRate":D
    .end local v22    # "out":Ljava/io/OutputStream;
    .end local v25    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .end local v29    # "totalBytes":J
    .local v10, "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorCode()Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "errorCode":Ljava/lang/String;
    const-string/jumbo v3, "NoSuchKey"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 184
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->NO_SUCH_KEY:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    :goto_2
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 208
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 210
    if-eqz v27, :cond_0

    .line 211
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 213
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    .end local v10    # "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v12    # "errorCode":Ljava/lang/String;
    :goto_3
    return-void

    .line 157
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v14    # "lastNotifyRate":D
    .restart local v16    # "lastNotifyTime":J
    .restart local v22    # "out":Ljava/io/OutputStream;
    .restart local v25    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .restart local v28    # "tmpFile":Ljava/io/File;
    .restart local v29    # "totalBytes":J
    :cond_1
    add-int v26, v26, v18

    .line 158
    move/from16 v0, v26

    int-to-double v3, v0

    move-wide/from16 v0, v29

    long-to-double v5, v0

    div-double v23, v3, v5

    .line 159
    .local v23, "rate":D
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 160
    .local v19, "now":J
    sub-double v3, v23, v14

    const-wide v5, 0x3fd3333333333333L    # 0.3

    cmpl-double v3, v3, v5

    if-gez v3, :cond_2

    sub-long v3, v19, v16

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 161
    :cond_2
    move-wide/from16 v14, v23

    .line 162
    move-wide/from16 v16, v19

    .line 163
    move-object/from16 v0, p3

    move-wide/from16 v1, v23

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onDataTransfered(D)V

    .line 165
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v9, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 203
    .end local v16    # "lastNotifyTime":J
    .end local v19    # "now":J
    .end local v23    # "rate":D
    :catch_1
    move-exception v10

    move-object/from16 v27, v28

    .end local v28    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    move-object/from16 v21, v22

    .line 205
    .end local v14    # "lastNotifyRate":D
    .end local v22    # "out":Ljava/io/OutputStream;
    .end local v25    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .end local v29    # "totalBytes":J
    .local v10, "e":Ljava/lang/Exception;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :goto_4
    :try_start_5
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 208
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 210
    if-eqz v27, :cond_4

    .line 211
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 213
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 167
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v14    # "lastNotifyRate":D
    .restart local v16    # "lastNotifyTime":J
    .restart local v22    # "out":Ljava/io/OutputStream;
    .restart local v25    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .restart local v28    # "tmpFile":Ljava/io/File;
    .restart local v29    # "totalBytes":J
    :cond_5
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->flush()V

    .line 169
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 170
    invoke-static/range {v22 .. v22}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 173
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 174
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rename tmp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 207
    .end local v16    # "lastNotifyTime":J
    :catchall_0
    move-exception v3

    move-object/from16 v27, v28

    .end local v28    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    move-object/from16 v21, v22

    .end local v14    # "lastNotifyRate":D
    .end local v22    # "out":Ljava/io/OutputStream;
    .end local v25    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .end local v29    # "totalBytes":J
    .restart local v21    # "out":Ljava/io/OutputStream;
    :goto_5
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 208
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 210
    if-eqz v27, :cond_6

    .line 211
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 213
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    throw v3

    .line 179
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v14    # "lastNotifyRate":D
    .restart local v16    # "lastNotifyTime":J
    .restart local v22    # "out":Ljava/io/OutputStream;
    .restart local v25    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .restart local v28    # "tmpFile":Ljava/io/File;
    .restart local v29    # "totalBytes":J
    :cond_7
    :try_start_7
    invoke-interface/range {p3 .. p3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onComplete()V
    :try_end_7
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 207
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 208
    invoke-static/range {v22 .. v22}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 210
    if-eqz v28, :cond_8

    .line 211
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 213
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->downloadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v27, v28

    .end local v28    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    move-object/from16 v21, v22

    .line 214
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v21    # "out":Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 185
    .end local v14    # "lastNotifyRate":D
    .end local v16    # "lastNotifyTime":J
    .end local v25    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .end local v29    # "totalBytes":J
    .local v10, "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v12    # "errorCode":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string/jumbo v3, "ExpiredToken"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 187
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->INVALID_TOKEN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V

    goto/16 :goto_2

    .line 207
    .end local v10    # "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v12    # "errorCode":Ljava/lang/String;
    :catchall_1
    move-exception v3

    goto :goto_5

    .line 188
    .restart local v10    # "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v12    # "errorCode":Ljava/lang/String;
    :cond_a
    const-string/jumbo v3, "RequestTimeTooSkewed"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getServerTime()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_b

    if-eqz p5, :cond_b

    .line 194
    :try_start_9
    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getServerTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->updateClientServerTime(Ljava/lang/String;)V

    .line 195
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->download(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;Z)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 196
    :catch_2
    move-exception v11

    .line 197
    .local v11, "e1":Ljava/text/ParseException;
    :try_start_a
    const-string/jumbo v3, "NemoS3Service#download AS3Exception"

    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v10, v4, v1}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->reportError(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AmazonS3Exception;Ljava/lang/String;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 198
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V

    goto/16 :goto_2

    .line 201
    .end local v11    # "e1":Ljava/text/ParseException;
    :cond_b
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 207
    .end local v10    # "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v12    # "errorCode":Ljava/lang/String;
    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v28    # "tmpFile":Ljava/io/File;
    :catchall_2
    move-exception v3

    move-object/from16 v27, v28

    .end local v28    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    goto/16 :goto_5

    .line 203
    :catch_3
    move-exception v10

    goto/16 :goto_4

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v28    # "tmpFile":Ljava/io/File;
    :catch_4
    move-exception v10

    move-object/from16 v27, v28

    .end local v28    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    goto/16 :goto_4

    .line 180
    :catch_5
    move-exception v10

    goto/16 :goto_1

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v28    # "tmpFile":Ljava/io/File;
    :catch_6
    move-exception v10

    move-object/from16 v27, v28

    .end local v28    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    goto/16 :goto_1
.end method

.method public upload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 7
    .param p1, "newPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "cacheSeconds"    # I
    .param p4, "listener"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;
    .param p5, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 247
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->upload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;Z)V

    .line 248
    return-void
.end method

.method public upload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;Z)V
    .locals 18
    .param p1, "newPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "cacheSeconds"    # I
    .param p4, "listener"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;
    .param p5, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p6, "retryableWhenTimeSkew"    # Z

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->credentialsProvider:Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;->swap(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 261
    .local v6, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->amazonS3Client:Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;

    new-instance v3, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;-><init>(Lcom/liquable/nemo/storage/aws/NemoS3Service;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;JLcom/liquable/nemo/storage/aws/DataTransferProgressListener;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v9, v0, v1, v2, v3}, Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;->putObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 282
    invoke-interface/range {p4 .. p4}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onComplete()V
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    .end local v6    # "totalBytes":J
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v15

    .line 284
    .local v15, "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :try_start_1
    invoke-virtual {v15}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getErrorCode()Ljava/lang/String;

    move-result-object v17

    .line 286
    .local v17, "errorCode":Ljava/lang/String;
    const-string/jumbo v3, "ExpiredToken"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->INVALID_TOKEN:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V

    .line 289
    sget-object v3, Lcom/liquable/nemo/storage/aws/NemoS3Service;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "AWS_ERROR_EXPIRED_TOKEN"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_0
    :try_start_2
    const-string/jumbo v3, "RequestTimeTooSkewed"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v15}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getServerTime()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p6, :cond_1

    .line 293
    :try_start_3
    invoke-virtual {v15}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getServerTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->updateClientServerTime(Ljava/lang/String;)V

    .line 294
    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v8 .. v14}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->upload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;Z)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 295
    :catch_1
    move-exception v16

    .line 296
    .local v16, "e1":Ljava/text/ParseException;
    :try_start_4
    const-string/jumbo v3, "NemoS3Service#upload AS3Exception"

    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v15, v4, v1}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->reportError(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AmazonS3Exception;Ljava/lang/String;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 297
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 306
    .end local v15    # "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v16    # "e1":Ljava/text/ParseException;
    .end local v17    # "errorCode":Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    throw v3

    .line 300
    .restart local v15    # "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v17    # "errorCode":Ljava/lang/String;
    :cond_1
    :try_start_5
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V

    goto :goto_1

    .line 302
    .end local v15    # "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v17    # "errorCode":Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 304
    .local v15, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->TRANSFER_ERROR:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
