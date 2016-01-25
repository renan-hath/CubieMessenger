.class public interface abstract Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;
.super Ljava/lang/Object;
.source "DownloadImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;)V
.end method

.method public abstract onDownloadError(Ljava/lang/String;)V
.end method

.method public abstract onDownloadStart()V
.end method
