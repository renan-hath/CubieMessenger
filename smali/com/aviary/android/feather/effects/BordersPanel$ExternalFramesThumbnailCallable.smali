.class Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalFramesThumbnailCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field cacheServiceRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/aviary/android/feather/library/services/ImageCacheService;",
            ">;"
        }
    .end annotation
.end field

.field mFallbackResId:I

.field mFolder:Landroid/graphics/drawable/BitmapDrawable;

.field mUri:Ljava/lang/String;

.field resourcesRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aviary/android/feather/library/services/ImageCacheService;Landroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "cacheService"    # Lcom/aviary/android/feather/library/services/ImageCacheService;
    .param p3, "folderBackground"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "fallbackResId"    # I

    .prologue
    .line 1274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mUri:Ljava/lang/String;

    .line 1276
    iput p5, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mFallbackResId:I

    .line 1277
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->cacheServiceRef:Ljava/lang/ref/SoftReference;

    .line 1278
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->resourcesRef:Ljava/lang/ref/SoftReference;

    .line 1279
    iput-object p3, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    .line 1280
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1285
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mUri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 1286
    :cond_0
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1326
    :cond_1
    :goto_0
    return-object v0

    .line 1289
    :cond_2
    const/4 v0, 0x0

    .line 1290
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1291
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1293
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->cacheServiceRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 1294
    .local v1, "cache":Lcom/aviary/android/feather/library/services/ImageCacheService;
    if-nez v1, :cond_3

    .line 1295
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1301
    :cond_3
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_DEFAULT_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/aviary/android/feather/library/services/ImageCacheService;->requestRemoteBitmap(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;

    move-result-object v4

    .line 1302
    .local v4, "request":Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    invoke-virtual {v4, v3}, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->getBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1308
    .end local v4    # "request":Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    :goto_1
    if-nez v0, :cond_4

    .line 1309
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->resourcesRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1311
    :try_start_1
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->resourcesRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    iget v7, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mFallbackResId:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1317
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1318
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->generateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1319
    .local v5, "result":Landroid/graphics/Bitmap;
    if-eq v5, v0, :cond_1

    .line 1320
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1321
    const/4 v0, 0x0

    .line 1322
    move-object v0, v5

    goto :goto_0

    .line 1303
    .end local v5    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 1304
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1326
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1312
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method generateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1331
    return-object p1
.end method
