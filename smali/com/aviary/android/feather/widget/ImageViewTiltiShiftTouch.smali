.class public Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.source "ImageViewTiltiShiftTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;,
        Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;,
        Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;
    }
.end annotation


# static fields
.field private static BRUSH_MULTIPLIER:F


# instance fields
.field firstLine:Lcom/aviary/android/feather/library/graphics/LineF;

.field mActivePointerId:I

.field mActivePointerIndex:I

.field mBackColor:I

.field protected mBackPaintAlpha:I

.field protected mBackPaintAlphaDefault:I

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mBitmapRectSideLength:F

.field private mCenterMatrix:Landroid/graphics/Matrix;

.field private mCenterPoint:Landroid/graphics/PointF;

.field protected mCrossEnabled:Z

.field protected mCrossPaint:Landroid/graphics/Paint;

.field private mCrossPath:Landroid/graphics/Path;

.field private mCurrentAngle:F

.field private mCurrentDistance:F

.field protected mCurrentScale:F

.field private mDefaultShapeSize:I

.field private mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

.field private mDrawingCircle:Lcom/aviary/android/feather/library/graphics/CircleF;

.field private mDrawingMatrix:Landroid/graphics/Matrix;

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mDrawingRectLength:F

.field private mFadeOut:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;

.field protected mFadeOutDuration:I

.field protected mFadeOutTimeout:I

.field private mFirstPointOriginal:Landroid/graphics/PointF;

.field mForeColor:I

.field protected mIdentityMatrix:Landroid/graphics/Matrix;

.field private mInitializedTouch:Z

.field protected mInvertedMatrix:Landroid/graphics/Matrix;

.field private mManager:Lcom/aviary/android/feather/library/utils/EasingManager;

.field private mMaxShapeSize:I

.field private mMinShapeSize:I

.field private mMinShapeSizePixels:F

.field mOldAngle:F

.field mOldCenter:Landroid/graphics/PointF;

.field mOldDistance:F

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPaintAlpha:I

.field protected mPaintAlphaDefault:I

.field private mPath:Landroid/graphics/Path;

.field private mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

.field private mPointCloudEnabled:Z

.field private mPointCloudOuterRadius:F

.field private mPointCluodInnerRadius:F

.field private mPointWaveDuration:I

.field private mPoints:[F

.field private mSecondPointOriginal:Landroid/graphics/PointF;

.field private mShapeRect:Landroid/graphics/RectF;

.field private mShapeRectInverted:Landroid/graphics/RectF;

.field private mThisRectF:Landroid/graphics/RectF;

.field private mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

.field secondLine:Lcom/aviary/android/feather/library/graphics/LineF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/high16 v0, 0x40200000    # 2.5f

    sput v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->BRUSH_MULTIPLIER:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryTiltShiftViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mForeColor:I

    .line 63
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackColor:I

    .line 74
    iput v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlpha:I

    .line 75
    const/16 v0, 0x50

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlpha:I

    .line 77
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlpha:I

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlphaDefault:I

    .line 78
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlpha:I

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlphaDefault:I

    .line 80
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutTimeout:I

    .line 82
    iput v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutDuration:I

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentScale:F

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mIdentityMatrix:Landroid/graphics/Matrix;

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInvertedMatrix:Landroid/graphics/Matrix;

    .line 116
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldCenter:Landroid/graphics/PointF;

    .line 117
    iput v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldDistance:F

    .line 118
    iput v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldAngle:F

    .line 123
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->None:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    .line 130
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    .line 150
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    .line 432
    new-instance v0, Lcom/aviary/android/feather/library/graphics/LineF;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/aviary/android/feather/library/graphics/LineF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->firstLine:Lcom/aviary/android/feather/library/graphics/LineF;

    .line 433
    new-instance v0, Lcom/aviary/android/feather/library/graphics/LineF;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/aviary/android/feather/library/graphics/LineF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->secondLine:Lcom/aviary/android/feather/library/graphics/LineF;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)Lcom/aviary/android/feather/widget/PointCloud;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    return-object v0
.end method

