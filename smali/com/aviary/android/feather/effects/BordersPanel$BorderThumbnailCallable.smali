.class Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;
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
    name = "BorderThumbnailCallable"
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
.field cacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/aviary/android/feather/library/services/ImageCacheService;",
            ">;"
        }
    .end annotation
.end field

.field mBitmap:Landroid/graphics/Bitmap;

.field mFinalSize:I

.field mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "cacheService"    # Lcom/aviary/android/feather/library/services/ImageCacheService;
    .param p2, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .param p3, "srcUrl"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "size"    # I

    .prologue
    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    iput p5, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mFinalSize:I

    .line 1346
    iput-object p3, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mUrl:Ljava/lang/String;

    .line 1347
    iput-object p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    .line 1348
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->cacheRef:Ljava/lang/ref/SoftReference;

    .line 1349
    iput-object p4, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1350
    return-void
.end method


# virtual methods
.method actionsForRoundedThumbnail(ZLcom/aviary/android/feather/headless/filters/INativeFilter;)Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .locals 4
    .param p1, "isValid"    # Z
    .param p2, "filter"    # Lcom/aviary/android/feather/headless/filters/INativeFilter;

    .prologue
    const/4 v3, 0x0

    .line 1389
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v1

    .line 1390
    .local v1, "actions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    if-eqz p2, :cond_0

    .line 1391
    invoke-interface {p2}, Lcom/aviary/android/feather/headless/filters/INativeFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->addAll(Ljava/util/Collection;)Z

    .line 1394
    :cond_0
    const-string/jumbo v2, "ext-roundedborders"

    invoke-static {v2}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 1395
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    const-string/jumbo v2, "padding"

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 1396
    const-string/jumbo v2, "roundPx"

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 1397
    const-string/jumbo v2, "strokeColor"

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 1398
    const-string/jumbo v2, "strokeWeight"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 1400
    if-nez p1, :cond_1

    .line 1401
    const-string/jumbo v2, "overlaycolor"

    const/high16 v3, -0x67000000

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 1404
    :cond_1
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 1405
    return-object v1
.end method

.method public call()Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 1355
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->cacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 1356
    .local v2, "cache":Lcom/aviary/android/feather/library/services/ImageCacheService;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1358
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 1359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    invoke-virtual {v7}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mThumbnailOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/aviary/android/feather/effects/BordersPanel;->access$600()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/aviary/android/feather/library/services/ImageCacheService;->getBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1360
    if-eqz v1, :cond_1

    move-object v5, v1

    .line 1384
    :cond_0
    :goto_0
    return-object v5

    .line 1364
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    iget-object v7, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mUrl:Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mFinalSize:I

    iget v10, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mFinalSize:I

    invoke-static {v6, v7, v8, v9, v10}, Lcom/aviary/android/feather/library/utils/ImageLoader;->getPluginItemBitmap(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1369
    if-eqz v1, :cond_0

    .line 1370
    invoke-virtual {p0, v11, v5}, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->actionsForRoundedThumbnail(ZLcom/aviary/android/feather/headless/filters/INativeFilter;)Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    .line 1372
    .local v0, "actions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    invoke-static {v0, v1, v5, v11, v11}, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->prepareActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v4

    .line 1373
    .local v4, "mResult":Lcom/aviary/android/feather/headless/moa/MoaResult;
    invoke-virtual {v4}, Lcom/aviary/android/feather/headless/moa/MoaResult;->execute()V

    .line 1374
    iget-object v1, v4, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputBitmap:Landroid/graphics/Bitmap;

    .line 1378
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "4-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/aviary/android/feather/library/services/ImageCacheService;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_2
    move-object v5, v1

    .line 1381
    goto :goto_0

    .line 1365
    .end local v0    # "actions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .end local v4    # "mResult":Lcom/aviary/android/feather/headless/moa/MoaResult;
    :catch_0
    move-exception v3

    .line 1366
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
