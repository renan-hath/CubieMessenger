.class public Lcom/liquable/nemo/util/crop/CropImageView;
.super Lcom/liquable/nemo/util/crop/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    .line 19
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/liquable/nemo/util/crop/HighlightView;)V
    .locals 13
    .param p1, "hv"    # Lcom/liquable/nemo/util/crop/HighlightView;

    .prologue
    .line 29
    iget-object v1, p1, Lcom/liquable/nemo/util/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 31
    .local v1, "drawRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 32
    .local v5, "width":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 34
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 35
    .local v4, "thisWidth":F
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 37
    .local v3, "thisHeight":F
    div-float v9, v4, v5

    const v10, 0x3f19999a    # 0.6f

    mul-float v6, v9, v10

    .line 38
    .local v6, "z1":F
    div-float v9, v3, v2

    const v10, 0x3f19999a    # 0.6f

    mul-float v7, v9, v10

    .line 40
    .local v7, "z2":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 41
    .local v8, "zoom":F
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 42
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 44
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 45
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/liquable/nemo/util/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/liquable/nemo/util/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 46
    .local v0, "coordinates":[F
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 47
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x43960000    # 300.0f

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/liquable/nemo/util/crop/CropImageView;->zoomTo(FFFF)V

    .line 50
    .end local v0    # "coordinates":[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/CropImageView;->ensureVisible(Lcom/liquable/nemo/util/crop/HighlightView;)V

    .line 51
    return-void
.end method

.method private ensureVisible(Lcom/liquable/nemo/util/crop/HighlightView;)V
    .locals 10
    .param p1, "hv"    # Lcom/liquable/nemo/util/crop/HighlightView;

    .prologue
    const/4 v9, 0x0

    .line 55
    iget-object v6, p1, Lcom/liquable/nemo/util/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 57
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 58
    .local v1, "panDeltaX1":I
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 60
    .local v2, "panDeltaX2":I
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 61
    .local v4, "panDeltaY1":I
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 63
    .local v5, "panDeltaY2":I
    if-eqz v1, :cond_2

    move v0, v1

    .line 64
    .local v0, "panDeltaX":I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 66
    .local v3, "panDeltaY":I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/liquable/nemo/util/crop/CropImageView;->panBy(FF)V

    .line 69
    :cond_1
    return-void

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_2
    move v0, v2

    .line 63
    goto :goto_0

    .restart local v0    # "panDeltaX":I
    :cond_3
    move v3, v5

    .line 64
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 210
    .local v1, "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/liquable/nemo/util/crop/HighlightView;->setFocus(Z)V

    .line 211
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/HighlightView;->invalidate()V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 216
    .restart local v1    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/liquable/nemo/util/crop/HighlightView;->getHit(FF)I

    move-result v0

    .line 217
    .local v0, "edge":I
    if-eq v0, v5, :cond_2

    .line 218
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {v1, v5}, Lcom/liquable/nemo/util/crop/HighlightView;->setFocus(Z)V

    .line 220
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/HighlightView;->invalidate()V

    .line 225
    .end local v0    # "edge":I
    .end local v1    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->invalidate()V

    .line 226
    return-void

    .line 214
    .restart local v0    # "edge":I
    .restart local v1    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/liquable/nemo/util/crop/HighlightView;)V
    .locals 1
    .param p1, "hv"    # Lcom/liquable/nemo/util/crop/HighlightView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->invalidate()V

    .line 24
    return-void
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->clear()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/HighlightView;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/util/crop/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 85
    invoke-super/range {p0 .. p5}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 86
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mBitmapDisplayed:Lcom/liquable/nemo/util/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 88
    .local v0, "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    iget-object v2, v0, Lcom/liquable/nemo/util/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/HighlightView;->invalidate()V

    .line 90
    iget-boolean v2, v0, Lcom/liquable/nemo/util/crop/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/crop/CropImageView;->centerBasedOnHighlightView(Lcom/liquable/nemo/util/crop/HighlightView;)V

    goto :goto_0

    .line 95
    .end local v0    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/CropImageActivity;

    .line 100
    .local v0, "cropImage":Lcom/liquable/nemo/util/crop/CropImageActivity;
    iget-boolean v5, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mSaving:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 192
    :goto_0
    return v5

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 177
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v7

    .line 192
    goto :goto_0

    .line 106
    :pswitch_0
    iget-boolean v5, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mWaitingToPick:Z

    if-eqz v5, :cond_3

    .line 107
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 109
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 115
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 116
    .local v2, "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/liquable/nemo/util/crop/HighlightView;->getHit(FF)I

    move-result v1

    .line 117
    .local v1, "edge":I
    if-eq v1, v7, :cond_5

    .line 118
    iput v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionEdge:I

    .line 119
    iput-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mLastX:F

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mLastY:F

    .line 123
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    const/16 v5, 0x20

    if-ne v1, v5, :cond_4

    sget-object v5, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->Move:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v6, v5}, Lcom/liquable/nemo/util/crop/HighlightView;->setMode(Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->Grow:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    goto :goto_4

    .line 109
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 132
    .end local v1    # "edge":I
    .end local v2    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    .end local v3    # "i":I
    :pswitch_1
    iget-boolean v5, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mWaitingToPick:Z

    if-eqz v5, :cond_9

    .line 133
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 134
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 135
    .restart local v2    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 136
    iput-object v2, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCrop:Lcom/liquable/nemo/util/crop/HighlightView;

    .line 137
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 138
    if-ne v4, v3, :cond_6

    .line 137
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 142
    :cond_6
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/HighlightView;

    invoke-virtual {v5, v7}, Lcom/liquable/nemo/util/crop/HighlightView;->setHidden(Z)V

    goto :goto_7

    .line 144
    :cond_7
    invoke-direct {p0, v2}, Lcom/liquable/nemo/util/crop/CropImageView;->centerBasedOnHighlightView(Lcom/liquable/nemo/util/crop/HighlightView;)V

    .line 145
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/CropImageActivity;

    iput-boolean v6, v5, Lcom/liquable/nemo/util/crop/CropImageActivity;->mWaitingToPick:Z

    move v5, v7

    .line 146
    goto/16 :goto_0

    .line 133
    .end local v4    # "j":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 149
    .end local v2    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    .end local v3    # "i":I
    :cond_9
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    if-eqz v5, :cond_a

    .line 150
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    invoke-direct {p0, v5}, Lcom/liquable/nemo/util/crop/CropImageView;->centerBasedOnHighlightView(Lcom/liquable/nemo/util/crop/HighlightView;)V

    .line 151
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    sget-object v6, Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;->None:Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/crop/HighlightView;->setMode(Lcom/liquable/nemo/util/crop/HighlightView$ModifyMode;)V

    .line 153
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    goto/16 :goto_1

    .line 156
    :pswitch_2
    iget-boolean v5, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mWaitingToPick:Z

    if-eqz v5, :cond_b

    .line 157
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 158
    :cond_b
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    if-eqz v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    iget v6, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionEdge:I

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mLastX:F

    sub-float/2addr v8, v9

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mLastY:F

    sub-float/2addr v9, v10

    .line 159
    invoke-virtual {v5, v6, v8, v9}, Lcom/liquable/nemo/util/crop/HighlightView;->handleMotion(IFF)V

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mLastX:F

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mLastY:F

    .line 171
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mMotionHighlightView:Lcom/liquable/nemo/util/crop/HighlightView;

    invoke-direct {p0, v5}, Lcom/liquable/nemo/util/crop/CropImageView;->ensureVisible(Lcom/liquable/nemo/util/crop/HighlightView;)V

    goto/16 :goto_1

    .line 179
    :pswitch_3
    invoke-virtual {p0, v7, v7}, Lcom/liquable/nemo/util/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 186
    :pswitch_4
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 187
    invoke-virtual {p0, v7, v7}, Lcom/liquable/nemo/util/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 200
    .local v0, "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    iget-object v2, v0, Lcom/liquable/nemo/util/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 201
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/HighlightView;->invalidate()V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_0
    return-void
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic setImageRotateBitmapResetBase(Lcom/liquable/nemo/util/crop/RotateBitmap;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/liquable/nemo/util/crop/RotateBitmap;Z)V

    return-void
.end method

.method public bridge synthetic setRecycler(Lcom/liquable/nemo/util/crop/ImageViewTouchBase$Recycler;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->setRecycler(Lcom/liquable/nemo/util/crop/ImageViewTouchBase$Recycler;)V

    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->zoomIn()V

    .line 231
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 232
    .local v0, "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    iget-object v2, v0, Lcom/liquable/nemo/util/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 233
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/HighlightView;->invalidate()V

    goto :goto_0

    .line 235
    .end local v0    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 239
    invoke-super {p0}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->zoomOut()V

    .line 240
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 241
    .local v0, "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    iget-object v2, v0, Lcom/liquable/nemo/util/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 242
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/HighlightView;->invalidate()V

    goto :goto_0

    .line 244
    .end local v0    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/util/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 249
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/HighlightView;

    .line 250
    .local v0, "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    iget-object v2, v0, Lcom/liquable/nemo/util/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/HighlightView;->invalidate()V

    goto :goto_0

    .line 253
    .end local v0    # "hv":Lcom/liquable/nemo/util/crop/HighlightView;
    :cond_0
    return-void
.end method
