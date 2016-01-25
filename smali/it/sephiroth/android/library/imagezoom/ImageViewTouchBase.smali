.class public abstract Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;,
        Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;
    }
.end annotation


# instance fields
.field protected final DEFAULT_ANIMATION_DURATION:I

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private mBitmapChanged:Z

.field protected mBitmapRect:Landroid/graphics/RectF;

.field private mCenter:Landroid/graphics/PointF;

.field protected mCenterRect:Landroid/graphics/RectF;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDrawableChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

.field protected mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

.field protected mHandler:Landroid/os/Handler;

.field protected mLayoutRunnable:Ljava/lang/Runnable;

.field protected final mMatrixValues:[F

.field private mMaxZoom:F

.field private mMaxZoomDefined:Z

.field private mMinZoom:F

.field private mMinZoomDefined:Z

.field protected mNextMatrix:Landroid/graphics/Matrix;

.field private mOnLayoutChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

.field protected mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

.field private mScaleTypeChanged:Z

.field protected mScrollRect:Landroid/graphics/RectF;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field private mThisHeight:I

.field private mThisWidth:I

.field protected mUserScaled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lit/sephiroth/android/library/imagezoom/easing/Cubic;

    invoke-direct {v0}, Lit/sephiroth/android/library/imagezoom/easing/Cubic;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    .line 78
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 79
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 86
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    .line 88
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 89
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    .line 92
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->NONE:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    .line 96
    const/16 v0, 0xc8

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->DEFAULT_ANIMATION_DURATION:I

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 426
    if-eqz p1, :cond_4

    .line 431
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :goto_0
    cmpl-float v0, p3, v2

    if-eqz v0, :cond_5

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_5

    .line 438
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 439
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 441
    iput p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 442
    iput p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 444
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    .line 445
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    .line 447
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne v0, v1, :cond_2

    .line 449
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    .line 450
    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    .line 451
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 454
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    .line 455
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    .line 456
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 467
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 468
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    .line 471
    :cond_3
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    .line 472
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    .line 473
    return-void

    .line 433
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 434
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 460
    :cond_5
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 461
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 463
    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    .line 464
    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    goto :goto_1
.end method

.method protected center(ZZ)V
    .locals 4
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/4 v3, 0x0

    .line 744
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 745
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v1

    .line 749
    .local v1, "rect":Landroid/graphics/RectF;
    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 754
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method protected computeMaxZoom()F
    .locals 6

    .prologue
    .line 517
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 519
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 520
    const/high16 v3, 0x3f800000    # 1.0f

    .line 530
    :goto_0
    return v3

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 524
    .local v2, "fw":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 525
    .local v1, "fh":F
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v3, v4, v5

    .line 530
    .local v3, "scale":F
    goto :goto_0
.end method

.method protected computeMinZoom()F
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 534
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 536
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    move v1, v2

    .line 547
    :goto_0
    return v1

    .line 540
    :cond_0
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    .line 541
    .local v1, "scale":F
    div-float v3, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 547
    goto :goto_0
.end method

.method protected fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 494
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDrawableChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDrawableChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    invoke-interface {v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 497
    :cond_0
    return-void
.end method

.method protected fireOnLayoutChangeListener(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;->onLayoutChanged(ZIIII)V

    .line 491
    :cond_0
    return-void
.end method

.method public getBitmapRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 716
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 718
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 722
    :goto_0
    return-object v2

    .line 719
    :cond_0
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 720
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 721
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 722
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method protected getCenter()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;
    .locals 12
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;
    .param p2, "horizontal"    # Z
    .param p3, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 759
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 761
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v10, v10, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 789
    :goto_0
    return-object v8

    .line 763
    :cond_0
    iget-object v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 764
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 765
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 766
    .local v3, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 767
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 768
    .local v1, "deltaY":F
    if-eqz p3, :cond_1

    .line 769
    iget v5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 770
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3

    .line 771
    int-to-float v8, v5

    sub-float/2addr v8, v3

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 778
    .end local v5    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 779
    iget v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 780
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 781
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 788
    .end local v6    # "viewWidth":I
    :cond_2
    :goto_2
    iget-object v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v0, v1, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 789
    iget-object v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 772
    .restart local v5    # "viewHeight":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 773
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 774
    goto :goto_1

    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 775
    iget v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 782
    .end local v5    # "viewHeight":I
    .restart local v6    # "viewWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 783
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 784
    goto :goto_2

    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 785
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method protected getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F
    .locals 2
    .param p1, "type"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 341
    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne p1, v1, :cond_0

    .line 349
    :goto_0
    return v0

    .line 344
    :cond_0
    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-ne p1, v1, :cond_1

    .line 346
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 349
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 625
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayType()Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    return-object v0
.end method

.method public getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "supportMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 584
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 585
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 586
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->computeMaxZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 559
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method public getMinScale()F
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->computeMinZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 571
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    return v0
.end method

.method protected getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 635
    iget v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v6, v9

    .line 636
    .local v6, "viewWidth":F
    iget v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v5, v9

    .line 642
    .local v5, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v7, v9

    .line 643
    .local v7, "w":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v0, v9

    .line 645
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 647
    cmpl-float v9, v7, v6

    if-gtz v9, :cond_0

    cmpl-float v9, v0, v5

    if-lez v9, :cond_1

    .line 648
    :cond_0
    div-float v8, v6, v7

    .line 649
    .local v8, "widthScale":F
    div-float v1, v5, v0

    .line 650
    .local v1, "heightScale":F
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 651
    .local v2, "scale":F
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 653
    mul-float v9, v7, v2

    sub-float v9, v6, v9

    div-float v4, v9, v10

    .line 654
    .local v4, "tw":F
    mul-float v9, v0, v2

    sub-float v9, v5, v9

    div-float v3, v9, v10

    .line 655
    .local v3, "th":F
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 671
    :goto_0
    return-void

    .line 658
    .end local v1    # "heightScale":F
    .end local v2    # "scale":F
    .end local v3    # "th":F
    .end local v4    # "tw":F
    .end local v8    # "widthScale":F
    :cond_1
    div-float v8, v6, v7

    .line 659
    .restart local v8    # "widthScale":F
    div-float v1, v5, v0

    .line 660
    .restart local v1    # "heightScale":F
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 661
    .restart local v2    # "scale":F
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 663
    mul-float v9, v7, v2

    sub-float v9, v6, v9

    div-float v4, v9, v10

    .line 664
    .restart local v4    # "tw":F
    mul-float v9, v0, v2

    sub-float v9, v5, v9

    div-float v3, v9, v10

    .line 665
    .restart local v3    # "th":F
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 700
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    return-void
.end method

.method protected onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->fireOnDrawableChangeListener(Landroid/graphics/drawable/Drawable;)V

    .line 485
    return-void
.end method

.method protected onImageMatrixChanged()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 187
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 189
    const/4 v5, 0x0

    .line 190
    .local v5, "deltaX":I
    const/4 v6, 0x0

    .line 192
    .local v6, "deltaY":I
    if-eqz p1, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 194
    .local v14, "oldw":I
    move-object/from16 v0, p0

    iget v13, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 196
    .local v13, "oldh":I
    sub-int v17, p4, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 197
    sub-int v17, p5, p3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    move/from16 v17, v0

    sub-int v5, v17, v14

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    move/from16 v17, v0

    sub-int v6, v17, v13

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenter:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 207
    .end local v13    # "oldh":I
    .end local v14    # "oldw":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 209
    .local v15, "r":Ljava/lang/Runnable;
    if-eqz v15, :cond_1

    .line 210
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 211
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    .line 214
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 216
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_12

    .line 218
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 220
    :cond_2
    const/high16 v16, 0x3f800000    # 1.0f

    .line 223
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v9

    .line 224
    .local v9, "old_default_scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v10

    .line 225
    .local v10, "old_matrix_scale":F
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v12

    .line 226
    .local v12, "old_scale":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 228
    .local v11, "old_min_scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v8

    .line 240
    .local v8, "new_matrix_scale":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 246
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 248
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mNextMatrix:Landroid/graphics/Matrix;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v16

    .line 255
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v17

    cmpl-float v17, v16, v17

    if-eqz v17, :cond_4

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    .line 291
    :cond_4
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    .line 293
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v17

    cmpl-float v17, v16, v17

    if-gtz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v17

    cmpg-float v17, v16, v17

    if-gez v17, :cond_6

    .line 296
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    .line 299
    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_7
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onLayoutChanged(IIII)V

    .line 304
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    .line 305
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    .line 320
    .end local v8    # "new_matrix_scale":F
    .end local v9    # "old_default_scale":F
    .end local v10    # "old_matrix_scale":F
    .end local v11    # "old_min_scale":F
    .end local v12    # "old_scale":F
    .end local v16    # "scale":F
    :cond_b
    :goto_2
    return-void

    .line 251
    .restart local v8    # "new_matrix_scale":F
    .restart local v9    # "old_default_scale":F
    .restart local v10    # "old_matrix_scale":F
    .restart local v11    # "old_min_scale":F
    .restart local v12    # "old_scale":F
    .restart local v16    # "scale":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v16

    goto/16 :goto_0

    .line 261
    :cond_d
    if-eqz p1, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoomDefined:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 266
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoomDefined:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 268
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 269
    neg-int v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    neg-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    .line 272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDefaultScale(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)F

    move-result v16

    .line 274
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    goto/16 :goto_1

    .line 276
    :cond_10
    sub-float v17, v12, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v17, v17, v19

    if-lez v17, :cond_11

    .line 277
    div-float v17, v10, v8

    mul-float v16, v17, v12

    .line 279
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    goto/16 :goto_1

    .line 313
    .end local v8    # "new_matrix_scale":F
    .end local v9    # "old_default_scale":F
    .end local v10    # "old_matrix_scale":F
    .end local v11    # "old_min_scale":F
    .end local v12    # "old_scale":F
    .end local v16    # "scale":F
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_13
    if-nez p1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onLayoutChanged(IIII)V

    .line 316
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapChanged:Z

    .line 317
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    goto/16 :goto_2
.end method

.method protected onLayoutChanged(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->fireOnLayoutChangeListener(IIII)V

    .line 514
    return-void
.end method

.method protected onZoom(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 845
    return-void
.end method

.method protected onZoomAnimationCompleted(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 847
    return-void
.end method

.method protected panBy(DD)V
    .locals 6
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 860
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 861
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    double-to-float v2, p1

    double-to-float v3, p3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 862
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 863
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    .line 864
    invoke-virtual {p0, v5, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 865
    return-void
.end method

.method protected postScale(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 806
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 807
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 808
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v1, 0x0

    .line 793
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 798
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 800
    :cond_1
    return-void
.end method

.method public resetMatrix()V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 336
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 337
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postInvalidate()V

    .line 338
    return-void
.end method

.method public scrollBy(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 856
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    .line 857
    return-void
.end method

.method protected scrollBy(FFD)V
    .locals 11
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "durationMs"    # D

    .prologue
    .line 880
    float-to-double v6, p1

    .line 881
    .local v6, "dx":D
    float-to-double v8, p2

    .line 882
    .local v8, "dy":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 883
    .local v4, "startTime":J
    iget-object v10, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v9}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    return-void
.end method

.method public setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V
    .locals 1
    .param p1, "type"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    .prologue
    .line 150
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    if-eq p1, v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mUserScaled:Z

    .line 155
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleType:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScaleTypeChanged:Z

    .line 157
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    .line 159
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 368
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    new-instance v0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 388
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "initial_matrix"    # Landroid/graphics/Matrix;
    .param p3, "min_zoom"    # F
    .param p4, "max_zoom"    # F

    .prologue
    .line 405
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 407
    .local v6, "viewWidth":I
    if-gtz v6, :cond_0

    .line 408
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->_setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 592
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 593
    .local v0, "current":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    .line 595
    .local v1, "needUpdate":Z
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    :cond_1
    const/4 v1, 0x1

    .line 599
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 601
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onImageMatrixChanged()V

    .line 602
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 355
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    return-void
.end method

.method protected setMaxScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 177
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 178
    return-void
.end method

.method protected setMinScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 170
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 171
    return-void
.end method

.method public setOnDrawableChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    .prologue
    .line 119
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDrawableChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;

    .line 120
    return-void
.end method

.method public setOnLayoutChangeListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    .prologue
    .line 123
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutChangeListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnLayoutChangeListener;

    .line 124
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 132
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 133
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string/jumbo v0, "ImageViewTouchBase"

    const-string/jumbo v1, "Unsupported scaletype. Only MATRIX can be used"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bitmapRect"    # Landroid/graphics/RectF;
    .param p2, "scrollRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 868
    if-nez p1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 871
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 872
    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 873
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 874
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 875
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 876
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0
.end method

.method protected zoomTo(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 815
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 816
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result p1

    .line 818
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 819
    .local v0, "center":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 820
    return-void
.end method

.method public zoomTo(FF)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "durationMs"    # F

    .prologue
    .line 831
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 832
    .local v0, "center":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v2, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    .line 833
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 836
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 838
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 839
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 840
    .local v0, "deltaScale":F
    invoke-virtual {p0, v0, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postScale(FFF)V

    .line 841
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 842
    invoke-virtual {p0, v3, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 843
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 12
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 908
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 910
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 911
    .local v3, "startTime":J
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 913
    .local v6, "oldScale":F
    sub-float v5, p1, v6

    .line 915
    .local v5, "deltaScale":F
    new-instance v9, Landroid/graphics/Matrix;

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 916
    .local v9, "m":Landroid/graphics/Matrix;
    invoke-virtual {v9, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 917
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v10

    .line 919
    .local v10, "rect":Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    add-float v7, p2, v0

    .line 920
    .local v7, "destX":F
    iget v0, v10, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    add-float v8, p3, v0

    .line 922
    .local v8, "destY":F
    iget-object v11, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;

    move-object v1, p0

    move/from16 v2, p4

    invoke-direct/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 938
    return-void
.end method
