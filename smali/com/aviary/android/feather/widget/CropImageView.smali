.class public Lcom/aviary/android/feather/widget/CropImageView;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;,
        Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;
    }
.end annotation


# instance fields
.field protected mAspectRatio:D

.field private mAspectRatioFixed:Z

.field private mCropMinSize:I

.field protected mHandler:Landroid/os/Handler;

.field private mHighlighStyle:I

.field private mHighlightSingleTapUpListener:Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;

.field private mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

.field private mMotionEdge:I

.field private mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

.field private mRect1:Landroid/graphics/Rect;

.field private mRect2:Landroid/graphics/Rect;

.field onLayoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryCropImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mCropMinSize:I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/aviary/android/feather/widget/CropImageView$1;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/widget/CropImageView$1;-><init>(Lcom/aviary/android/feather/widget/CropImageView;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect1:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect2:Landroid/graphics/Rect;

    .line 362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatio:D

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/aviary/android/feather/widget/CropImageView;FFD)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # D

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/widget/CropImageView;->scrollBy(FFD)V

    return-void
.end method

.method static synthetic access$102(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Lcom/aviary/android/feather/widget/HighlightView;
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;
    .param p1, "x1"    # Lcom/aviary/android/feather/widget/HighlightView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/widget/CropImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 28
    iget v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I

    return v0
.end method

.method static synthetic access$202(Lcom/aviary/android/feather/widget/CropImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I

    return p1
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightSingleTapUpListener:Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/widget/CropImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mDoubleTapEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/widget/CropImageView;FF)F
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/widget/CropImageView;->onDoubleTapPost(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/aviary/android/feather/widget/CropImageView;FFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/widget/CropImageView;->zoomTo(FFFF)V

    return-void
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/widget/CropImageView;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;
    .param p1, "x1"    # Lcom/aviary/android/feather/widget/HighlightView;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/CropImageView;->ensureVisible(Lcom/aviary/android/feather/widget/HighlightView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/aviary/android/feather/widget/CropImageView;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method private computeFinalCropRect(D)Lcom/aviary/android/feather/library/graphics/RectD;
    .locals 24
    .param p1, "aspectRatio"    # D

    .prologue
    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CropImageView;->getScale()F

    move-result v19

    .line 454
    .local v19, "scale":F
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v0, v7

    move/from16 v22, v0

    .line 455
    .local v22, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v0, v7

    move/from16 v16, v0

    .line 457
    .local v16, "height":F
    new-instance v21, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CropImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CropImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 458
    .local v21, "viewRect":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CropImageView;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v11

    .line 460
    .local v11, "bitmapRect":Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/RectF;

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v9, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget v10, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    .line 461
    move/from16 v0, v23

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 463
    .local v18, "rect":Landroid/graphics/RectF;
    div-float v7, v22, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float v8, v16, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    float-to-double v14, v7

    .line 464
    .local v14, "cropWidth":D
    move-wide v12, v14

    .line 466
    .local v12, "cropHeight":D
    const-wide/16 v7, 0x0

    cmpl-double v7, p1, v7

    if-eqz v7, :cond_0

    .line 467
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, p1, v7

    if-lez v7, :cond_2

    .line 468
    div-double v12, v12, p1

    .line 474
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    .line 475
    .local v17, "mImageMatrix":Landroid/graphics/Matrix;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 477
    .local v20, "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 478
    const-string/jumbo v7, "ImageViewTouchBase"

    const-string/jumbo v8, "cannot invert matrix"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 483
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v9, v14, v9

    sub-double v3, v7, v9

    .line 484
    .local v3, "x":D
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v9, v12, v9

    sub-double v5, v7, v9

    .line 485
    .local v5, "y":D
    new-instance v2, Lcom/aviary/android/feather/library/graphics/RectD;

    add-double v7, v3, v14

    add-double v9, v5, v12

    invoke-direct/range {v2 .. v10}, Lcom/aviary/android/feather/library/graphics/RectD;-><init>(DDDD)V

    .line 487
    .local v2, "cropRect":Lcom/aviary/android/feather/library/graphics/RectD;
    return-object v2

    .line 470
    .end local v2    # "cropRect":Lcom/aviary/android/feather/library/graphics/RectD;
    .end local v3    # "x":D
    .end local v5    # "y":D
    .end local v17    # "mImageMatrix":Landroid/graphics/Matrix;
    .end local v20    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_2
    mul-double v14, v14, p1

    goto :goto_0
.end method

.method private ensureVisible(Lcom/aviary/android/feather/widget/HighlightView;)Z
    .locals 11
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/HighlightView;

    .prologue
    const/4 v7, 0x0

    .line 171
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/HighlightView;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 172
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getLeft()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 173
    .local v1, "panDeltaX1":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getRight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 174
    .local v2, "panDeltaX2":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getTop()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 175
    .local v4, "panDeltaY1":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getBottom()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 176
    .local v5, "panDeltaY2":I
    if-eqz v1, :cond_2

    move v0, v1

    .line 177
    .local v0, "panDeltaX":I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 179
    .local v3, "panDeltaY":I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 180
    :cond_0
    int-to-double v7, v0

    int-to-double v9, v3

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/aviary/android/feather/widget/CropImageView;->panBy(DD)V

    .line 181
    const/4 v7, 0x1

    .line 183
    :cond_1
    return v7

    .end local v0    # "panDeltaX":I
    .end local v3    # "panDeltaY":I
    :cond_2
    move v0, v2

    .line 176
    goto :goto_0

    .restart local v0    # "panDeltaX":I
    :cond_3
    move v3, v5

    .line 177
    goto :goto_1
.end method

.method private updateAspectRatio(DLcom/aviary/android/feather/widget/HighlightView;Z)V
    .locals 11
    .param p1, "aspectRatio"    # D
    .param p3, "hv"    # Lcom/aviary/android/feather/widget/HighlightView;
    .param p4, "animate"    # Z

    .prologue
    const-wide/16 v1, 0x0

    .line 420
    const-string/jumbo v4, "ImageViewTouchBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAspectRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v10, v4

    .line 423
    .local v10, "width":F
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v9, v4

    .line 424
    .local v9, "height":F
    new-instance v0, Lcom/aviary/android/feather/library/graphics/RectD;

    float-to-int v4, v10

    int-to-double v5, v4

    float-to-int v4, v9

    int-to-double v7, v4

    move-wide v3, v1

    invoke-direct/range {v0 .. v8}, Lcom/aviary/android/feather/library/graphics/RectD;-><init>(DDDD)V

    .line 425
    .local v0, "imageRect":Lcom/aviary/android/feather/library/graphics/RectD;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 426
    .local v3, "mImageMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/widget/CropImageView;->computeFinalCropRect(D)Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v5

    .line 428
    .local v5, "cropRect":Lcom/aviary/android/feather/library/graphics/RectD;
    if-eqz p4, :cond_0

    .line 429
    iget-boolean v6, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatioFixed:Z

    move-object v1, p3

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/widget/HighlightView;->animateTo(Landroid/view/View;Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Lcom/aviary/android/feather/library/graphics/RectD;Z)V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatioFixed:Z

    invoke-virtual {p3, v3, v0, v5, v1}, Lcom/aviary/android/feather/widget/HighlightView;->setup(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Lcom/aviary/android/feather/library/graphics/RectD;Z)V

    .line 432
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public getAspectRatio()D
    .locals 2

    .prologue
    .line 491
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatio:D

    return-wide v0
.end method

.method public getAspectRatioIsFixed()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatioFixed:Z

    return v0
.end method

.method public getHighlightView()Lcom/aviary/android/feather/widget/HighlightView;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 69
    iput-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 70
    iput-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 71
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;

    invoke-direct {v4, p0}, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;-><init>(Lcom/aviary/android/feather/widget/CropImageView;)V

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 72
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 76
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    sget-object v2, Lcom/aviary/android/feather/R$styleable;->AviaryCropImageView:[I

    invoke-virtual {v1, p2, v2, p3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "array":Landroid/content/res/TypedArray;
    const/16 v2, 0x32

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mCropMinSize:I

    .line 78
    const/4 v2, -0x1

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlighStyle:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/widget/CropImageView$3;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/CropImageView$3;-><init>(Lcom/aviary/android/feather/widget/CropImageView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->postInvalidate()V

    .line 448
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 383
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 385
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/widget/CropImageView$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/CropImageView$2;-><init>(Lcom/aviary/android/feather/widget/CropImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    :cond_0
    return-void
.end method

.method protected onLayoutChanged(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onLayoutChanged(IIII)V

    .line 93
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->onLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onSizeChanged(IIII)V

    .line 198
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/widget/HighlightView;->onSizeChanged(Lcom/aviary/android/feather/widget/CropImageView;IIII)V

    .line 201
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 219
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 222
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    return v3

    .line 225
    :pswitch_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/HighlightView;->setMode(Lcom/aviary/android/feather/widget/HighlightView$Mode;)V

    .line 227
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->postInvalidate()V

    .line 230
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    .line 231
    iput v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected postScale(FFF)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 143
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/HighlightView;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/HighlightView;->getCropRectD()Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v0

    .line 148
    .local v0, "cropRect":Lcom/aviary/android/feather/library/graphics/RectD;
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/HighlightView;->getCropRectD()Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v5

    iget-object v6, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Lcom/aviary/android/feather/widget/HighlightView;->getDisplayRect(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Landroid/graphics/Rect;)V

    .line 150
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postScale(FFF)V

    .line 152
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/HighlightView;->getCropRectD()Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v5

    iget-object v6, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Lcom/aviary/android/feather/widget/HighlightView;->getDisplayRect(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Landroid/graphics/Rect;)V

    .line 154
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 155
    .local v2, "mvalues":[F
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 156
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 158
    .local v1, "currentScale":F
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect1:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v3, v3

    iget-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect1:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-double v5, v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 159
    iget-wide v3, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-double v5, v5

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 160
    iget-wide v3, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-object v5, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/aviary/android/feather/widget/CropImageView;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-double v5, v5

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 162
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/HighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 163
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/HighlightView;->getCropRectD()Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aviary/android/feather/library/graphics/RectD;->set(Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 164
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/HighlightView;->invalidate()V

    goto/16 :goto_0

    .line 166
    .end local v0    # "cropRect":Lcom/aviary/android/feather/library/graphics/RectD;
    .end local v1    # "currentScale":F
    .end local v2    # "mvalues":[F
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postScale(FFF)V

    goto/16 :goto_0
.end method

.method protected postTranslate(FF)V
    .locals 7
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->postTranslate(FF)V

    .line 120
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/HighlightView;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 127
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 128
    .local v0, "mvalues":[F
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 129
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 130
    .local v1, "scale":F
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/HighlightView;->getCropRectD()Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v2

    neg-float v3, p1

    div-float/2addr v3, v1

    float-to-double v3, v3

    neg-float v5, p2

    div-float/2addr v5, v1

    float-to-double v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 133
    .end local v0    # "mvalues":[F
    .end local v1    # "scale":F
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/HighlightView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 134
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method public setAspectRatio(DZ)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "isFixed"    # Z

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iput-wide p1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatio:D

    .line 376
    iput-boolean p3, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatioFixed:Z

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/CropImageView;->updateCropView(Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public setHighlightView(Lcom/aviary/android/feather/widget/HighlightView;)V
    .locals 1
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/HighlightView;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/HighlightView;->dispose()V

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    .line 209
    iput-object p1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    .line 210
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->invalidate()V

    .line 211
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;DZ)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "aspectRatio"    # D
    .param p4, "isFixed"    # Z

    .prologue
    .line 367
    iput-wide p2, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatio:D

    .line 368
    iput-boolean p4, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatioFixed:Z

    .line 369
    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/aviary/android/feather/widget/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 370
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 88
    return-void
.end method

.method public setMinCropSize(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    iput p1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mCropMinSize:I

    .line 60
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/HighlightView;->setMinSize(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public setOnHighlightSingleTapUpConfirmedListener(Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlightSingleTapUpListener:Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;

    .line 55
    return-void
.end method

.method public updateCropView(Z)V
    .locals 5
    .param p1, "bitmapChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 398
    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/CropImageView;->setHighlightView(Lcom/aviary/android/feather/widget/HighlightView;)V

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 403
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/CropImageView;->setHighlightView(Lcom/aviary/android/feather/widget/HighlightView;)V

    .line 404
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->invalidate()V

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getHighlightView()Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 409
    iget-wide v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatio:D

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->getHighlightView()Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/CropImageView;->updateAspectRatio(DLcom/aviary/android/feather/widget/HighlightView;Z)V

    .line 416
    :goto_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CropImageView;->invalidate()V

    goto :goto_0

    .line 411
    :cond_2
    new-instance v0, Lcom/aviary/android/feather/widget/HighlightView;

    iget v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mHighlighStyle:I

    invoke-direct {v0, p0, v1}, Lcom/aviary/android/feather/widget/HighlightView;-><init>(Landroid/view/View;I)V

    .line 412
    .local v0, "hv":Lcom/aviary/android/feather/widget/HighlightView;
    iget v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mCropMinSize:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/HighlightView;->setMinSize(I)V

    .line 413
    iget-wide v1, p0, Lcom/aviary/android/feather/widget/CropImageView;->mAspectRatio:D

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/aviary/android/feather/widget/CropImageView;->updateAspectRatio(DLcom/aviary/android/feather/widget/HighlightView;Z)V

    .line 414
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/CropImageView;->setHighlightView(Lcom/aviary/android/feather/widget/HighlightView;)V

    goto :goto_1
.end method
