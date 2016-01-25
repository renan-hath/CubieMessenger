.class public interface abstract Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileTransferListener"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
.end method

.method public abstract onProgress(I)V
.end method
