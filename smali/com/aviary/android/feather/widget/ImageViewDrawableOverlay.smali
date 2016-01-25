.class public Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.source "ImageViewDrawableOverlay.java"

# interfaces
.implements Lcom/aviary/android/feather/library/services/drag/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;
    }
.end annotation


# instance fields
.field private mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

.field private mDropPaint:Landroid/graphics/Paint;

.field private mDropTargetListener:Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;

.field private mForceSingleSelection:Z

.field mLastMotionScrollX:F

.field mLastMotionScrollY:F

.field private mOverlayStyleId:I

.field private mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

.field private mOverlayViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/widget/DrawableHighlightView;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleWithContent:Z

.field mScrollStarted:Z

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mForceSingleSelection:Z

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mTempRect:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mForceSingleSelection:Z

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mTempRect:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    .line 64
    return-void
.end method

.method private checkSelection(Landroid/view/MotionEvent;)Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 513
    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 514
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/widget/DrawableHighlightView;>;"
    const/4 v2, 0x0

    .line 515
    .local v2, "selection":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 517
    .local v3, "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getHit(FF)I

    move-result v0

    .line 518
    .local v0, "edge":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 519
    move-object v2, v3

    goto :goto_0

    .line 522
    .end local v0    # "edge":I
    .end local v3    # "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_1
    return-object v2
.end method

.method private ensureVisible(Lcom/aviary/android/feather/widget/DrawableHighlightView;FF)V
    .locals 11
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F

    .prologue
    const/4 v9, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getDrawRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 199
    .local v6, "r":Landroid/graphics/RectF;
    const/4 v1, 0x0

    .local v1, "panDeltaX1":I
    const/4 v2, 0x0

    .line 200
    .local v2, "panDeltaX2":I
    const/4 v4, 0x0

    .local v4, "panDeltaY1":I
    const/4 v5, 0x0

    .line 202
    .local v5, "panDeltaY2":I
    cmpl-float v7, p2, v9

    if-lez v7, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v1, v7

    .line 203
    :cond_0
    cmpg-float v7, p2, v9

    if-gez v7, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getRight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v2, v7

    .line 205
    :cond_1
    cmpl-float v7, p3, v9

    if-lez v7, :cond_2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v4, v7

    .line 207
    :cond_2
    cmpg-float v7, p3, v9

    if-gez v7, :cond_3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getBottom()I

    move-result v7

    int-to-float v7, v7

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v5, v7

    .line 209
    :cond_3
    if-eqz v1, :cond_6

    move v0, v1

    .line 210
    .local v0, "panDeltaX":I
    :goto_0
    if-eqz v4, :cond_7

    move v3, v4

    .line 212
    .local v3, "panDeltaY":I
    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    .line 213
    :cond_4
    int-to-double v7, v0

    int-to-double v9, v3

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->panBy(DD)V

    .line 215
    :cond_5
    return-void

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_6
    move v0, v2

    .line 209
    goto :goto_0

    .restart local v0    # "panDeltaX":I
    :cond_7
    move v3, v5

    .line 210
    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/aviary/android/feather/library/services/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropTargetListener:Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropTargetListener:Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;->acceptDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)Z

    move-result v0

    .line 577
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z
    .locals 3
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    const/4 v2, 0x1

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 450
    :goto_1
    return v1

    .line 440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    .line 446
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 447
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    :cond_2
    move v1, v2

    .line 450
    goto :goto_1
.end method

.method public clearOverlays()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    const-string/jumbo v1, "ImageViewTouchBase"

    const-string/jumbo v2, "clearOverlays"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 434
    .local v0, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->dispose()V

    goto :goto_0

    .line 436
    .end local v0    # "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_0
    iput-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 437
    return-void
.end method

.method public getHighlightCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHighlightViewAt(I)Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    return-object v0
.end method

.method public getOverlayStyleId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayStyleId:I

    return v0
.end method

.method public getScaleWithContent()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    return v0
.end method

