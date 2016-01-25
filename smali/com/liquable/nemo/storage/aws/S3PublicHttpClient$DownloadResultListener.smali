.class public interface abstract Lcom/liquable/nemo/storage/aws/S3PublicHttpClient$DownloadResultListener;
.super Ljava/lang/Object;
.source "S3PublicHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadResultListener"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onFailed()V
.end method
