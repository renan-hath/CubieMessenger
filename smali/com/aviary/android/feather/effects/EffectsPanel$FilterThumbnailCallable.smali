.class Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;
.super Ljava/lang/Object;
.source "EffectsPanel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/EffectsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterThumbnailCallable"
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
.field invalidBitmap:Landroid/graphics/Bitmap;

.field isValid:Z

.field mEffectId:J

.field mEffectName:Ljava/lang/String;

.field mFilter:Lcom/aviary/android/feather/headless/filters/INativeFilter;

.field srcBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/EffectsPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel;JLjava/lang/String;Landroid/graphics/Bitmap;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/EffectsPanel;
    .param p2, "effectId"    # J
    .param p4, "effectName"    # Ljava/lang/String;
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;
    .param p6, "valid"    # Z
    .param p7, "invalid_bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->mEffectName:Ljava/lang/String;

    .line 449
    iput-wide p2, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->mEffectId:J

    .line 450
    iput-object p5, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->srcBitmap:Landroid/graphics/Bitmap;

    .line 451
    iput-boolean p6, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->isValid:Z

    .line 452
    iput-object p7, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->invalidBitmap:Landroid/graphics/Bitmap;

    .line 453
    return-void
.end method


# virtual methods
.method actionsForRoundedThumbnail(ZLcom/aviary/android/feather/headless/filters/INativeFilter;)Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .locals 4
    .param p1, "isValid"    # Z
    .param p2, "filter"    # Lcom/aviary/android/feather/headless/filters/INativeFilter;

    .prologue
    .line 515
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v1

    .line 516
    .local v1, "actions":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    if-eqz p2, :cond_0

    .line 517
    invoke-interface {p2}, Lcom/aviary/android/feather/headless/filters/INativeFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->addAll(Ljava/util/Collection;)Z

    .line 520
    :cond_0
    const-string/jumbo v2, "ext-roundedborders"

    invoke-static {v2}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->action(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    .line 521
    .local v0, "action":Lcom/aviary/android/feather/headless/moa/MoaAction;
    const-string/jumbo v2, "padding"

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbPadding:I
    invoke-static {v3}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$500(Lcom/aviary/android/feather/effects/EffectsPanel;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 522
    const-string/jumbo v2, "roundPx"

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbRoundedCorners:I
    invoke-static {v3}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$600(Lcom/aviary/android/feather/effects/EffectsPanel;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 523
    const-string/jumbo v2, "strokeColor"

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbStrokeColor:I
    invoke-static {v3}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$700(Lcom/aviary/android/feather/effects/EffectsPanel;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 524
    const-string/jumbo v2, "strokeWeight"

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbStrokeWidth:I
    invoke-static {v3}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$800(Lcom/aviary/android/feather/effects/EffectsPanel;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 526
    if-nez p1, :cond_1

    .line 527
    const-string/jumbo v2, "overlaycolor"

    const/high16 v3, -0x67000000

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;I)V

    .line 530
    :cond_1
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 531
    return-object v1
.end method

.method addUpdateArrow(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 497
    iget-object v10, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->invalidBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->invalidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 500
    .local v8, "w":D
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 502
    .local v2, "h":D
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    sub-double/2addr v10, v8

    double-to-int v10, v10

    div-int/lit8 v4, v10, 0x2

    .line 503
    .local v4, "paddingx":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    sub-double/2addr v10, v2

    double-to-int v10, v10

    div-int/lit8 v5, v10, 0x2

    .line 505
    .local v5, "paddingy":I
    new-instance v6, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v6, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 506
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->invalidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->invalidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 507
    .local v7, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    double-to-int v10, v8

    add-int/2addr v10, v4

    double-to-int v11, v2

    add-int/2addr v11, v5

    invoke-direct {v1, v4, v5, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 508
    .local v1, "dst":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 509
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->invalidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v10, v7, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 511
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v2    # "h":D
    .end local v4    # "paddingx":I
    .end local v5    # "paddingy":I
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "src":Landroid/graphics/Rect;
    .end local v8    # "w":D
    :cond_0
    return-void
.end method

.method public call()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 473
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->mFilter:Lcom/aviary/android/feather/headless/filters/INativeFilter;

    if-nez v4, :cond_0

    .line 475
    :try_start_0
    iget-wide v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->mEffectId:J

    iget-object v6, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->mEffectName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->loadFilter(JLjava/lang/CharSequence;)Lcom/aviary/android/feather/headless/filters/INativeFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->mFilter:Lcom/aviary/android/feather/headless/filters/INativeFilter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->isValid:Z

    iget-object v5, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->mFilter:Lcom/aviary/android/feather/headless/filters/INativeFilter;

    invoke-virtual {p0, v4, v5}, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->actionsForRoundedThumbnail(ZLcom/aviary/android/feather/headless/filters/INativeFilter;)Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    .line 483
    .local v0, "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->srcBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v7, v7}, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->prepareActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v1

    .line 484
    .local v1, "moaresult":Lcom/aviary/android/feather/headless/moa/MoaResult;
    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/MoaResult;->execute()V

    .line 485
    iget-object v2, v1, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputBitmap:Landroid/graphics/Bitmap;

    .line 489
    .local v2, "result":Landroid/graphics/Bitmap;
    iget-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->isValid:Z

    if-nez v4, :cond_1

    .line 490
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->addUpdateArrow(Landroid/graphics/Bitmap;)V

    .line 492
    :cond_1
    return-object v2

    .line 476
    .end local v0    # "actionList":Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .end local v1    # "moaresult":Lcom/aviary/android/feather/headless/moa/MoaResult;
    .end local v2    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 477
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 478
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->isValid:Z

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
    .line 438
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method loadFilter(JLjava/lang/CharSequence;)Lcom/aviary/android/feather/headless/filters/INativeFilter;
    .locals 4
    .param p1, "effectId"    # J
    .param p3, "effectName"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v3}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;

    .line 458
    .local v2, "filter":Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;
    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/EffectsPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    if-eqz v3, :cond_1

    .line 459
    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/EffectsPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/EffectsPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 460
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/EffectsPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v3, p1, p2}, Lcom/aviary/android/feather/library/services/CDSService;->loadEntryContent(J)[B

    move-result-object v0

    .line 461
    .local v0, "content":[B
    if-eqz v0, :cond_1

    .line 462
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 463
    .local v1, "contentString":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;->setMoaLiteEffectContent(Ljava/lang/String;)V

    .line 466
    .end local v0    # "content":[B
    .end local v1    # "contentString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p3}, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;->setEffectName(Ljava/lang/CharSequence;)V

    .line 467
    return-object v2
.end method
