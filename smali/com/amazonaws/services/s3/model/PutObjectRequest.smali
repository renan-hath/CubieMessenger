.class public Lcom/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private file:Ljava/io/File;

.field private inputStream:Ljava/io/InputStream;

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    .line 145
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 335
    return-void
.end method

.method public setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 406
    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    .line 417
    return-void
.end method