.method public getSelectedHighlightView()Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mTouchSlop:I

    .line 70
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 74
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    sget-object v2, Lcom/aviary/android/feather/R$styleable;->AviaryImageViewDrawableOverlay:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayStyleId:I

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    const-string/jumbo v10, "ImageViewTouchBase"

    const-string/jumbo v11, "onDown"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScrollStarted:Z

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mLastMotionScrollX:F

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mLastMotionScrollY:F

    .line 242
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->checkSelection(Landroid/view/MotionEvent;)Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v8

    .line 243
    .local v8, "newSelection":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    move-object v9, v8

    .line 245
    .local v9, "realNewSelection":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    if-nez v8, :cond_0

    iget-object v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-boolean v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mForceSingleSelection:Z

    if-eqz v10, :cond_0

    .line 247
    iget-object v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "newSelection":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    check-cast v8, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 250
    .restart local v8    # "newSelection":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_0
    invoke-virtual {p0, v8}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 252
    if-eqz v9, :cond_1

    iget-boolean v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    if-eqz v10, :cond_1

    .line 253
    invoke-virtual {v9}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getDisplayRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 254
    .local v1, "displayRect":Landroid/graphics/RectF;
    invoke-virtual {v9}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->validateSize(Landroid/graphics/RectF;)Z

    move-result v3

    .line 256
    .local v3, "invalidSize":Z
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalidSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-nez v3, :cond_1

    .line 259
    const-string/jumbo v10, "ImageViewTouchBase"

    const-string/jumbo v11, "drawable too small!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v9}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v10

    invoke-interface {v10}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getMinWidth()F

    move-result v7

    .line 262
    .local v7, "minW":F
    invoke-virtual {v9}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v10

    invoke-interface {v10}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getMinHeight()F

    move-result v4

    .line 264
    .local v4, "minH":F
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "minW: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "minH: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const v11, 0x3f8ccccd    # 1.1f

    mul-float v6, v10, v11

    .line 269
    .local v6, "minSize":F
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "minSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 273
    .local v5, "minRectSize":F
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "minRectSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    div-float v0, v6, v5

    .line 277
    .local v0, "diff":F
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "diff: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "min.size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cur.size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo v10, "ImageViewTouchBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "zooming to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getScale()F

    move-result v12

    mul-float/2addr v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getScale()F

    move-result v10

    mul-float/2addr v10, v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    const/high16 v13, 0x43960000    # 300.0f

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->zoomTo(FFFF)V

    .line 284
    const/4 v10, 0x1

    .line 302
    .end local v0    # "diff":F
    .end local v1    # "displayRect":Landroid/graphics/RectF;
    .end local v3    # "invalidSize":Z
    .end local v4    # "minH":F
    .end local v5    # "minRectSize":F
    .end local v6    # "minSize":F
    .end local v7    # "minW":F
    :goto_0
    return v10

    .line 288
    :cond_1
    iget-object v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v10, :cond_2

    .line 289
    iget-object v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getHit(FF)I

    move-result v2

    .line 290
    .local v2, "edge":I
    const/4 v10, 0x1

    if-eq v2, v10, :cond_2

    .line 291
    iget-object v11, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    const/16 v10, 0x40

    if-ne v2, v10, :cond_3

    const/16 v10, 0x40

    .line 292
    :goto_1
    invoke-virtual {v11, v10}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setMode(I)V

    .line 295
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    .line 296
    iget-object v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    if-eqz v10, :cond_2

    .line 297
    iget-object v10, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    iget-object v11, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;->onDown(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 302
    .end local v2    # "edge":I
    :cond_2
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDown(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_0

    .line 291
    .restart local v2    # "edge":I
    :cond_3
    const/16 v10, 0x20

    if-ne v2, v10, :cond_4

    const/16 v10, 0x20

    goto :goto_1

    :cond_4
    const/16 v10, 0x1e

    goto :goto_1
.end method

.method public onDragEnter(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
    .locals 4
    .param p1, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/aviary/android/feather/library/services/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 555
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    .line 556
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    const v1, -0xcc4a1b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 558
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 559
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 560
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->invalidate()V

    .line 561
    return-void
.end method

.method public onDragExit(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/aviary/android/feather/library/services/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    .line 569
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->invalidate()V

    .line 570
    return-void
.end method

.method public onDragOver(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/aviary/android/feather/library/services/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 564
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 396
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDraw(Landroid/graphics/Canvas;)V

    .line 398
    const/4 v3, 0x0

    .line 400
    .local v3, "shouldInvalidateAfter":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 401
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 403
    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 404
    .local v1, "current":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {v1, p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 407
    if-nez v3, :cond_0

    .line 408
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    .line 409
    .local v0, "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    instance-of v4, v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    if-eqz v4, :cond_0

    .line 410
    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;

    .end local v0    # "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    invoke-interface {v0}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    const/4 v3, 0x1

    .line 416
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "current":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_1
    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_2

    .line 420
    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 421
    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 424
    :cond_2
    if-eqz v3, :cond_3

    .line 425
    const-wide/16 v4, 0x190

    invoke-virtual {p0, v4, v5}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidateDelayed(J)V

    .line 427
    :cond_3
    return-void
.end method

.method public onDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
    .locals 8
    .param p1, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/aviary/android/feather/library/services/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropTargetListener:Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropTargetListener:Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;->onDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V

    .line 551
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 388
    const-string/jumbo v0, "ImageViewTouchBase"

    const-string/jumbo v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayoutChanged(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onLayoutChanged(IIII)V

    .line 129
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/widget/DrawableHighlightView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 134
    .local v1, "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 135
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    goto :goto_0

    .line 138
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/widget/DrawableHighlightView;>;"
    .end local v1    # "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    .line 348
    const-string/jumbo v5, "ImageViewTouchBase"

    const-string/jumbo v6, "onScroll"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 353
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 355
    .local v3, "y":F
    iget-boolean v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScrollStarted:Z

    if-nez v5, :cond_2

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 358
    .local v1, "dy":F
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScrollStarted:Z

    .line 364
    :goto_0
    iput v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mLastMotionScrollX:F

    .line 365
    iput v3, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mLastMotionScrollY:F

    .line 367
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMode()I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 368
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    iget-object v6, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v6}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMode()I

    move-result v6

    neg-float v7, v0

    neg-float v8, v1

    invoke-virtual {v5, v6, p2, v7, v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->onMouseMove(ILandroid/view/MotionEvent;FF)V

    .line 369
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    .line 371
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    if-eqz v5, :cond_0

    .line 372
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    iget-object v6, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;->onMove(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 375
    :cond_0
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMode()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_1

    .line 376
    iget-boolean v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    if-nez v5, :cond_1

    .line 377
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-direct {p0, v5, p3, p4}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->ensureVisible(Lcom/aviary/android/feather/widget/DrawableHighlightView;FF)V

    .line 382
    :cond_1
    :goto_1
    return v4

    .line 360
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_2
    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mLastMotionScrollX:F

    sub-float v0, v5, v2

    .line 361
    .restart local v0    # "dx":F
    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mLastMotionScrollY:F

    sub-float v1, v5, v3

    .restart local v1    # "dy":F
    goto :goto_0

    .line 382
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v4

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/widget/DrawableHighlightView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 224
    .local v1, "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->onSingleTapConfirmed(FF)V

    .line 226
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    goto :goto_0

    .line 230
    .end local v1    # "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 318
    const-string/jumbo v2, "ImageViewTouchBase"

    const-string/jumbo v3, "onSingleTapUp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getHit(FF)I

    move-result v0

    .line 323
    .local v0, "edge":I
    and-int/lit8 v2, v0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 324
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;->onClick(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 340
    .end local v0    # "edge":I
    :cond_0
    :goto_0
    return v1

    .line 330
    .restart local v0    # "edge":I
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v2, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setMode(I)V

    .line 331
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    .line 333
    const-string/jumbo v2, "ImageViewTouchBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected items: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 340
    .end local v0    # "edge":I
    :cond_2
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    const-string/jumbo v0, "ImageViewTouchBase"

    const-string/jumbo v1, "onUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setMode(I)V

    .line 311
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    .line 313
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onZoomAnimationCompleted(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 478
    const-string/jumbo v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomAnimationCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onZoomAnimationCompleted(F)V

    .line 481
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setMode(I)V

    .line 483
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    .line 485
    :cond_0
    return-void
.end method

.method protected postScale(FFF)V
    .locals 11
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 163
    iget-object v8, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 164
    iget-object v8, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 166
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/widget/DrawableHighlightView;>;"
    new-instance v4, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 167
    .local v4, "oldMatrix":Landroid/graphics/Matrix;
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postScale(FFF)V

    .line 169
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 172
    .local v7, "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    iget-boolean v8, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    if-nez v8, :cond_0

    .line 173
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 174
    .local v0, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getDisplayRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 175
    .local v5, "rect1":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getDisplayRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 177
    .local v6, "rect2":Landroid/graphics/RectF;
    const/16 v8, 0x9

    new-array v3, v8, [F

    .line 178
    .local v3, "mvalues":[F
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 179
    const/4 v8, 0x0

    aget v1, v3, v8

    .line 181
    .local v1, "currentScale":F
    iget v8, v5, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v1

    iget v9, v5, Landroid/graphics/RectF;->top:F

    iget v10, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 182
    iget v8, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    neg-float v9, v9

    div-float/2addr v9, v1

    add-float/2addr v8, v9

    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 183
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float/2addr v9, v10

    neg-float v9, v9

    div-float/2addr v9, v1

    add-float/2addr v8, v9

    iput v8, v0, Landroid/graphics/RectF;->bottom:F

    .line 185
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 186
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 190
    .end local v0    # "cropRect":Landroid/graphics/RectF;
    .end local v1    # "currentScale":F
    .end local v3    # "mvalues":[F
    .end local v5    # "rect1":Landroid/graphics/RectF;
    .end local v6    # "rect2":Landroid/graphics/RectF;
    :goto_1
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 193
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/widget/DrawableHighlightView;>;"
    .end local v4    # "oldMatrix":Landroid/graphics/Matrix;
    .end local v7    # "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postScale(FFF)V

    .line 195
    :cond_2
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 7
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postTranslate(FF)V

    .line 144
    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/widget/DrawableHighlightView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 147
    .local v3, "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 148
    const/16 v4, 0x9

    new-array v1, v4, [F

    .line 149
    .local v1, "mvalues":[F
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 150
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 152
    .local v2, "scale":F
    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v4

    neg-float v5, p1

    div-float/2addr v5, v2

    neg-float v6, p2

    div-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 155
    .end local v1    # "mvalues":[F
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 156
    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->invalidate()V

    goto :goto_0

    .line 158
    .end local v3    # "view":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :cond_1
    return-void
.end method

.method public removeHightlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z
    .locals 4
    .param p1, "view"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 462
    const-string/jumbo v2, "ImageViewTouchBase"

    const-string/jumbo v3, "removeHightlightView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 464
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 466
    .local v0, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 469
    :cond_0
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->dispose()V

    .line 470
    const/4 v2, 0x1

    .line 473
    .end local v0    # "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    :goto_1
    return v2

    .line 463
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDropTargetListener(Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDropTargetListener:Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;

    .line 114
    return-void
.end method

.method public setForceSingleSelection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mForceSingleSelection:Z

    .line 110
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 123
    return-void
.end method

.method public setOnDrawableEventListener(Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    .line 118
    return-void
.end method

.method public setScaleWithContent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mScaleWithContent:Z

    .line 96
    return-void
.end method

.method public setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V
    .locals 3
    .param p1, "newView"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 529
    .local v0, "oldView":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setSelected(Z)V

    .line 533
    :cond_0
    if-eqz p1, :cond_1

    .line 534
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setSelected(Z)V

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->postInvalidate()V

    .line 539
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mOverlayView:Lcom/aviary/android/feather/widget/DrawableHighlightView;

    .line 541
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->mDrawableListener:Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;

    invoke-interface {v1, p1, v0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay$OnDrawableEventListener;->onFocusChange(Lcom/aviary/android/feather/widget/DrawableHighlightView;Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 544
    :cond_2
    return-void
.end method
