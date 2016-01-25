.class public Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/ImageCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCachedRemoteBitmap"
.end annotation


# instance fields
.field mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/aviary/android/feather/library/services/ImageCacheService;",
            ">;"
        }
    .end annotation
.end field

.field mSpec:Ljava/lang/String;

.field mUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/ImageCacheService;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 233
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mUrl:Ljava/net/URL;

    .line 234
    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 242
    # getter for: Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/services/ImageCacheService;->access$0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    const-string/jumbo v5, "image-cache-service"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getBitmap: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 247
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid url"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    :cond_1
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 251
    .local v3, "service":Lcom/aviary/android/feather/library/services/ImageCacheService;
    if-nez v3, :cond_3

    move-object v2, v4

    .line 289
    :cond_2
    :goto_0
    return-object v2

    .line 257
    :cond_3
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    invoke-virtual {v3, v5, p1}, Lcom/aviary/android/feather/library/services/ImageCacheService;->getBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 259
    .local v2, "result":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 260
    # getter for: Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/services/ImageCacheService;->access$0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    const-string/jumbo v4, "image-cache-service"

    const-string/jumbo v5, "found in cache"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_4
    # getter for: Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/services/ImageCacheService;->access$0()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 267
    const-string/jumbo v5, "image-cache-service"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " not in cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1, v4, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_2

    .line 280
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "service":Lcom/aviary/android/feather/library/services/ImageCacheService;
    check-cast v3, Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 281
    .restart local v3    # "service":Lcom/aviary/android/feather/library/services/ImageCacheService;
    if-eqz v3, :cond_2

    .line 282
    # getter for: Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z
    invoke-static {}, Lcom/aviary/android/feather/library/services/ImageCacheService;->access$0()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 283
    const-string/jumbo v4, "image-cache-service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "putBitmap in cache for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_6
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->mSpec:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/aviary/android/feather/library/services/ImageCacheService;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .line 272
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method
