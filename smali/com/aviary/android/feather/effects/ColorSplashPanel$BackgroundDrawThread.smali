.class Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;
.super Ljava/lang/Thread;
.source "ColorSplashPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/ColorSplashPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundDrawThread"
.end annotation


# instance fields
.field mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

.field final mLastPoint:Landroid/graphics/PointF;

.field final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;",
            ">;"
        }
    .end annotation
.end field

.field volatile running:Z

.field started:Z

.field final synthetic this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/ColorSplashPanel;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/ColorSplashPanel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 334
    iput-object p1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    .line 335
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    .line 337
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mLastPoint:Landroid/graphics/PointF;

    .line 338
    invoke-virtual {p0, p3}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->setPriority(I)V

    .line 339
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->init()V

    .line 340
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 411
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    if-eqz v1, :cond_2

    .line 413
    iget-object v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 414
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    .line 416
    .local v0, "element":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "end element..."

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->end()V

    goto :goto_0

    .line 421
    .end local v0    # "element":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :cond_2
    return-void
.end method

.method public finish()V
    .locals 7

    .prologue
    .line 430
    iget-boolean v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    if-eqz v2, :cond_2

    .line 431
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 432
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 433
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    .line 435
    .local v0, "element":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    if-eqz v0, :cond_0

    .line 436
    iget-object v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "end element..."

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 437
    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->end()V

    goto :goto_0

    .line 440
    .end local v0    # "element":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;>;"
    :cond_2
    return-void
.end method

.method public getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;)V
    .locals 4
    .param p1, "pt1"    # Landroid/graphics/PointF;
    .param p2, "pt2"    # Landroid/graphics/PointF;
    .param p3, "t"    # F
    .param p4, "dstPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 403
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 404
    return-void
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method init()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

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
    .locals 6
    .param p1, "values"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 382
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mLastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget v2, p1, v4

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mLastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget v3, p1, v5

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    .line 386
    .local v0, "length":F
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mLastPoint:Landroid/graphics/PointF;

    aget v2, p1, v4

    aget v3, p1, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 388
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    invoke-virtual {v1, p1}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized pathEnd()V
    .locals 1

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->end()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pathStart(I[FLcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;)V
    .locals 6
    .param p1, "radius"    # I
    .param p2, "points"    # [F
    .param p3, "brushType"    # Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 372
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->end()V

    .line 362
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mLastPoint:Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 367
    new-instance v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    invoke-direct {v0, p3, p1, p2}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;-><init>(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;I[F)V

    .line 368
    .local v0, "queue":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 369
    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    .line 371
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queue size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 358
    .end local v0    # "queue":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized quit()V
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->started:Z

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    .line 354
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 31

    .prologue
    .line 448
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->started:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 452
    const/16 v18, 0x0

    .line 453
    .local v18, "s":Z
    const/4 v9, 0x1

    .line 455
    .local v9, "firstPoint":Z
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 456
    .local v7, "drawRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 457
    .local v4, "currentPoint":Landroid/graphics/PointF;
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    .line 458
    .local v10, "lastPoint":Landroid/graphics/PointF;
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    .line 460
    .local v14, "lerpPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "thread.start!"

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 464
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->size()I

    move-result v22

    if-lez v22, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->isInterrupted()Z

    move-result v22

    if-nez v22, :cond_b

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "queue.size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Queue;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 470
    if-nez v18, :cond_2

    .line 471
    const/16 v18, 0x1

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->onProgressStart()V

    .line 475
    :cond_2
    const/4 v9, 0x1

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;

    .line 479
    .local v8, "element":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    if-nez v8, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->getRadius()I

    move-result v17

    .line 485
    .local v17, "radius":I
    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->getMode()Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    move-result-object v15

    .line 487
    .local v15, "mode":Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
    new-instance v19, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-direct {v0, v15, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;-><init>(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;D)V

    .line 489
    .local v19, "strokeData":Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;
    :cond_4
    :goto_1
    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->size()I

    move-result v22

    if-gtz v22, :cond_5

    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->isCompleted()Z

    move-result v22

    if-nez v22, :cond_6

    .line 490
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->isInterrupted()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 538
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    # getter for: Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    invoke-static/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->access$000(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->addStrokeData(Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto/16 :goto_0

    .line 492
    :cond_7
    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [F

    .line 493
    .local v16, "points":[F
    if-eqz v16, :cond_4

    .line 495
    const/16 v22, 0x0

    aget v22, v16, v22

    const/16 v23, 0x1

    aget v23, v16, v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 497
    if-eqz v9, :cond_9

    .line 498
    const/4 v9, 0x0

    .line 499
    const/16 v22, 0x0

    aget v22, v16, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sget-wide v26, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    aget v23, v16, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v25, v0

    sget-wide v27, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v25, v25, v27

    sub-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v16, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sget-wide v28, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v16, v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v27, v0

    sget-wide v29, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 501
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->addPoint([F)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    # getter for: Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    invoke-static/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->access$000(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->setColorSplashMode(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;)Z

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    # getter for: Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    invoke-static/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->access$000(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    move-result-object v22

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->drawStart(FFFF)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    # getter for: Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    invoke-static/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->access$000(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->renderPreview(Landroid/graphics/Rect;)Z

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    .line 534
    :cond_8
    :goto_2
    invoke-virtual {v10, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_1

    .line 510
    :cond_9
    iget v0, v4, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 511
    .local v20, "x":F
    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 512
    .local v21, "y":F
    mul-float v22, v20, v20

    mul-float v23, v21, v21

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 513
    .local v11, "length":D
    const-wide/16 v5, 0x0

    .line 516
    .local v5, "currentPosition":D
    :cond_a
    cmpg-double v22, v5, v11

    if-gez v22, :cond_8

    .line 517
    div-double v22, v5, v11

    move-wide/from16 v0, v22

    double-to-float v13, v0

    .line 518
    .local v13, "lerp":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v13, v14}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    .line 519
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v5, v5, v22

    .line 521
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sget-wide v26, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v25, v0

    sget-wide v27, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v25, v25, v27

    sub-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sget-wide v28, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v27, v0

    sget-wide v29, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 524
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;->addPoint(FF)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    # getter for: Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    invoke-static/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->access$000(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    move-result-object v22

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->colorsplash_draw(FF)Z

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    # getter for: Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    invoke-static/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->access$000(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->renderPreview(Landroid/graphics/Rect;)Z

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    .line 530
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->isInterrupted()Z

    move-result v22

    if-eqz v22, :cond_a

    goto/16 :goto_2

    .line 542
    .end local v5    # "currentPosition":D
    .end local v8    # "element":Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    .end local v11    # "length":D
    .end local v13    # "lerp":F
    .end local v15    # "mode":Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
    .end local v16    # "points":[F
    .end local v17    # "radius":I
    .end local v19    # "strokeData":Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_b
    if-eqz v18, :cond_1

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->onProgressEnd()V

    .line 544
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 549
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->onProgressEnd()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/ColorSplashPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "thread.end"

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 551
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 346
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->started:Z

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->running:Z

    .line 348
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