.method private checkLimits()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 737
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    iget v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRectSideLength:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMaxShapeSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 742
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRectSideLength:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMaxShapeSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 748
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 751
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 752
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 749
    :cond_4
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 753
    :cond_5
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public static getMatrixValues(Landroid/graphics/Matrix;)[F
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 759
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 760
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 761
    return-object v0
.end method

.method private initializeTouch(FFFF)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInitializedTouch:Z

    .line 368
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    .line 369
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    .line 371
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/graphics/Point2D;->getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    .line 372
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    .line 373
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    .line 375
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    iget-object v1, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    sget-object v2, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Circle:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setType(Lcom/aviary/android/feather/widget/PointCloud$WaveType;)V

    .line 377
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/PointCloud;->setCenter(FF)V

    .line 379
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    iget v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/PointCloud;->setRotation(F)V

    .line 381
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    div-double/2addr v0, v2

    double-to-float v10, v0

    .line 383
    .local v10, "inner":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mManager:Lcom/aviary/android/feather/library/utils/EasingManager;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/utils/EasingManager;->stop()V

    .line 384
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mManager:Lcom/aviary/android/feather/library/utils/EasingManager;

    const-class v1, Lit/sephiroth/android/library/imagezoom/easing/Quad;

    sget-object v2, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    float-to-double v3, v10

    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudOuterRadius:F

    const/high16 v6, 0x42c80000    # 100.0f

    add-float/2addr v5, v6

    float-to-double v5, v5

    iget v7, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointWaveDuration:I

    const-wide/16 v8, 0x64

    invoke-virtual/range {v0 .. v9}, Lcom/aviary/android/feather/library/utils/EasingManager;->start(Ljava/lang/Class;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;DDIJ)V

    .line 386
    .end local v10    # "inner":F
    :cond_0
    return-void

    .line 376
    :cond_1
    sget-object v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Line:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    goto :goto_0
.end method

.method private resetWave(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    iget v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCluodInnerRadius:F

    iget v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudOuterRadius:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/aviary/android/feather/widget/PointCloud;->makePointCloud(FFLandroid/graphics/RectF;)V

    .line 317
    :cond_0
    return-void
.end method

.method private touch_down()V
    .locals 0

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->fadeInShape()V

    .line 486
    return-void
.end method

.method private touch_move(Landroid/graphics/PointF;FFZ)V
    .locals 14
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "distance"    # F
    .param p3, "angle"    # F
    .param p4, "first_time"    # Z

    .prologue
    .line 490
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 494
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterMatrix:Landroid/graphics/Matrix;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 496
    const/high16 v1, 0x40000000    # 2.0f

    div-float v13, p2, v1

    .line 498
    .local v13, "radius":F
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    if-ne v1, v3, :cond_3

    .line 500
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingCircle:Lcom/aviary/android/feather/library/graphics/CircleF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4, v13}, Lcom/aviary/android/feather/library/graphics/CircleF;->set(FFF)V

    .line 501
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingCircle:Lcom/aviary/android/feather/library/graphics/CircleF;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/graphics/CircleF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingCircle:Lcom/aviary/android/feather/library/graphics/CircleF;

    invoke-virtual {v4}, Lcom/aviary/android/feather/library/graphics/CircleF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingCircle:Lcom/aviary/android/feather/library/graphics/CircleF;

    invoke-virtual {v5}, Lcom/aviary/android/feather/library/graphics/CircleF;->getRadius()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 504
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sget v4, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->BRUSH_MULTIPLIER:F

    mul-float/2addr v4, v13

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sget v5, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->BRUSH_MULTIPLIER:F

    mul-float/2addr v5, v13

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->x:F

    sget v6, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->BRUSH_MULTIPLIER:F

    mul-float/2addr v6, v13

    add-float/2addr v5, v6

    iget v6, p1, Landroid/graphics/PointF;->y:F

    sget v7, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->BRUSH_MULTIPLIER:F

    mul-float/2addr v7, v13

    add-float/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 571
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

    if-eqz v1, :cond_0

    .line 572
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 573
    .local v2, "mappedPoints":[F
    const/4 v1, 0x0

    iget v3, p1, Landroid/graphics/PointF;->x:F

    aput v3, v2, v1

    .line 574
    const/4 v1, 0x1

    iget v3, p1, Landroid/graphics/PointF;->y:F

    aput v3, v2, v1

    .line 575
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 576
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInvertedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 578
    if-eqz p4, :cond_9

    .line 579
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    iget v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentScale:F

    div-float v4, v13, v4

    move/from16 v0, p3

    neg-float v5, v0

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-interface/range {v1 .. v9}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;->onDrawStart([FLcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;FFFFFF)V

    goto/16 :goto_0

    .line 507
    .end local v2    # "mappedPoints":[F
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Linear:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    if-ne v1, v3, :cond_2

    .line 509
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    move/from16 v0, p3

    invoke-virtual {v1, v0, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 511
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v13

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRectLength:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v13

    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRectLength:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 513
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->sort()V

    .line 515
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v1, v3

    .line 516
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v1, v3

    .line 517
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    aput v4, v1, v3

    .line 518
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v1, v3

    .line 519
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    aput v4, v1, v3

    .line 520
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v1, v3

    .line 521
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    aput v4, v1, v3

    .line 522
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    aput v4, v1, v3

    .line 524
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 526
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->firstLine:Lcom/aviary/android/feather/library/graphics/LineF;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/LineF;->reset()V

    .line 527
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->secondLine:Lcom/aviary/android/feather/library/graphics/LineF;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/graphics/LineF;->reset()V

    .line 528
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->firstLine:Lcom/aviary/android/feather/library/graphics/LineF;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/aviary/android/feather/library/graphics/LineF;->set(FFFF)V

    .line 529
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->secondLine:Lcom/aviary/android/feather/library/graphics/LineF;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    iget-object v6, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPoints:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/aviary/android/feather/library/graphics/LineF;->set(FFFF)V

    .line 531
    const/4 v11, 0x0

    .line 532
    .local v11, "r1":Landroid/graphics/RectF;
    const/4 v12, 0x0

    .line 534
    .local v12, "r2":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->firstLine:Lcom/aviary/android/feather/library/graphics/LineF;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mThisRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/library/graphics/LineF;->intersect(Landroid/graphics/RectF;)[Landroid/graphics/PointF;

    move-result-object v10

    .line 535
    .local v10, "intersection":[Landroid/graphics/PointF;
    if-eqz v10, :cond_4

    array-length v1, v10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 536
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aget-object v4, v10, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 537
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x1

    aget-object v4, v10, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    new-instance v11, Landroid/graphics/RectF;

    .end local v11    # "r1":Landroid/graphics/RectF;
    const/4 v1, 0x0

    aget-object v1, v10, v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget-object v3, v10, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x1

    aget-object v4, v10, v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x1

    aget-object v5, v10, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 540
    .restart local v11    # "r1":Landroid/graphics/RectF;
    invoke-virtual {v11}, Landroid/graphics/RectF;->sort()V

    .line 543
    :cond_4
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->secondLine:Lcom/aviary/android/feather/library/graphics/LineF;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mThisRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/library/graphics/LineF;->intersect(Landroid/graphics/RectF;)[Landroid/graphics/PointF;

    move-result-object v10

    .line 544
    if-eqz v10, :cond_5

    array-length v1, v10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 545
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aget-object v4, v10, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 546
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x1

    aget-object v4, v10, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 548
    new-instance v12, Landroid/graphics/RectF;

    .end local v12    # "r2":Landroid/graphics/RectF;
    const/4 v1, 0x0

    aget-object v1, v10, v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget-object v3, v10, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x1

    aget-object v4, v10, v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x1

    aget-object v5, v10, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v12, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 549
    .restart local v12    # "r2":Landroid/graphics/RectF;
    invoke-virtual {v12}, Landroid/graphics/RectF;->sort()V

    .line 551
    if-eqz v11, :cond_7

    .line 552
    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 553
    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v3, v11, Landroid/graphics/RectF;->top:F

    iget v4, v12, Landroid/graphics/RectF;->right:F

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 554
    invoke-virtual {v11}, Landroid/graphics/RectF;->sort()V

    .line 563
    :cond_5
    :goto_2
    if-eqz v11, :cond_8

    .line 564
    sget v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->BRUSH_MULTIPLIER:F

    mul-float/2addr v1, v13

    sget v3, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->BRUSH_MULTIPLIER:F

    mul-float/2addr v3, v13

    invoke-static {v11, v1, v3}, Lcom/aviary/android/feather/library/graphics/Point2D;->grow(Landroid/graphics/RectF;FF)V

    .line 565
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 556
    :cond_6
    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 559
    :cond_7
    move-object v11, v12

    goto :goto_2

    .line 567
    :cond_8
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 582
    .end local v10    # "intersection":[Landroid/graphics/PointF;
    .end local v11    # "r1":Landroid/graphics/RectF;
    .end local v12    # "r2":Landroid/graphics/RectF;
    .restart local v2    # "mappedPoints":[F
    :cond_9
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentScale:F

    div-float v3, v13, v3

    move/from16 v0, p3

    neg-float v4, v0

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-interface/range {v1 .. v8}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;->onDrawing([FFFFFFF)V

    goto/16 :goto_0
.end method

.method private touch_up()V
    .locals 3

    .prologue
    .line 589
    iget v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutTimeout:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->fadeOutShape(J)V

    .line 591
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 592
    const-string/jumbo v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "center: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;->onDrawEnd()V

    .line 598
    :cond_1
    return-void
.end method

.method private updateBitmapRect()V
    .locals 27

    .prologue
    .line 778
    const/4 v13, 0x0

    .line 780
    .local v13, "rect_changed":Z
    new-instance v7, Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 781
    .local v7, "m1":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInvertedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Matrix;->reset()V

    .line 783
    invoke-static {v7}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v19

    .line 784
    .local v19, "v1":[F
    invoke-virtual {v7, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 785
    invoke-static {v7}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v20

    .line 787
    .local v20, "v2":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInvertedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v22, v19, v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x5

    aget v23, v19, v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInvertedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v20, v22

    const/16 v23, 0x4

    aget v23, v20, v23

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getScale()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentScale:F

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v12

    .line 794
    .local v12, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    if-nez v12, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    :cond_1
    const/4 v13, 0x1

    .line 796
    :goto_0
    if-eqz v12, :cond_7

    .line 798
    const/16 v18, 0x0

    .line 800
    .local v18, "update":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/aviary/android/feather/library/graphics/Point2D;->hypotenuse(Landroid/graphics/RectF;)D

    move-result-wide v14

    .line 802
    .local v14, "size1":D
    invoke-static {v12}, Lcom/aviary/android/feather/library/graphics/Point2D;->hypotenuse(Landroid/graphics/RectF;)D

    move-result-wide v16

    .line 804
    .local v16, "size2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->left:F

    .line 805
    .local v9, "old_left":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/RectF;->top:F

    .line 807
    .local v10, "old_top":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v11

    .line 808
    .local v11, "old_width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 810
    .local v8, "old_height":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v21

    div-float v6, v21, v11

    .line 811
    .local v6, "diff_w":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v21

    div-float v5, v21, v8

    .line 813
    .local v5, "diff_h":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    const/16 v18, 0x1

    .line 815
    :goto_1
    if-eqz v18, :cond_2

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v23, v16, v14

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    neg-float v0, v9

    move/from16 v22, v0

    neg-float v0, v10

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->offset(FF)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v22, v22, v5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 826
    .end local v5    # "diff_h":F
    .end local v6    # "diff_w":F
    .end local v8    # "old_height":F
    .end local v9    # "old_left":F
    .end local v10    # "old_top":F
    .end local v11    # "old_width":F
    .end local v14    # "size1":D
    .end local v16    # "size2":D
    :cond_2
    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRectSideLength:F

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRectLength:F

    .line 831
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRectSideLength:F

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRectLength:F

    .line 833
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRectSideLength:F

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    .line 835
    if-eqz v18, :cond_3

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_down()V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_move(Landroid/graphics/PointF;FFZ)V

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_up()V

    .line 844
    .end local v18    # "update":Z
    :cond_3
    :goto_2
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->resetWave(Landroid/graphics/RectF;)V

    .line 847
    :cond_4
    return-void

    .line 794
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 813
    .restart local v5    # "diff_h":F
    .restart local v6    # "diff_w":F
    .restart local v8    # "old_height":F
    .restart local v9    # "old_left":F
    .restart local v10    # "old_top":F
    .restart local v11    # "old_width":F
    .restart local v14    # "size1":D
    .restart local v16    # "size2":D
    .restart local v18    # "update":Z
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 841
    .end local v5    # "diff_h":F
    .end local v6    # "diff_w":F
    .end local v8    # "old_height":F
    .end local v9    # "old_left":F
    .end local v10    # "old_top":F
    .end local v11    # "old_width":F
    .end local v14    # "size1":D
    .end local v16    # "size2":D
    .end local v18    # "update":Z
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    goto :goto_2
.end method


# virtual methods
.method protected fadeInShape()V
    .locals 2

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 866
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 867
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOut:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 868
    iget v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlphaDefault:I

    iput v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlpha:I

    .line 869
    iget v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlphaDefault:I

    iput v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlpha:I

    .line 870
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    .line 872
    :cond_0
    return-void
.end method

.method protected fadeOutShape(J)V
    .locals 2
    .param p1, "timeout"    # J

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 854
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 855
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOut:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 856
    new-instance v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;-><init>(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOut:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;

    .line 857
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOut:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    :cond_0
    return-void
.end method

.method public getImageRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 427
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTiltShiftDrawMode()Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 175
    invoke-super/range {p0 .. p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    .line 178
    .local v18, "theme":Landroid/content/res/Resources$Theme;
    sget-object v19, Lcom/aviary/android/feather/R$styleable;->AviaryTiltShiftImageView:[I

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 180
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0x9

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 181
    .local v11, "fadeTimeout":I
    const/16 v19, 0xa

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 182
    .local v10, "fadeDuration":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 183
    .local v15, "strokeColor":I
    const/16 v19, 0x8

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .line 184
    .local v16, "strokeColor2":I
    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 185
    .local v17, "strokeWidth":I
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 186
    .local v14, "pointDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x3

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 187
    .local v12, "maxSize":I
    const/16 v19, 0x2

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 188
    .local v13, "minSize":I
    const/16 v19, 0x4

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 189
    .local v9, "defaultSize":I
    const/16 v19, 0x7

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 190
    .local v6, "crossEdge":I
    const/16 v19, 0x6

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 191
    .local v7, "crossRadius":I
    const/16 v19, 0x5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 193
    .local v8, "crossStrokeWidth":I
    const/16 v19, 0xe

    const/16 v20, 0x7d0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointWaveDuration:I

    .line 194
    const/16 v19, 0xc

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCluodInnerRadius:F

    .line 195
    const/16 v19, 0xd

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudOuterRadius:F

    .line 196
    const/16 v19, 0xf

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossEnabled:Z

    .line 197
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    .line 199
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    move-object/from16 v0, p0

    iput v13, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSize:I

    .line 202
    move-object/from16 v0, p0

    iput v12, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMaxShapeSize:I

    .line 204
    move-object/from16 v0, p0

    iput v9, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDefaultShapeSize:I

    .line 206
    move-object/from16 v0, p0

    iput v15, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mForeColor:I

    .line 207
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackColor:I

    .line 209
    new-instance v19, Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setDither(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mForeColor:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlphaDefault:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    new-instance v19, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mForeColor:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setFadeoutTimeout(I)V

    .line 223
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setFadeoutDuration(I)V

    .line 225
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    .line 226
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    .line 228
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingRect:Landroid/graphics/RectF;

    .line 229
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingMatrix:Landroid/graphics/Matrix;

    .line 230
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterMatrix:Landroid/graphics/Matrix;

    .line 232
    new-instance v19, Lcom/aviary/android/feather/library/graphics/CircleF;

    invoke-direct/range {v19 .. v19}, Lcom/aviary/android/feather/library/graphics/CircleF;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawingCircle:Lcom/aviary/android/feather/library/graphics/CircleF;

    .line 234
    new-instance v19, Landroid/graphics/PointF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    .line 235
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRect:Landroid/graphics/RectF;

    .line 236
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mThisRectF:Landroid/graphics/RectF;

    .line 238
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mShapeRectInverted:Landroid/graphics/RectF;

    .line 240
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInitializedTouch:Z

    .line 242
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setCrossHairSize(II)V

    .line 244
    if-eqz v14, :cond_0

    .line 245
    new-instance v19, Lcom/aviary/android/feather/widget/PointCloud;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Lcom/aviary/android/feather/widget/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCluodInnerRadius:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setRadius(F)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->setAlpha(F)V

    .line 250
    :cond_0
    new-instance v19, Lcom/aviary/android/feather/library/utils/EasingManager;

    new-instance v20, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;

    invoke-direct/range {v20 .. v21}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$1;-><init>(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)V

    invoke-direct/range {v19 .. v20}, Lcom/aviary/android/feather/library/utils/EasingManager;-><init>(Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mManager:Lcom/aviary/android/feather/library/utils/EasingManager;

    .line 278
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 437
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDraw(Landroid/graphics/Canvas;)V

    .line 439
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->None:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    if-eq v2, v3, :cond_0

    .line 443
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 446
    .local v1, "strokeWidth":F
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 447
    .local v0, "count":I
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 449
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossEnabled:Z

    if-eqz v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    mul-float v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 453
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 455
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 456
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mForeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 458
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 461
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 464
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 466
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    mul-float v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 467
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 469
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 471
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 472
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mForeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    invoke-virtual {v2, p1}, Lcom/aviary/android/feather/widget/PointCloud;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onDrawModeChanged()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 390
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInitializedTouch:Z

    .line 391
    iput-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    .line 392
    iput-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    .line 395
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_up()V

    .line 398
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->updateBitmapRect()V

    .line 400
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 403
    .local v1, "x":F
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 404
    .local v2, "y":F
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    mul-float v0, v3, v4

    .line 406
    .local v0, "size":F
    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDefaultShapeSize:I

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 408
    div-float v3, v0, v5

    sub-float v3, v2, v3

    div-float v4, v0, v5

    add-float/2addr v4, v2

    invoke-direct {p0, v1, v3, v1, v4}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->initializeTouch(FFFF)V

    .line 411
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_down()V

    .line 414
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    iget v4, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_move(Landroid/graphics/PointF;FFZ)V

    .line 417
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_up()V

    .line 420
    .end local v0    # "size":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    .line 421
    return-void
.end method

.method protected onImageMatrixChanged()V
    .locals 0

    .prologue
    .line 766
    invoke-super {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onImageMatrixChanged()V

    .line 767
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->updateBitmapRect()V

    .line 768
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 772
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onSizeChanged(IIII)V

    .line 773
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mThisRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 774
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 604
    .local v5, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 609
    .local v14, "pointerCount":I
    and-int/lit16 v0, v5, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 731
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    .line 732
    const/16 v21, 0x1

    return v21

    .line 614
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_down()V

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 617
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 619
    .local v19, "y":F
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerIndex:I

    .line 620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerId:I

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v21, v17, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v22, v19, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v23, v23, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v24, v24, v19

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->initializeTouch(FFFF)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_move(Landroid/graphics/PointF;FFZ)V

    goto/16 :goto_0

    .line 627
    :cond_1
    new-instance v21, Landroid/graphics/PointF;

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_move(Landroid/graphics/PointF;FFZ)V

    goto/16 :goto_0

    .line 635
    .end local v17    # "x":F
    .end local v19    # "y":F
    :pswitch_2
    const v21, 0xff00

    and-int v21, v21, v5

    shr-int/lit8 v16, v21, 0x8

    .line 637
    .local v16, "pointerIndex":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInitializedTouch:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 640
    .restart local v17    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 642
    .restart local v19    # "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerIndex:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 643
    .local v18, "x1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerIndex:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 645
    .local v20, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldDistance:F

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43340000    # 180.0f

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldAngle:F

    .line 650
    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldCenter:Landroid/graphics/PointF;

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldCenter:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    invoke-static/range {v21 .. v24}, Lcom/aviary/android/feather/library/graphics/Point2D;->getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    goto/16 :goto_0

    .line 642
    .end local v18    # "x1":F
    .end local v20    # "y1":F
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 643
    .restart local v18    # "x1":F
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 660
    .end local v16    # "pointerIndex":I
    .end local v17    # "x":F
    .end local v18    # "x1":F
    .end local v19    # "y":F
    :pswitch_3
    const v21, 0xff00

    and-int v21, v21, v5

    shr-int/lit8 v16, v21, 0x8

    .line 661
    .restart local v16    # "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 663
    .local v15, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerId:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInitializedTouch:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 666
    if-nez v16, :cond_4

    const/4 v13, 0x1

    .line 667
    .local v13, "newPointerIndex":I
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 668
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 669
    .restart local v19    # "y":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerId:I

    .line 670
    move-object/from16 v0, p0

    iput v13, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerIndex:I

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 666
    .end local v13    # "newPointerIndex":I
    .end local v17    # "x":F
    .end local v19    # "y":F
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 677
    .end local v15    # "pointerId":I
    .end local v16    # "pointerIndex":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 679
    .restart local v16    # "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 680
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 682
    .restart local v19    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v11, v17, v21

    .line 683
    .local v11, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v12, v19, v21

    .line 684
    .local v12, "dy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 686
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v14, v0, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mInitializedTouch:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 687
    if-nez v16, :cond_5

    const/4 v13, 0x1

    .line 688
    .restart local v13    # "newPointerIndex":I
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 689
    .restart local v18    # "x1":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 694
    .restart local v20    # "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 697
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .line 698
    .local v8, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v8}, Lcom/aviary/android/feather/library/graphics/Point2D;->getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v9, v0

    .line 701
    .local v9, "dist":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFirstPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mSecondPointOriginal:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43340000    # 180.0f

    add-float v6, v21, v22

    .line 702
    .local v6, "angle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldDistance:F

    move/from16 v21, v0

    sub-float v10, v9, v21

    .line 703
    .local v10, "distDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldAngle:F

    move/from16 v21, v0

    sub-float v7, v6, v21

    .line 706
    .local v7, "angleDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mMinShapeSizePixels:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    move/from16 v22, v0

    add-float v22, v22, v10

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    move/from16 v21, v0

    add-float v21, v21, v7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldCenter:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldCenter:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->offset(FF)V

    .line 712
    move-object/from16 v0, p0

    iput v9, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldDistance:F

    .line 713
    move-object/from16 v0, p0

    iput v6, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldAngle:F

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mOldCenter:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->set(FF)V

    .line 720
    .end local v6    # "angle":F
    .end local v7    # "angleDiff":F
    .end local v8    # "center":Landroid/graphics/PointF;
    .end local v9    # "dist":F
    .end local v10    # "distDiff":F
    .end local v13    # "newPointerIndex":I
    .end local v18    # "x1":F
    .end local v20    # "y1":F
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->checkLimits()V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentDistance:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCurrentAngle:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_move(Landroid/graphics/PointF;FFZ)V

    goto/16 :goto_0

    .line 687
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 717
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCenterPoint:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v12}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_5

    .line 727
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    .end local v16    # "pointerIndex":I
    .end local v17    # "x":F
    .end local v19    # "y":F
    :pswitch_5
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mActivePointerId:I

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->touch_up()V

    goto/16 :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCrossHairSize(II)V
    .locals 4
    .param p1, "cross_radius"    # I
    .param p2, "cross_edge"    # I

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 328
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossEnabled:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    int-to-float v1, p1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 331
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 332
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    neg-int v1, p1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    int-to-float v1, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 335
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    add-int v1, p1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 337
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 338
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    neg-int v1, p1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    int-to-float v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 341
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mCrossPath:Landroid/graphics/Path;

    add-int v1, p1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 343
    :cond_0
    return-void
.end method

.method public setFadeoutDuration(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutDuration:I

    .line 351
    return-void
.end method

.method public setFadeoutTimeout(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutTimeout:I

    .line 347
    return-void
.end method

.method public setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;

    .line 171
    return-void
.end method

.method public setPointWaveEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloud:Lcom/aviary/android/feather/widget/PointCloud;

    if-eqz v0, :cond_0

    .line 282
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPointCloudEnabled:Z

    .line 284
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBitmapRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->resetWave(Landroid/graphics/RectF;)V

    .line 288
    :cond_0
    return-void
.end method

.method public setTiltShiftDrawMode(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mTiltShiftDrawMode:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    .line 356
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->onDrawModeChanged()V

    .line 359
    :cond_0
    return-void
.end method
