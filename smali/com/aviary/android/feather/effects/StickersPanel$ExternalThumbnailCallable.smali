.class Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/StickersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalThumbnailCallable"
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

.field mDefaultIconResId:I

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
    .param p5, "defaultIconResId"    # I

    .prologue
    .line 1624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mUri:Ljava/lang/String;

    .line 1626
    iput-object p3, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    .line 1627
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->cacheServiceRef:Ljava/lang/ref/SoftReference;

    .line 1628
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->resourcesRef:Ljava/lang/ref/SoftReference;

    .line 1629
    iput p5, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mDefaultIconResId:I

    .line 1630
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1636
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mUri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 1637
    :cond_0
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1680
    :goto_0
    return-object v5

    .line 1640
    :cond_1
    const-string/jumbo v6, "external-thumbnail-callable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "download: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1643
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1645
    const/4 v0, 0x0

    .line 1646
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->cacheServiceRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 1648
    .local v1, "cache":Lcom/aviary/android/feather/library/services/ImageCacheService;
    if-nez v1, :cond_2

    .line 1649
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 1655
    :cond_2
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_DEFAULT_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/aviary/android/feather/library/services/ImageCacheService;->requestRemoteBitmap(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;

    move-result-object v4

    .line 1656
    .local v4, "request":Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    invoke-virtual {v4, v3}, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;->getBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1661
    .end local v4    # "request":Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    :goto_1
    if-nez v0, :cond_3

    .line 1662
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->resourcesRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1664
    :try_start_1
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->resourcesRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    iget v7, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mDefaultIconResId:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1670
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 1672
    :try_start_2
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const v8, 0x3fd9999a    # 1.7f

    const v9, 0x3d4ccccd    # 0.05f

    invoke-static {v6, v7, v8, v9}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->flattenDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1673
    .local v5, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1674
    const/4 v0, 0x0

    .line 1675
    goto/16 :goto_0

    .line 1676
    .end local v5    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 1677
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_0

    .line 1680
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_0

    .line 1665
    :catch_1
    move-exception v6

    goto :goto_2

    .line 1657
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
