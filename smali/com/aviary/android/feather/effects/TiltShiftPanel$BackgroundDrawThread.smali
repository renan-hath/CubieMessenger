.class Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;
.super Ljava/lang/Thread;
.source "TiltShiftPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/TiltShiftPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundDrawThread"
.end annotation


# instance fields
.field mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

.field final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;",
            ">;"
        }
    .end annotation
.end field

.field volatile running:Z

.field started:Z

.field final synthetic this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/TiltShiftPanel;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 303
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .line 304
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    .line 306
    invoke-virtual {p0, p3}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->setPriority(I)V

    .line 307
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->init()V

    .line 308
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 364
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    if-eqz v1, :cond_2

    .line 366
    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 367
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    .line 369
    .local v0, "element":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "end element..."

    aput-object v5, v3, v4

    invoke-interface {v1, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 371
    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->end()V

    goto :goto_0

    .line 374
    .end local v0    # "element":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
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

    .line 376
    :cond_2
    return-void
.end method

.method public declared-synchronized draw([FFFFFFF)V
    .locals 4
    .param p1, "points"    # [F
    .param p2, "radius"    # F
    .param p3, "angle"    # F
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "right"    # F
    .param p7, "bottom"    # F

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->clear()V

    .line 345
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p1, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, p1, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    aput p4, v1, v2

    const/4 v2, 0x5

    aput p5, v1, v2

    const/4 v2, 0x6

    aput p6, v1, v2

    const/4 v2, 0x7

    aput p7, v1, v2

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized drawStart([FLcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;FFFFFF)V
    .locals 4
    .param p1, "points"    # [F
    .param p2, "type"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;
    .param p3, "radius"    # F
    .param p4, "angle"    # F
    .param p5, "left"    # F
    .param p6, "top"    # F
    .param p7, "right"    # F
    .param p8, "bottom"    # F

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->end()V

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    .line 334
    :cond_1
    new-instance v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    if-ne p2, v1, :cond_2

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    :goto_1
    invoke-direct {v0, v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;-><init>(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;)V

    .line 335
    .local v0, "queue":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p1, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, p1, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    const/4 v2, 0x4

    aput p5, v1, v2

    const/4 v2, 0x5

    aput p6, v1, v2

    const/4 v2, 0x6

    aput p7, v1, v2

    const/4 v2, 0x7

    aput p8, v1, v2

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 338
    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    .end local v0    # "queue":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 334
    :cond_2
    :try_start_2
    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Linear:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public finish()V
    .locals 7

    .prologue
    .line 383
    iget-boolean v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    if-eqz v2, :cond_2

    .line 384
    iget-object v3, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 386
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    .line 388
    .local v0, "element":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    if-eqz v0, :cond_0

    .line 389
    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "end element..."

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 390
    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->end()V

    goto :goto_0

    .line 393
    .end local v0    # "element":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;>;"
    :cond_2
    return-void
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method init()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

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

.method public declared-synchronized pathEnd()V
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->end()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mCurrentQueue:Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quit()V
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->started:Z

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    .line 323
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 23

    .prologue
    .line 401
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->started:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 405
    const/4 v13, 0x0

    .line 411
    .local v13, "s":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "thread.start!"

    aput-object v21, v19, v20

    invoke-interface/range {v18 .. v19}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "filter.init"

    aput-object v21, v19, v20

    invoke-interface/range {v18 .. v19}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
    invoke-static/range {v18 .. v18}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$200(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 416
    new-instance v7, Landroid/graphics/RectF;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 417
    .local v7, "invalidateRect":Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 419
    .local v14, "tempRect":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->size()I

    move-result v18

    if-lez v18, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->isInterrupted()Z

    move-result v18

    if-nez v18, :cond_8

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "queue.size: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-interface/range {v18 .. v19}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 425
    if-nez v13, :cond_2

    .line 426
    const/4 v13, 0x1

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->onProgressStart()V

    .line 430
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;

    .line 432
    .local v6, "element":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    if-nez v6, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 437
    :cond_3
    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->mode_:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    invoke-static {v6}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->access$300(Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;)Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    move-result-object v9

    .line 438
    .local v9, "mode":Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
    invoke-static/range {v18 .. v18}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$200(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->setTiltShiftMode(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;)Z

    .line 441
    :cond_4
    :goto_1
    invoke-virtual {v6}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->size()I

    move-result v18

    if-gtz v18, :cond_5

    invoke-virtual {v6}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->isCompleted()Z

    move-result v18

    if-nez v18, :cond_6

    .line 442
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->isInterrupted()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 479
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->mQueue:Ljava/util/Queue;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto/16 :goto_0

    .line 444
    :cond_7
    invoke-virtual {v6}, Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    .line 445
    .local v10, "points":[F
    if-eqz v10, :cond_4

    .line 447
    const/16 v18, 0x0

    aget v16, v10, v18

    .line 448
    .local v16, "x":F
    const/16 v18, 0x1

    aget v17, v10, v18

    .line 449
    .local v17, "y":F
    const/16 v18, 0x2

    aget v11, v10, v18

    .line 450
    .local v11, "radius":F
    const/16 v18, 0x3

    aget v4, v10, v18

    .line 452
    .local v4, "angle":F
    const/16 v18, 0x4

    aget v8, v10, v18

    .line 453
    .local v8, "left":F
    const/16 v18, 0x5

    aget v15, v10, v18

    .line 454
    .local v15, "top":F
    const/16 v18, 0x6

    aget v12, v10, v18

    .line 455
    .local v12, "right":F
    const/16 v18, 0x7

    aget v5, v10, v18

    .line 457
    .local v5, "bottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
    invoke-static/range {v18 .. v18}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$200(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11, v4}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->tiltshift_draw(FFFF)Z

    .line 459
    invoke-virtual {v14, v8, v15, v12, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 465
    invoke-virtual {v7, v14}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
    invoke-static/range {v18 .. v18}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$200(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->renderPreview(Landroid/graphics/RectF;)Z

    .line 472
    invoke-virtual {v7, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postInvalidate()V

    goto/16 :goto_1

    .line 482
    .end local v4    # "angle":F
    .end local v5    # "bottom":F
    .end local v6    # "element":Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    .end local v8    # "left":F
    .end local v9    # "mode":Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    .end local v10    # "points":[F
    .end local v11    # "radius":F
    .end local v12    # "right":F
    .end local v15    # "top":F
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_8
    if-eqz v13, :cond_1

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->onProgressEnd()V

    .line 484
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 489
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->onProgressEnd()V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "thread.end"

    aput-object v21, v19, v20

    invoke-interface/range {v18 .. v19}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->started:Z

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->running:Z

    .line 317
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
