.class Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;
.super Ljava/lang/Thread;
.source "DelayedSpotDrawPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandlerThread"
.end annotation


# instance fields
.field mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

.field mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/aviary/android/feather/library/filters/SpotBrushFilter;",
            ">;"
        }
    .end annotation
.end field

.field mRadius:F

.field paused:Z

.field volatile running:Z

.field started:Z

.field final synthetic this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 310
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .line 311
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mQueue:Ljava/util/Queue;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    .line 364
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mRadius:F

    .line 312
    invoke-virtual {p0, p3}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->setPriority(I)V

    .line 313
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->init()V

    .line 314
    return-void
.end method


# virtual methods
.method public getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 5
    .param p1, "pt1"    # Landroid/graphics/PointF;
    .param p2, "pt2"    # Landroid/graphics/PointF;
    .param p3, "t"    # F

    .prologue
    .line 391
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method init()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lineTo([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 375
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->lineTo([F)V

    .line 376
    return-void
.end method

.method public moveTo([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 371
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->moveTo([F)V

    .line 372
    return-void
.end method

.method public declared-synchronized pathEnd()V
    .locals 2

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pathStart(FI)V
    .locals 6
    .param p1, "radius"    # F
    .param p2, "bitmapWidth"    # I

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v4}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->createFilter()Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    .line 333
    .local v0, "filter":Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
    invoke-virtual {v0, p1, p2}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->setRadius(FI)V

    .line 335
    iget-object v4, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v4, v4, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v4, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v4}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getImageRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 336
    .local v3, "rect":Landroid/graphics/RectF;
    if-eqz v3, :cond_0

    .line 337
    iget-object v4, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v4, v4, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v4, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v4}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 338
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v1, v4

    .line 339
    .local v1, "ratio":D
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v4

    const-string/jumbo v5, "image2displayratio"

    invoke-virtual {v4, v5, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 342
    .end local v1    # "ratio":D
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->setRadius(FI)V

    .line 343
    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 332
    .end local v0    # "filter":Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
    .end local v3    # "rect":Landroid/graphics/RectF;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->started:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "thread not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->paused:Z

    .line 357
    return-void
.end method

.method public quadTo([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 379
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->quadTo([F)V

    .line 380
    return-void
.end method

.method public queueSize()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized quit()V
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->running:Z

    .line 327
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->pause()V

    .line 328
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 19

    .prologue
    .line 398
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->started:Z

    if-eqz v15, :cond_0

    .line 401
    const/4 v11, 0x0

    .line 403
    .local v11, "s":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v15, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "thread.start!"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 405
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->running:Z

    if-eqz v15, :cond_9

    .line 407
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->paused:Z

    if-nez v15, :cond_1

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->queueSize()I

    move-result v2

    .line 415
    .local v2, "currentSize":I
    if-lez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isInterrupted()Z

    move-result v15

    if-nez v15, :cond_8

    .line 417
    if-nez v11, :cond_2

    .line 418
    const/4 v11, 0x1

    .line 419
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v15}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->onProgressStart()V

    .line 424
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v15}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    .line 425
    .local v3, "filter":Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
    invoke-virtual {v3}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->getFlattenPath()Lcom/aviary/android/feather/library/graphics/FlattenPath;

    move-result-object v9

    .line 427
    .local v9, "path":Lcom/aviary/android/feather/library/graphics/FlattenPath;
    invoke-virtual {v9}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->remove()Landroid/graphics/PointF;

    move-result-object v4

    .line 428
    .local v4, "firstPoint":Landroid/graphics/PointF;
    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {v9}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 429
    invoke-virtual {v9}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->remove()Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_1

    .line 432
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v15, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 433
    .local v12, "w":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v15, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 435
    .local v5, "h":I
    :goto_2
    invoke-virtual {v9}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 436
    invoke-virtual {v9}, Lcom/aviary/android/feather/library/graphics/FlattenPath;->remove()Landroid/graphics/PointF;

    move-result-object v6

    .line 438
    .local v6, "lastPoint":Landroid/graphics/PointF;
    iget v15, v4, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 439
    .local v13, "x":F
    iget v15, v4, Landroid/graphics/PointF;->y:F

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 440
    .local v14, "y":F
    mul-float v15, v13, v13

    mul-float v16, v14, v14

    add-float v15, v15, v16

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 441
    .local v7, "length":F
    const/4 v1, 0x0

    .line 444
    .local v1, "currentPosition":F
    const/4 v15, 0x0

    cmpl-float v15, v7, v15

    if-nez v15, :cond_5

    .line 445
    iget v15, v4, Landroid/graphics/PointF;->x:F

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->addPoint(FF)V

    .line 454
    :cond_4
    move-object v4, v6

    .line 455
    goto :goto_2

    .line 447
    :cond_5
    :goto_3
    cmpg-float v15, v1, v7

    if-gez v15, :cond_4

    .line 448
    div-float v8, v1, v7

    .line 449
    .local v8, "lerp":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v8}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v10

    .line 450
    .local v10, "point":Landroid/graphics/PointF;
    invoke-virtual {v3}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->getRealRadius()F

    move-result v15

    add-float/2addr v1, v15

    .line 451
    iget v15, v10, Landroid/graphics/PointF;->x:F

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->addPoint(FF)V

    goto :goto_3

    .line 457
    .end local v1    # "currentPosition":F
    .end local v6    # "lastPoint":Landroid/graphics/PointF;
    .end local v7    # "length":F
    .end local v8    # "lerp":F
    .end local v10    # "point":Landroid/graphics/PointF;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v15, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v15}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->draw(Landroid/graphics/Bitmap;)V

    .line 458
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->paused:Z

    if-nez v15, :cond_1

    .line 460
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->isHoneyComb()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 464
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v15, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v15}, Lcom/aviary/android/feather/headless/moa/Moa;->notifyPixelsChanged(Landroid/graphics/Bitmap;)V

    .line 468
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v0, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v15

    invoke-virtual {v15}, Lcom/aviary/android/feather/headless/moa/MoaAction;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v15}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v15, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v15}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    goto/16 :goto_0

    .line 475
    .end local v3    # "filter":Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
    .end local v4    # "firstPoint":Landroid/graphics/PointF;
    .end local v5    # "h":I
    .end local v9    # "path":Lcom/aviary/android/feather/library/graphics/FlattenPath;
    .end local v12    # "w":I
    :cond_8
    if-eqz v11, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v15}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->onProgressEnd()V

    .line 477
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 481
    .end local v2    # "currentSize":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v15}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->onProgressEnd()V

    .line 482
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v15, v15, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "thread.end"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 483
    return-void

    .line 469
    .restart local v2    # "currentSize":I
    .restart local v3    # "filter":Lcom/aviary/android/feather/library/filters/SpotBrushFilter;
    .restart local v4    # "firstPoint":Landroid/graphics/PointF;
    .restart local v5    # "h":I
    .restart local v9    # "path":Lcom/aviary/android/feather/library/graphics/FlattenPath;
    .restart local v12    # "w":I
    :catch_0
    move-exception v15

    goto :goto_4
.end method

.method public setRadius(FI)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "bitmapWidth"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mRadius:F

    .line 368
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->started:Z

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->running:Z

    .line 322
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
