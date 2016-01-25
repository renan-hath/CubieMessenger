.class public interface abstract Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;
.super Ljava/lang/Object;
.source "DataTransferProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;
    }
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onDataTransfered(D)V
.end method

.method public abstract onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
.end method
