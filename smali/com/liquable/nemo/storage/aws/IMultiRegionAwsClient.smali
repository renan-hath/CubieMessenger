.class public interface abstract Lcom/liquable/nemo/storage/aws/IMultiRegionAwsClient;
.super Ljava/lang/Object;
.source "IMultiRegionAwsClient.java"


# virtual methods
.method public abstract deleteObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
.end method

.method public abstract getObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/amazonaws/services/s3/model/S3Object;
.end method

.method public abstract putObject(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/amazonaws/services/s3/model/ProgressListener;)V
.end method
