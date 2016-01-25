.class Lcom/liquable/nemo/storage/aws/NemoS3Service$2;
.super Ljava/lang/Object;
.source "NemoS3Service.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/storage/aws/NemoS3Service;->upload(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Ljava/io/File;ILcom/liquable/nemo/storage/aws/DataTransferProgressListener;Lcom/amazonaws/auth/AWSCredentials;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastNotifyRate:D

.field private lastNotifyTime:J

.field private sum:J

.field final synthetic this$0:Lcom/liquable/nemo/storage/aws/NemoS3Service;

.field final synthetic val$listener:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;

.field final synthetic val$newPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

.field final synthetic val$totalBytes:J


# direct methods
.method constructor <init>(Lcom/liquable/nemo/storage/aws/NemoS3Service;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;JLcom/liquable/nemo/storage/aws/DataTransferProgressListener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/liquable/nemo/storage/aws/NemoS3Service;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->this$0:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    iput-object p2, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->val$newPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    iput-wide p3, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->val$totalBytes:J

    iput-object p5, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->val$listener:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->sum:J

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->lastNotifyRate:D

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->lastNotifyTime:J

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V
    .locals 8
    .param p1, "progressEvent"    # Lcom/amazonaws/services/s3/model/ProgressEvent;

    .prologue
    .line 268
    iget-object v4, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->this$0:Lcom/liquable/nemo/storage/aws/NemoS3Service;

    # getter for: Lcom/liquable/nemo/storage/aws/NemoS3Service;->uploadingList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Lcom/liquable/nemo/storage/aws/NemoS3Service;->access$100(Lcom/liquable/nemo/storage/aws/NemoS3Service;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->val$newPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string/jumbo v5, "aborted"

    invoke-direct {v4, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_0
    iget-wide v4, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->sum:J

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getBytesTransfered()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->sum:J

    .line 273
    iget-wide v4, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->sum:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->val$totalBytes:J

    long-to-double v6, v6

    div-double v2, v4, v6

    .line 274
    .local v2, "rate":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 275
    .local v0, "now":J
    iget-wide v4, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->lastNotifyRate:D

    sub-double v4, v2, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    iget-wide v4, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->lastNotifyTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 276
    :cond_1
    iput-wide v2, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->lastNotifyRate:D

    .line 277
    iput-wide v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->lastNotifyTime:J

    .line 278
    iget-object v4, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$2;->val$listener:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;

    invoke-interface {v4, v2, v3}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;->onDataTransfered(D)V

    .line 280
    :cond_2
    return-void
.end method
