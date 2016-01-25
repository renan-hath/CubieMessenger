.class Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;
.super Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
.source "IAPDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/IAPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackgroundImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mImageCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/aviary/android/feather/library/services/ImageCacheService;",
            ">;"
        }
    .end annotation
.end field

.field mSaveToCache:Z


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Z)V
    .locals 1
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/ImageCacheService;
    .param p2, "saveToCache"    # Z

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;-><init>()V

    .line 804
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;->mImageCache:Ljava/lang/ref/WeakReference;

    .line 805
    iput-boolean p2, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;->mSaveToCache:Z

    .line 806
    return-void
.end method


# virtual methods
.method public call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 811
    if-eqz p2, :cond_0

    .line 813
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 814
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 815
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 816
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 818
    iget-object v5, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;->mImageCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 819
    .local v3, "service":Lcom/aviary/android/feather/library/services/ImageCacheService;
    if-eqz v3, :cond_0

    .line 824
    :try_start_0
    invoke-virtual {v3, p2}, Lcom/aviary/android/feather/library/services/ImageCacheService;->requestRemoteBitmap(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 831
    .local v2, "remoteRequest":Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    :try_start_1
    invoke-virtual {v2, v1}, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->getBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 838
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "remoteRequest":Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    .end local v3    # "service":Lcom/aviary/android/feather/library/services/ImageCacheService;
    :cond_0
    :goto_0
    return-object v4

    .line 825
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "service":Lcom/aviary/android/feather/library/services/ImageCacheService;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 832
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "remoteRequest":Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    :catch_1
    move-exception v0

    .line 833
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 798
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;->call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
