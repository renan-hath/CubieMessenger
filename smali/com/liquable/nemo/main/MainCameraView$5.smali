.class Lcom/liquable/nemo/main/MainCameraView$5;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainCameraView;

.field protected upAfterScale:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 362
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 363
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->hasAutoFocus:Z
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$700(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 364
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$800(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 365
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$900(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 366
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1000(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 367
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->previewStarted:Z
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1100(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 368
    :cond_0
    sget-object v7, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "previewContainer.onTouch: hasAutoFocus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 369
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->hasAutoFocus:Z
    invoke-static {v9}, Lcom/liquable/nemo/main/MainCameraView;->access$700(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isFocusing:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 371
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z
    invoke-static {v9}, Lcom/liquable/nemo/main/MainCameraView;->access$800(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isVideoMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 373
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z
    invoke-static {v9}, Lcom/liquable/nemo/main/MainCameraView;->access$900(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " photoTaken:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 375
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z
    invoke-static {v9}, Lcom/liquable/nemo/main/MainCameraView;->access$1000(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " previewStarted:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    .line 377
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->previewStarted:Z
    invoke-static {v9}, Lcom/liquable/nemo/main/MainCameraView;->access$1100(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 368
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 378
    const/4 v7, 0x1

    .line 477
    :goto_0
    return v7

    .line 381
    :cond_1
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->scaleDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1200(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/ScaleGestureDetector;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 382
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->scaleDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1200(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/ScaleGestureDetector;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 385
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 386
    const/4 v7, 0x1

    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_4

    .line 390
    const/4 v7, 0x1

    goto :goto_0

    .line 393
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    .line 394
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->upAfterScale:Z

    .line 395
    const/4 v7, 0x1

    goto :goto_0

    .line 398
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->upAfterScale:Z

    if-eqz v7, :cond_6

    .line 399
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->upAfterScale:Z

    .line 400
    const/4 v7, 0x1

    goto :goto_0

    .line 404
    :cond_6
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 406
    .local v5, "params":Landroid/hardware/Camera$Parameters;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_b

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v7

    if-lez v7, :cond_b

    .line 409
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v3, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1300(Lcom/liquable/nemo/main/MainCameraView;)Lcom/liquable/nemo/main/CameraPreviewContainer;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 415
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 414
    invoke-virtual {v7, v8, v9}, Lcom/liquable/nemo/main/CameraPreviewContainer;->mapPointFromPreviewContainerToSurface(FF)Landroid/graphics/Point;

    move-result-object v4

    .line 417
    .local v4, "p":Landroid/graphics/Point;
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1300(Lcom/liquable/nemo/main/MainCameraView;)Lcom/liquable/nemo/main/CameraPreviewContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getSurfaceSize()Landroid/util/Pair;

    move-result-object v6

    .line 420
    .local v6, "surfaceSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v8, v4, Landroid/graphics/Point;->x:I

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v8, v7, :cond_7

    iget v8, v4, Landroid/graphics/Point;->y:I

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v8, v7, :cond_8

    .line 421
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 428
    :cond_8
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-double v9, v9

    mul-double v8, v7, v9

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v10, v7

    div-double v7, v8, v10

    const-wide v9, 0x409f400000000000L    # 2000.0

    mul-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    sub-double/2addr v7, v9

    double-to-int v1, v7

    .line 429
    .local v1, "centerX":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v10, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v10

    int-to-double v10, v7

    mul-double/2addr v8, v10

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v10, v7

    div-double v7, v8, v10

    const-wide v9, 0x409f400000000000L    # 2000.0

    mul-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    sub-double/2addr v7, v9

    double-to-int v2, v7

    .line 435
    .local v2, "centerY":I
    new-instance v0, Landroid/graphics/Rect;

    const/16 v7, 0x3e8

    const/16 v8, -0x3e8

    add-int/lit8 v9, v1, -0x50

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/16 v8, 0x3e8

    const/16 v9, -0x3e8

    add-int/lit8 v10, v2, -0x50

    .line 436
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v9, -0x3e8

    const/16 v10, 0x3e8

    add-int/lit8 v11, v1, 0x50

    .line 437
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v10, -0x3e8

    const/16 v11, 0x3e8

    add-int/lit8 v12, v2, 0x50

    .line 438
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 442
    .local v0, "area":Landroid/graphics/Rect;
    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-eq v7, v8, :cond_9

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v8, :cond_a

    .line 443
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 446
    :cond_a
    new-instance v7, Landroid/hardware/Camera$Area;

    const/16 v8, 0x3e8

    invoke-direct {v7, v0, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 448
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 450
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->focusTarget:Landroid/view/View;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1400(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$1300(Lcom/liquable/nemo/main/MainCameraView;)Lcom/liquable/nemo/main/CameraPreviewContainer;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->focusTarget:Landroid/view/View;
    invoke-static {v9}, Lcom/liquable/nemo/main/MainCameraView;->access$1400(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 452
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->focusTarget:Landroid/view/View;
    invoke-static {v10}, Lcom/liquable/nemo/main/MainCameraView;->access$1400(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 451
    invoke-virtual {v7, v8, v9}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setFocusTargetPosition(II)V

    .line 455
    .end local v0    # "area":Landroid/graphics/Rect;
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v3    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v4    # "p":Landroid/graphics/Point;
    .end local v6    # "surfaceSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_b
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    const/4 v8, 0x1

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z
    invoke-static {v7, v8}, Lcom/liquable/nemo/main/MainCameraView;->access$802(Lcom/liquable/nemo/main/MainCameraView;Z)Z

    .line 456
    sget-object v7, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v8, "previewContainer.onTouch: autoFocus"

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 457
    iget-object v7, p0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v7

    new-instance v8, Lcom/liquable/nemo/main/MainCameraView$5$1;

    invoke-direct {v8, p0}, Lcom/liquable/nemo/main/MainCameraView$5$1;-><init>(Lcom/liquable/nemo/main/MainCameraView$5;)V

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 477
    const/4 v7, 0x1

    goto/16 :goto_0
.end method
