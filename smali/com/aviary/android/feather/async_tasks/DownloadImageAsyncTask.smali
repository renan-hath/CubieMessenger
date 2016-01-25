.class public Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "DownloadImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private mImageSize:Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

.field private mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

.field private mMaxSize:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSize"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mUri:Landroid/net/Uri;

    .line 74
    iput p2, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mMaxSize:I

    .line 75
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 97
    aget-object v0, p1, v6

    .line 99
    .local v0, "context":Landroid/content/Context;
    const/4 v3, -0x1

    .line 101
    .local v3, "max_size":I
    iget v4, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mMaxSize:I

    if-lez v4, :cond_0

    .line 102
    iget v3, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mMaxSize:I

    .line 105
    :cond_0
    if-gtz v3, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->getManagedMaxImageSize(Landroid/content/Context;)I

    move-result v3

    .line 110
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mImageSize:Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    invoke-static {v0, v4, v3, v3, v5}, Lcom/aviary/android/feather/library/utils/DecodeUtils;->decode(Landroid/content/Context;Landroid/net/Uri;IILcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 116
    :goto_0
    return-object v4

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DownloadImageTask"

    sget-object v5, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v2

    .line 113
    .local v2, "logger":Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "error"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->error:Ljava/lang/String;

    .line 116
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getManagedMaxImageSize(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 150
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 151
    .local v3, "screen_size":I
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getApplicationTotalMemory()D

    move-result-wide v0

    .line 153
    .local v0, "applicationMemory":D
    const-wide/high16 v4, 0x4048000000000000L    # 48.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 154
    const/16 v4, 0x500

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 158
    :goto_0
    return v4

    .line 155
    :cond_0
    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    .line 156
    const/16 v4, 0x384

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 158
    :cond_1
    const/16 v4, 0x2bc

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    if-eqz v0, :cond_0

    .line 124
    if-eqz p1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mImageSize:Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    invoke-interface {v0, p1, v1}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;->onDownloadComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;)V

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mImageSize:Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->getOriginalSize()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mImageSize:Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mImageSize:Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->getNewSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->setOriginalSize(Ljava/lang/String;)V

    .line 135
    :cond_1
    iput-object v2, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    .line 136
    iput-object v2, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mUri:Landroid/net/Uri;

    .line 137
    iput-object v2, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->error:Ljava/lang/String;

    .line 138
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;->onDownloadError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 91
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;->onDownloadStart()V

    .line 92
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mImageSize:Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    .line 93
    return-void
.end method

.method public setOnLoadListener(Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->mListener:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;

    .line 85
    return-void
.end method
