.class public Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;
.super Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;
.source "EffectsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/EffectsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectsRenderTask"
.end annotation


# instance fields
.field mOpenGlBackgroundListener:Lcom/aviary/android/feather/library/threading/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/library/threading/FutureListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenGlCompleted:Ljava/lang/Object;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/EffectsPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/EffectsPanel;
    .param p2, "position"    # I

    .prologue
    .line 349
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;I)V

    .line 336
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlCompleted:Ljava/lang/Object;

    .line 338
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask$1;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask$1;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlBackgroundListener:Lcom/aviary/android/feather/library/threading/FutureListener;

    .line 351
    return-void
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlCompleted:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public doFullPreviewInBackground(Ljava/lang/String;)V
    .locals 5
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z
    invoke-static {v1}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$300(Lcom/aviary/android/feather/effects/EffectsPanel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$000(Lcom/aviary/android/feather/effects/EffectsPanel;)Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/EffectsPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlBackgroundListener:Lcom/aviary/android/feather/library/threading/FutureListener;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->executeEffect(Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/aviary/android/feather/library/threading/FutureListener;)Lcom/aviary/android/feather/library/threading/Future;

    .line 370
    iget-object v2, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlCompleted:Ljava/lang/Object;

    monitor-enter v2

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->mOpenGlCompleted:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 380
    :goto_1
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 378
    :cond_0
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->doFullPreviewInBackground(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public varargs doInBackground([Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->doInBackground([Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z
    invoke-static {v1}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$300(Lcom/aviary/android/feather/effects/EffectsPanel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v0, v1, Lcom/aviary/android/feather/effects/EffectsPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 388
    .end local v0    # "result":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    check-cast p1, [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->doInBackground([Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected initPreview(Lcom/aviary/android/feather/headless/filters/INativeFilter;)Lcom/aviary/android/feather/headless/moa/MoaResult;
    .locals 5
    .param p1, "filter"    # Lcom/aviary/android/feather/headless/filters/INativeFilter;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z
    invoke-static {v1}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$300(Lcom/aviary/android/feather/effects/EffectsPanel;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-boolean v1, v1, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/EffectsPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$400(Lcom/aviary/android/feather/effects/EffectsPanel;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$400(Lcom/aviary/android/feather/effects/EffectsPanel;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$400(Lcom/aviary/android/feather/effects/EffectsPanel;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/aviary/android/feather/headless/filters/INativeFilter;->prepare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 362
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onApplyNewBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z
    invoke-static {v0}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$300(Lcom/aviary/android/feather/effects/EffectsPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$000(Lcom/aviary/android/feather/effects/EffectsPanel;)Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->requestRender()V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->onApplyNewBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onRestoreOriginalBitmap()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z
    invoke-static {v0}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$300(Lcom/aviary/android/feather/effects/EffectsPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    # getter for: Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/EffectsPanel;->access$000(Lcom/aviary/android/feather/effects/EffectsPanel;)Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->requestRender()V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->onRestoreOriginalBitmap()V

    goto :goto_0
.end method
