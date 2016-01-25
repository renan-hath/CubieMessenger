.class public Lcom/aviary/android/feather/widget/AdjustImageView;
.super Landroid/view/View;
.source "AdjustImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;,
        Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;,
        Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;
    }
.end annotation


# static fields
.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;


# instance fields
.field ax:F

.field ay:F

.field bx:F

.field by:F

.field currentGrowth:F

.field cx:F

.field cy:F

.field dx:F

.field dy:F

.field firstDraw:Z

.field final grid_cols:I

.field final grid_rows:I

.field handleHeight:I

.field handleWidth:I

.field imageCaptureRegion:Landroid/graphics/RectF;

.field initStraighten:Z

.field initTool:Z

.field intersectPaint:Landroid/graphics/Paint;

.field intersectPoints:Z

.field intersectx:F

.field intersecty:F

.field isReset:Z

.field mActivePointerId:I

.field mActivePointerIndex:I

.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field mAnimationDuration:J

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mCameraEnabled:Z

.field private mCenter:Landroid/graphics/PointF;

.field mClipPath:Landroid/graphics/Path;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field protected mCurrentScale:F

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field mDrawRect:Landroid/graphics/RectF;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

.field private mEnableFreeRotate:Z

.field mFadeHandler:Landroid/os/Handler;

.field mFadeHandlerStarted:Z

.field private mFlipMatrix:Landroid/graphics/Matrix;

.field protected mFlipType:I

.field protected mHandler:Landroid/os/Handler;

.field private mHaveFrame:Z

.field mInversePath:Landroid/graphics/Path;

.field private mIsInStraighten:Z

.field private mLastTouchX:F

.field private mLevel:I

.field mLinesAlpha:I

.field mLinesPaint:Landroid/graphics/Paint;

.field mLinesPath:Landroid/graphics/Path;

.field private mMatrix:Landroid/graphics/Matrix;

.field protected final mMatrixValues:[F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field mOutlineFill:Landroid/graphics/Paint;

.field mOutlineFillAlpha:I

.field mOutlinePaint:Landroid/graphics/Paint;

.field mOutlinePaintAlpha:I

.field private mPosX:F

.field mResetAnimationDuration:J

.field private mResetListener:Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;

.field private mResource:I

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field protected mRotation:D

.field protected mRunning:Z

.field private mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

.field private mState:[I

.field mStraightenDrawable:Landroid/graphics/drawable/Drawable;

.field mStraightenMatrix:Landroid/graphics/Matrix;

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field mViewDrawRect:Landroid/graphics/Rect;

.field mViewInvertRect:Landroid/graphics/RectF;

.field orientation:I

.field portrait:Z

.field prevGrowth:D

.field previousAngle:D

.field previousPosition:I

.field previousStraightenAngle:D

.field final straightenDuration:I

.field straightenStarted:Z

.field testStraighten:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1118
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix$ScaleToFit;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aviary/android/feather/widget/AdjustImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryAdjustImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    .line 57
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAdjustViewBounds:Z

    .line 59
    const v0, 0x7fffffff

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMaxWidth:I

    .line 61
    const v0, 0x7fffffff

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMaxHeight:I

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAlpha:I

    .line 67
    const/16 v0, 0x100

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewAlphaScale:I

    .line 69
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorMod:Z

    .line 71
    iput-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mState:[I

    .line 75
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMergeState:Z

    .line 77
    iput v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLevel:I

    .line 83
    iput-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 89
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempDst:Landroid/graphics/RectF;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaseline:I

    .line 97
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaselineAlignBottom:Z

    .line 101
    new-instance v0, Lit/sephiroth/android/library/imagezoom/easing/Expo;

    invoke-direct {v0}, Lit/sephiroth/android/library/imagezoom/easing/Expo;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 103
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mClipPath:Landroid/graphics/Path;

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mInversePath:Landroid/graphics/Path;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewDrawRect:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewInvertRect:Landroid/graphics/RectF;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    .line 121
    const/16 v0, 0x8

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->grid_rows:I

    .line 122
    const/16 v0, 0x8

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->grid_cols:I

    .line 316
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    .line 317
    iput-wide v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->previousStraightenAngle:D

    .line 318
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->prevGrowth:D

    .line 319
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->testStraighten:Z

    .line 320
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->currentGrowth:F

    .line 321
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    .line 322
    iput-wide v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->previousAngle:D

    .line 323
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->intersectPoints:Z

    .line 324
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->portrait:Z

    .line 325
    iput v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->orientation:I

    .line 579
    const/16 v0, 0x32

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenDuration:I

    .line 580
    iput v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->previousPosition:I

    .line 581
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->initTool:Z

    .line 583
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerIndex:I

    .line 1546
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->ax:F

    .line 1547
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->ay:F

    .line 1548
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->bx:F

    .line 1549
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->by:F

    .line 1550
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->cx:F

    .line 1551
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->cy:F

    .line 1552
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->dx:F

    .line 1553
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->dy:F

    .line 1555
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->intersectx:F

    .line 1556
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->intersecty:F

    .line 1558
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->intersectPaint:Landroid/graphics/Paint;

    .line 1559
    iput-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    .line 1560
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 1562
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->firstDraw:Z

    .line 1563
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandler:Landroid/os/Handler;

    .line 1869
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHandler:Landroid/os/Handler;

    .line 1870
    iput-wide v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 1871
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCurrentScale:F

    .line 1872
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    .line 2088
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrixValues:[F

    .line 2102
    sget-object v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AdjustImageView;->initImageView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/AdjustImageView;)Lit/sephiroth/android/library/imagezoom/easing/Easing;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/AdjustImageView;D)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;
    .param p1, "x1"    # D

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/widget/AdjustImageView;->setStraightenRotation(D)V

    return-void
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/widget/AdjustImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->onReset()V

    return-void
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/widget/AdjustImageView;DZ)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;
    .param p1, "x1"    # D
    .param p3, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AdjustImageView;->setImageRotation(DZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/widget/AdjustImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCameraEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/widget/AdjustImageView;Landroid/graphics/Matrix;)D
    .locals 2
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AdjustImageView;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AdjustImageView;->getRotationFromMatrix(Landroid/graphics/Matrix;)D

    move-result-wide v0

    return-wide v0
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorMod:Z

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1864
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1865
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAlpha:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1867
    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 18

    .prologue
    .line 1292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHaveFrame:Z

    if-nez v13, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    .line 1297
    .local v3, "dwidth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    .line 1299
    .local v1, "dheight":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingRight()I

    move-result v14

    sub-int v12, v13, v14

    .line 1300
    .local v12, "vwidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingBottom()I

    move-result v14

    sub-int v11, v13, v14

    .line 1302
    .local v11, "vheight":I
    if-ltz v3, :cond_2

    if-ne v12, v3, :cond_5

    :cond_2
    if-ltz v1, :cond_3

    if-ne v11, v1, :cond_5

    :cond_3
    const/4 v6, 0x1

    .line 1304
    .local v6, "fits":Z
    :goto_1
    if-lez v3, :cond_4

    if-lez v1, :cond_4

    sget-object v13, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->FIT_XY:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    if-ne v13, v14, :cond_6

    .line 1309
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1310
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 1302
    .end local v6    # "fits":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1314
    .restart local v6    # "fits":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1316
    sget-object v13, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->MATRIX:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    if-ne v13, v14, :cond_8

    .line 1318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1319
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 1321
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 1323
    :cond_8
    if-eqz v6, :cond_9

    .line 1325
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 1326
    :cond_9
    sget-object v13, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->CENTER:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    if-ne v13, v14, :cond_a

    .line 1328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v14, v12, v3

    int-to-float v14, v14

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v14, v14

    sub-int v15, v11, v1

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    int-to-float v15, v15

    .line 1330
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_0

    .line 1331
    :cond_a
    sget-object v13, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->CENTER_CROP:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    if-ne v13, v14, :cond_c

    .line 1332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1335
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 1337
    .local v5, "dy":F
    mul-int v13, v3, v11

    mul-int v14, v12, v1

    if-le v13, v14, :cond_b

    .line 1338
    int-to-float v13, v11

    int-to-float v14, v1

    div-float v8, v13, v14

    .line 1339
    .local v8, "scale":F
    int-to-float v13, v12

    int-to-float v14, v3

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v4, v13, v14

    .line 1345
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v14, v4

    float-to-int v14, v14

    int-to-float v14, v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v15, v5

    float-to-int v15, v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 1341
    .end local v8    # "scale":F
    :cond_b
    int-to-float v13, v12

    int-to-float v14, v3

    div-float v8, v13, v14

    .line 1342
    .restart local v8    # "scale":F
    int-to-float v13, v11

    int-to-float v14, v1

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v5, v13, v14

    goto :goto_2

    .line 1347
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "scale":F
    :cond_c
    sget-object v13, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->CENTER_INSIDE:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    if-ne v13, v14, :cond_e

    .line 1348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1353
    if-gt v3, v12, :cond_d

    if-gt v1, v11, :cond_d

    .line 1354
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1359
    .restart local v8    # "scale":F
    :goto_3
    int-to-float v13, v12

    int-to-float v14, v3

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v4, v13

    .line 1360
    .restart local v4    # "dx":F
    int-to-float v13, v11

    int-to-float v14, v1

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v5, v13

    .line 1362
    .restart local v5    # "dy":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 1356
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "scale":F
    :cond_d
    int-to-float v13, v12

    int-to-float v14, v3

    div-float/2addr v13, v14

    int-to-float v14, v11

    int-to-float v15, v1

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .restart local v8    # "scale":F
    goto :goto_3

    .line 1366
    .end local v8    # "scale":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempSrc:Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v1

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempDst:Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v12

    move/from16 v16, v0

    int-to-float v0, v11

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempSrc:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempDst:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/aviary/android/feather/widget/AdjustImageView;->scaleTypeToScaleToFit(Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/aviary/android/feather/widget/AdjustImageView;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCurrentScale:F

    .line 1374
    new-instance v10, Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v10, v13}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 1375
    .local v10, "tempMatrix":Landroid/graphics/Matrix;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 1376
    .local v9, "src":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1377
    .local v2, "dst":Landroid/graphics/RectF;
    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v1

    int-to-float v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1378
    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v12

    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    invoke-static {v13}, Lcom/aviary/android/feather/widget/AdjustImageView;->scaleTypeToScaleToFit(Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v13

    invoke-virtual {v10, v9, v2, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1381
    new-instance v10, Landroid/graphics/Matrix;

    .end local v10    # "tempMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-direct {v10, v13}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 1382
    .restart local v10    # "tempMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v10, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1384
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/aviary/android/feather/widget/AdjustImageView;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v13

    const/4 v14, 0x0

    aget v7, v13, v14

    .line 1386
    .local v7, "invertScale":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v14, v12, 0x2

    int-to-float v14, v14

    div-int/lit8 v15, v11, 0x2

    int-to-float v15, v15

    invoke-virtual {v13, v7, v7, v14, v15}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 1389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 1390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 1391
    sget-object v13, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v13, v13, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    .line 1392
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 1393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCurrentScale:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCurrentScale:F

    div-int/lit8 v16, v12, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1394
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getImageRect()Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 1395
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    goto/16 :goto_0
.end method

.method private fireOnResetComplete()V
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetListener:Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetListener:Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;->onResetComplete()V

    .line 2197
    :cond_0
    return-void
.end method

.method private flip(ZZ)V
    .locals 6
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 2070
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 2071
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 2073
    .local v0, "center":Landroid/graphics/PointF;
    if-eqz p1, :cond_0

    .line 2074
    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    .line 2075
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2078
    :cond_0
    if-eqz p2, :cond_1

    .line 2079
    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    .line 2080
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v4, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2083
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    neg-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2084
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->getRotationFromMatrix(Landroid/graphics/Matrix;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/graphics/Point2D;->angle360(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 2085
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 2086
    return-void
.end method

.method static getAngle90(D)D
    .locals 8
    .param p0, "value"    # D

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 1705
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/graphics/Point2D;->angle360(D)D

    move-result-wide v2

    .line 1706
    .local v2, "rotation":D
    move-wide v0, v2

    .line 1708
    .local v0, "angle":D
    const-wide v4, 0x4070e00000000000L    # 270.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    .line 1709
    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double v0, v4, v2

    .line 1715
    :cond_0
    :goto_0
    return-wide v0

    .line 1710
    :cond_1
    cmpl-double v4, v2, v6

    if-ltz v4, :cond_2

    .line 1711
    sub-double v0, v2, v6

    goto :goto_0

    .line 1712
    :cond_2
    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 1713
    sub-double v0, v6, v2

    goto :goto_0
.end method

.method private getCenter()Landroid/graphics/PointF;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 261
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCenter:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 263
    .local v1, "vwidth":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 264
    .local v0, "vheight":I
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v1

    div-float/2addr v3, v5

    int-to-float v4, v0

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCenter:Landroid/graphics/PointF;

    .line 266
    .end local v0    # "vheight":I
    .end local v1    # "vwidth":I
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCenter:Landroid/graphics/PointF;

    return-object v2
.end method

.method private getImageRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getRotationFromMatrix(Landroid/graphics/Matrix;)D
    .locals 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 726
    const/4 v3, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 727
    .local v2, "pts":[F
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 728
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x3

    aget v6, v2, v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints(FFFFF)D

    move-result-wide v0

    .line 729
    .local v0, "angle":D
    neg-double v3, v0

    return-wide v3

    .line 726
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x3d380000    # -100.0f
    .end array-data
.end method

.method private getViewRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 271
    .local v1, "vwidth":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 272
    .local v0, "vheight":I
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private initImageView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 165
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 166
    sget-object v17, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->FIT_CENTER:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .line 170
    .local v14, "theme":Landroid/content/res/Resources$Theme;
    sget-object v17, Lcom/aviary/android/feather/R$styleable;->AviaryAdjustImageView:[I

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, p3

    move/from16 v3, v18

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 172
    .local v4, "array":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 175
    .local v10, "stroke_color1":I
    const/16 v17, 0x9

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 177
    .local v11, "stroke_color2":I
    const/16 v17, 0x8

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 178
    .local v12, "stroke_width1":I
    const/16 v17, 0x5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 180
    .local v13, "stroke_width2":I
    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 182
    .local v6, "fill_color":I
    const/16 v17, 0xa

    const/16 v18, 0x190

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/aviary/android/feather/widget/AdjustImageView;->mAnimationDuration:J

    .line 183
    const/16 v17, 0x2

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetAnimationDuration:J

    .line 185
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 186
    .local v5, "camera_enabled":Z
    const/16 v17, 0x4

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 188
    .local v7, "free_rotate":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->setCameraEnabled(Z)V

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/aviary/android/feather/widget/AdjustImageView;->setEnableFreeRotate(Z)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v15, v0

    .line 194
    .local v15, "w":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v8, v0

    .line 195
    .local v8, "h":D
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v17, v15, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    .line 196
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v17, v8, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v12

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setDither(Z)V

    .line 209
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const-string/jumbo v18, "setHinting"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v17 .. v20}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setDither(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const-string/jumbo v18, "setHinting"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v17 .. v20}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFillAlpha:I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaintAlpha:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesAlpha:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    return-void

    .line 220
    :catch_0
    move-exception v17

    goto :goto_1

    .line 210
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method

.method private onReset()V
    .locals 15

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    const/4 v14, 0x0

    .line 2151
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    if-eqz v0, :cond_5

    .line 2152
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getRotation()F

    move-result v0

    float-to-double v9, v0

    .line 2153
    .local v9, "rotation":D
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenAngle()D

    move-result-wide v11

    .line 2154
    .local v11, "straightenRotation":D
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenStarted()Z

    move-result v8

    .line 2155
    .local v8, "resetStraighten":Z
    iput-boolean v14, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    .line 2157
    rem-double/2addr v9, v2

    .line 2158
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v9, v0

    if-lez v0, :cond_0

    .line 2159
    sub-double/2addr v9, v2

    .line 2162
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHorizontalFlip()Z

    move-result v7

    .line 2163
    .local v7, "hflip":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getVerticalFlip()Z

    move-result v13

    .line 2164
    .local v13, "vflip":Z
    const/4 v6, 0x0

    .line 2165
    .local v6, "handled":Z
    iput-boolean v14, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 2166
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 2168
    const-wide/16 v0, 0x0

    cmpl-double v0, v9, v0

    if-nez v0, :cond_1

    if-eqz v8, :cond_2

    .line 2169
    :cond_1
    if-eqz v8, :cond_6

    .line 2170
    neg-double v1, v11

    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v0

    iget-wide v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetAnimationDuration:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenBy(DIJ)V

    .line 2174
    :goto_0
    const/4 v6, 0x1

    .line 2177
    :cond_2
    if-eqz v7, :cond_3

    .line 2178
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetAnimationDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/aviary/android/feather/widget/AdjustImageView;->flip(ZJ)V

    .line 2179
    const/4 v6, 0x1

    .line 2182
    :cond_3
    if-eqz v13, :cond_4

    .line 2183
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetAnimationDuration:J

    invoke-virtual {p0, v14, v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->flip(ZJ)V

    .line 2184
    const/4 v6, 0x1

    .line 2187
    :cond_4
    if-nez v6, :cond_5

    .line 2188
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->fireOnResetComplete()V

    .line 2191
    .end local v6    # "handled":Z
    .end local v7    # "hflip":Z
    .end local v8    # "resetStraighten":Z
    .end local v9    # "rotation":D
    .end local v11    # "straightenRotation":D
    .end local v13    # "vflip":Z
    :cond_5
    return-void

    .line 2172
    .restart local v6    # "handled":Z
    .restart local v7    # "hflip":Z
    .restart local v8    # "resetStraighten":Z
    .restart local v9    # "rotation":D
    .restart local v11    # "straightenRotation":D
    .restart local v13    # "vflip":Z
    :cond_6
    neg-double v0, v9

    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetAnimationDuration:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->rotateBy(DJ)V

    goto :goto_0
.end method

.method private onTouchStart()V
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandlerStarted:Z

    if-eqz v0, :cond_0

    .line 281
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->fadeinGrid(I)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->fadeinOutlines(I)V

    goto :goto_0
.end method

.method private onTouchUp()V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 313
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->fadeoutGrid(I)V

    .line 314
    return-void
.end method

.method private resetStraighten()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1951
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    .line 1953
    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->previousStraightenAngle:D

    .line 1954
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->prevGrowth:D

    .line 1955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->testStraighten:Z

    .line 1956
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->currentGrowth:F

    .line 1957
    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->previousAngle:D

    .line 1958
    return-void
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1105
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1106
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1107
    .local v2, "w":I
    if-gez v2, :cond_0

    iget v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    .line 1108
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1109
    .local v1, "h":I
    if-gez v1, :cond_1

    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    .line 1110
    :cond_1
    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 1111
    :cond_2
    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    .line 1112
    iput v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    .line 1113
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->requestLayout()V

    .line 1116
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1266
    move v0, p1

    .line 1267
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1268
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1269
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 1288
    :goto_0
    return v0

    .line 1275
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1276
    goto :goto_0

    .line 1281
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1282
    goto :goto_0

    .line 1285
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 1269
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1026
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1031
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 1035
    const/4 v0, 0x0

    .line 1037
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    if-eqz v4, :cond_3

    .line 1039
    :try_start_0
    iget v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1068
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "rotate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    iput-object v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 1045
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 1046
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1047
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v4, "android.resource"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1059
    :goto_2
    if-nez v0, :cond_2

    .line 1060
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1062
    iput-object v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 1049
    :cond_4
    const-string/jumbo v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1051
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    .line 1052
    :catch_1
    move-exception v1

    .line 1053
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "rotate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1056
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method private static scaleTypeToScaleToFit(Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .param p0, "st"    # Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    .prologue
    .line 1123
    sget-object v0, Lcom/aviary/android/feather/widget/AdjustImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private setImageRotation(DZ)V
    .locals 10
    .param p1, "angle"    # D
    .param p3, "invert"    # Z

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 290
    .local v0, "center":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 291
    .local v5, "tempMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getImageRect()Landroid/graphics/RectF;

    move-result-object v4

    .line 292
    .local v4, "src":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 294
    .local v1, "dst":Landroid/graphics/RectF;
    double-to-float v6, p1

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 295
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 296
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    invoke-static {v6}, Lcom/aviary/android/feather/widget/AdjustImageView;->scaleTypeToScaleToFit(Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v6

    invoke-virtual {v5, v4, v1, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 298
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v3

    .line 299
    .local v3, "scale":[F
    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 301
    .local v2, "fScale":F
    if-eqz p3, :cond_0

    .line 302
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    double-to-float v7, p1

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 303
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, v2, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 309
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, v2, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 306
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    double-to-float v7, p1

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0
.end method

.method private setStraightenRotation(D)V
    .locals 52
    .param p1, "newPosition"    # D

    .prologue
    .line 351
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 355
    .local v26, "growthFactor":D
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v11

    .line 357
    .local v11, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->previousStraightenAngle:D

    move-wide/from16 v48, v0

    move-wide/from16 v0, v48

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v49, v0

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v50, v0

    invoke-virtual/range {v47 .. v50}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v47, v0

    move-wide/from16 v0, p1

    double-to-float v0, v0

    move/from16 v48, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v49, v0

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v50, v0

    invoke-virtual/range {v47 .. v50}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 360
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/aviary/android/feather/widget/AdjustImageView;->previousStraightenAngle:D

    .line 362
    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->prevGrowth:D

    move-wide/from16 v49, v0

    div-double v20, v47, v49

    .line 364
    .local v20, "divideGrowth":D
    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/AdjustImageView;->isNumber(DD)D

    move-result-wide v20

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v47, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v48, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v49, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v50, v0

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v51, v0

    invoke-virtual/range {v47 .. v51}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v33

    .line 369
    .local v33, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingRight()I

    move-result v34

    .line 370
    .local v34, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v35

    .line 371
    .local v35, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingBottom()I

    move-result v32

    .line 373
    .local v32, "paddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->portrait:Z

    move/from16 v47, v0

    if-eqz v47, :cond_3

    .line 377
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    .line 378
    .local v36, "sin_rad":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 381
    .local v12, "cos_rad":D
    const/16 v47, 0x8

    move/from16 v0, v47

    new-array v0, v0, [F

    move-object/from16 v38, v0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    .line 390
    .local v38, "testPoint":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    add-double v47, v47, v49

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v39, v0

    .line 393
    .local v39, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    sub-double v47, v47, v49

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v43, v0

    .line 394
    .local v43, "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    add-double v47, v47, v49

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v40, v0

    .line 395
    .local v40, "x2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    sub-double v47, v47, v49

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v44, v0

    .line 396
    .local v44, "y2":F
    const/16 v47, 0x2

    aget v41, v38, v47

    .line 397
    .local v41, "x3":F
    const/16 v47, 0x3

    aget v45, v38, v47

    .line 398
    .local v45, "y3":F
    const/16 v47, 0x6

    aget v42, v38, v47

    .line 399
    .local v42, "x4":F
    const/16 v47, 0x7

    aget v46, v38, v47

    .line 401
    .local v46, "y4":F
    mul-float v47, v39, v44

    mul-float v48, v43, v40

    sub-float v47, v47, v48

    sub-float v48, v45, v46

    mul-float v47, v47, v48

    sub-float v48, v43, v44

    mul-float v49, v41, v46

    mul-float v50, v45, v42

    sub-float v49, v49, v50

    mul-float v48, v48, v49

    sub-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 402
    .local v30, "numerator2":D
    sub-float v47, v39, v40

    sub-float v48, v45, v46

    mul-float v47, v47, v48

    sub-float v48, v43, v44

    sub-float v49, v41, v42

    mul-float v48, v48, v49

    sub-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 404
    .local v16, "denominator2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v47, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v48, v0

    add-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v5, v0

    .line 405
    .local v5, "Px":D
    div-double v47, v30, v16

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    add-double v7, v47, v49

    .line 407
    .local v7, "Py":D
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->orientation:I

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->orientation:I

    move/from16 v47, v0

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_0

    const-wide/16 v47, 0x0

    cmpl-double v47, p1, v47

    if-lez v47, :cond_0

    .line 409
    div-double v47, v30, v16

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    add-double v7, v47, v49

    .line 412
    :cond_0
    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v22, v5, v47

    .line 413
    .local v22, "dx":D
    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v24, v7, v47

    .line 415
    .local v24, "dy":D
    const-wide/16 v47, 0x0

    cmpg-double v47, p1, v47

    if-gez v47, :cond_1

    .line 416
    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v22, v5, v47

    .line 417
    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v24, v7, v47

    .line 420
    :cond_1
    mul-double v47, v22, v22

    mul-double v49, v24, v24

    add-double v47, v47, v49

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 421
    .local v18, "distance":D
    const-wide/high16 v47, 0x4000000000000000L    # 2.0

    mul-double v47, v47, v18

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v49

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v49

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sin(D)D

    move-result-wide v49

    mul-double v9, v47, v49

    .line 422
    .local v9, "amountNeededToGrow":D
    const/16 v47, 0x0

    aget v47, v38, v47

    const/16 v48, 0x2

    aget v48, v38, v48

    sub-float v47, v47, v48

    const/16 v48, 0x0

    aget v48, v38, v48

    const/16 v49, 0x2

    aget v49, v38, v49

    sub-float v48, v48, v49

    mul-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 424
    const-wide/16 v47, 0x0

    cmpl-double v47, p1, v47

    if-eqz v47, :cond_2

    .line 425
    add-double v47, v18, v9

    div-double v26, v47, v18

    .line 426
    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/AdjustImageView;->isNumber(DD)D

    move-result-wide v26

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v47, v0

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v48, v0

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v49, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v50, v0

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v51, v0

    invoke-virtual/range {v47 .. v51}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 489
    .end local v16    # "denominator2":D
    .end local v30    # "numerator2":D
    :goto_0
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/aviary/android/feather/widget/AdjustImageView;->prevGrowth:D

    .line 490
    return-void

    .line 430
    .restart local v16    # "denominator2":D
    .restart local v30    # "numerator2":D
    :cond_2
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 439
    .end local v5    # "Px":D
    .end local v7    # "Py":D
    .end local v9    # "amountNeededToGrow":D
    .end local v12    # "cos_rad":D
    .end local v16    # "denominator2":D
    .end local v18    # "distance":D
    .end local v22    # "dx":D
    .end local v24    # "dy":D
    .end local v30    # "numerator2":D
    .end local v36    # "sin_rad":D
    .end local v38    # "testPoint":[F
    .end local v39    # "x1":F
    .end local v40    # "x2":F
    .end local v41    # "x3":F
    .end local v42    # "x4":F
    .end local v43    # "y1":F
    .end local v44    # "y2":F
    .end local v45    # "y3":F
    .end local v46    # "y4":F
    :cond_3
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    .line 440
    .restart local v36    # "sin_rad":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 442
    .restart local v12    # "cos_rad":D
    const/16 v47, 0x8

    move/from16 v0, v47

    new-array v0, v0, [F

    move-object/from16 v38, v0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    add-double v48, v48, v50

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    const/16 v47, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v48, v0

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v36

    sub-double v48, v48, v50

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    mul-double v50, v50, v12

    add-double v48, v48, v50

    move-wide/from16 v0, v48

    double-to-float v0, v0

    move/from16 v48, v0

    aput v48, v38, v47

    .line 451
    .restart local v38    # "testPoint":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    add-double v47, v47, v49

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v39, v0

    .line 454
    .restart local v39    # "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    sub-double v47, v47, v49

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v43, v0

    .line 455
    .restart local v43    # "y1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    add-double v47, v47, v49

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v40, v0

    .line 456
    .restart local v40    # "x2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v36

    sub-double v47, v47, v49

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v49, v0

    mul-double v49, v49, v12

    add-double v47, v47, v49

    move-wide/from16 v0, v47

    double-to-float v0, v0

    move/from16 v44, v0

    .line 457
    .restart local v44    # "y2":F
    const/16 v47, 0x4

    aget v41, v38, v47

    .line 458
    .restart local v41    # "x3":F
    const/16 v47, 0x5

    aget v45, v38, v47

    .line 459
    .restart local v45    # "y3":F
    const/16 v47, 0x6

    aget v42, v38, v47

    .line 460
    .restart local v42    # "x4":F
    const/16 v47, 0x7

    aget v46, v38, v47

    .line 462
    .restart local v46    # "y4":F
    mul-float v47, v39, v44

    mul-float v48, v43, v40

    sub-float v47, v47, v48

    sub-float v48, v41, v42

    mul-float v47, v47, v48

    sub-float v48, v39, v40

    mul-float v49, v41, v46

    mul-float v50, v45, v42

    sub-float v49, v49, v50

    mul-float v48, v48, v49

    sub-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 463
    .local v28, "numerator1":D
    sub-float v47, v39, v40

    sub-float v48, v45, v46

    mul-float v47, v47, v48

    sub-float v48, v43, v44

    sub-float v49, v41, v42

    mul-float v48, v48, v49

    sub-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v14, v0

    .line 465
    .local v14, "denominator1":D
    div-double v47, v28, v14

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v49, v0

    add-double v5, v47, v49

    .line 466
    .restart local v5    # "Px":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v47, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v48, v0

    add-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v7, v0

    .line 467
    .restart local v7    # "Py":D
    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v22, v5, v47

    .line 468
    .restart local v22    # "dx":D
    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v24, v7, v47

    .line 470
    .restart local v24    # "dy":D
    const-wide/16 v47, 0x0

    cmpg-double v47, p1, v47

    if-gez v47, :cond_4

    .line 471
    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v22, v5, v47

    .line 472
    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v24, v7, v47

    .line 475
    :cond_4
    mul-double v47, v22, v22

    mul-double v49, v24, v24

    add-double v47, v47, v49

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 476
    .restart local v18    # "distance":D
    const-wide/high16 v47, 0x4000000000000000L    # 2.0

    mul-double v47, v47, v18

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v49

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v49

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sin(D)D

    move-result-wide v49

    mul-double v9, v47, v49

    .line 477
    .restart local v9    # "amountNeededToGrow":D
    const/16 v47, 0x5

    aget v47, v38, v47

    const/16 v48, 0x1

    aget v48, v38, v48

    sub-float v47, v47, v48

    const/16 v48, 0x5

    aget v48, v38, v48

    const/16 v49, 0x1

    aget v49, v38, v49

    sub-float v48, v48, v49

    mul-float v47, v47, v48

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 479
    const-wide/16 v47, 0x0

    cmpl-double v47, p1, v47

    if-eqz v47, :cond_5

    .line 480
    add-double v47, v18, v9

    div-double v26, v47, v18

    .line 481
    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/AdjustImageView;->isNumber(DD)D

    move-result-wide v26

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v47, v0

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v48, v0

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v49, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v50, v0

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v51, v0

    invoke-virtual/range {v47 .. v51}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 485
    :cond_5
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1085
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1088
    if-eqz p1, :cond_2

    .line 1089
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1090
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1093
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1094
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    .line 1095
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    .line 1096
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->applyColorMod()V

    .line 1097
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->configureBounds()V

    .line 1101
    :goto_0
    return-void

    .line 1099
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    goto :goto_0
.end method


# virtual methods
.method crop(FFDFFLandroid/graphics/PointF;Landroid/graphics/Canvas;)Landroid/graphics/RectF;
    .locals 22
    .param p1, "originalWidth"    # F
    .param p2, "originalHeight"    # F
    .param p3, "angle"    # D
    .param p5, "targetWidth"    # F
    .param p6, "targetHeight"    # F
    .param p7, "center"    # Landroid/graphics/PointF;
    .param p8, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1720
    invoke-static/range {p3 .. p4}, Lcom/aviary/android/feather/library/graphics/Point2D;->radians(D)D

    move-result-wide v12

    .line 1722
    .local v12, "radians":D
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v10, v0, [Landroid/graphics/PointF;

    const/16 v17, 0x0

    new-instance v18, Landroid/graphics/PointF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v10, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/graphics/PointF;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v10, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v10, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/graphics/PointF;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v10, v17

    .line 1725
    .local v10, "original":[Landroid/graphics/PointF;
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v0, v1}, Lcom/aviary/android/feather/library/graphics/Point2D;->translate([Landroid/graphics/PointF;FF)V

    .line 1727
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v16, v0

    .line 1728
    .local v16, "rotated":[Landroid/graphics/PointF;
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v10, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1729
    move-object/from16 v0, v16

    invoke-static {v0, v12, v13}, Lcom/aviary/android/feather/library/graphics/Point2D;->rotate([Landroid/graphics/PointF;D)V

    .line 1731
    const-wide/16 v17, 0x0

    cmpl-double v17, p3, v17

    if-ltz v17, :cond_1

    .line 1732
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Landroid/graphics/PointF;

    const/16 v17, 0x0

    new-instance v18, Landroid/graphics/PointF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v14, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/graphics/PointF;

    move/from16 v0, p5

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, p6

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v14, v17

    .line 1733
    .local v14, "ray":[Landroid/graphics/PointF;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Landroid/graphics/PointF;

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, v16, v18

    aput-object v18, v4, v17

    const/16 v17, 0x1

    const/16 v18, 0x3

    aget-object v18, v16, v18

    aput-object v18, v4, v17

    .line 1736
    .local v4, "bound":[Landroid/graphics/PointF;
    invoke-static {v14, v4}, Lcom/aviary/android/feather/library/graphics/Point2D;->intersection([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    .line 1738
    .local v7, "intersectTL":Landroid/graphics/PointF;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [Landroid/graphics/PointF;

    const/16 v17, 0x0

    new-instance v18, Landroid/graphics/PointF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v15, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/graphics/PointF;

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, p5, v19

    move/from16 v0, p6

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v18, v15, v17

    .line 1739
    .local v15, "ray2":[Landroid/graphics/PointF;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [Landroid/graphics/PointF;

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, v16, v18

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const/16 v18, 0x1

    aget-object v18, v16, v18

    aput-object v18, v5, v17

    .line 1742
    .local v5, "bound2":[Landroid/graphics/PointF;
    invoke-static {v15, v5}, Lcom/aviary/android/feather/library/graphics/Point2D;->intersection([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 1745
    .local v8, "intersectTR":Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    iget v0, v7, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    iget v0, v7, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1747
    .local v6, "intersect":Landroid/graphics/PointF;
    new-instance v9, Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1748
    .local v9, "newRect":Landroid/graphics/RectF;
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1750
    if-eqz p8, :cond_0

    .line 1752
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/aviary/android/feather/library/graphics/Point2D;->translate([Landroid/graphics/PointF;FF)V

    .line 1753
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Lcom/aviary/android/feather/library/graphics/Point2D;->translate([Landroid/graphics/PointF;FF)V

    .line 1754
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/aviary/android/feather/library/graphics/Point2D;->translate([Landroid/graphics/PointF;FF)V

    .line 1756
    new-instance v11, Landroid/graphics/Paint;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1757
    .local v11, "paint":Landroid/graphics/Paint;
    const v17, 0x66ffff00

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1758
    sget-object v17, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1759
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1761
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2, v11}, Lcom/aviary/android/feather/widget/AdjustImageView;->drawRect([Landroid/graphics/PointF;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1763
    const v17, -0xff0100

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1764
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v14, v1, v11}, Lcom/aviary/android/feather/widget/AdjustImageView;->drawLine([Landroid/graphics/PointF;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1766
    const v17, -0xffff01

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1767
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v15, v1, v11}, Lcom/aviary/android/feather/widget/AdjustImageView;->drawLine([Landroid/graphics/PointF;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1769
    const v17, -0xff0001

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1770
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1, v11}, Lcom/aviary/android/feather/widget/AdjustImageView;->drawLine([Landroid/graphics/PointF;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1772
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1773
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v5, v1, v11}, Lcom/aviary/android/feather/widget/AdjustImageView;->drawLine([Landroid/graphics/PointF;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1775
    const v17, -0x777778

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1776
    move-object/from16 v0, p8

    invoke-virtual {v0, v9, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1778
    .end local v11    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-object v9

    .line 1781
    .end local v4    # "bound":[Landroid/graphics/PointF;
    .end local v5    # "bound2":[Landroid/graphics/PointF;
    .end local v6    # "intersect":Landroid/graphics/PointF;
    .end local v7    # "intersectTL":Landroid/graphics/PointF;
    .end local v8    # "intersectTR":Landroid/graphics/PointF;
    .end local v9    # "newRect":Landroid/graphics/RectF;
    .end local v14    # "ray":[Landroid/graphics/PointF;
    .end local v15    # "ray2":[Landroid/graphics/PointF;
    :cond_1
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "angle cannot be < 0"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method drawLine([Landroid/graphics/PointF;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "line"    # [Landroid/graphics/PointF;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1786
    aget-object v0, p1, v2

    iget v1, v0, Landroid/graphics/PointF;->x:F

    aget-object v0, p1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    aget-object v0, p1, v4

    iget v3, v0, Landroid/graphics/PointF;->x:F

    aget-object v0, p1, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1787
    return-void
.end method

.method drawRect([Landroid/graphics/PointF;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "rect"    # [Landroid/graphics/PointF;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1791
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1792
    .local v0, "path":Landroid/graphics/Path;
    aget-object v1, p1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1793
    aget-object v1, p1, v4

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, p1, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1794
    aget-object v1, p1, v5

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, p1, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1795
    aget-object v1, p1, v6

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, p1, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1796
    aget-object v1, p1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1797
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1798
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1402
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1403
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1404
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1407
    :cond_0
    return-void
.end method

.method protected fadeinGrid(I)V
    .locals 8
    .param p1, "durationMs"    # I

    .prologue
    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1569
    .local v3, "startTime":J
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v6, v0

    .line 1570
    .local v6, "startAlpha":F
    new-instance v5, Lit/sephiroth/android/library/imagezoom/easing/Linear;

    invoke-direct {v5}, Lit/sephiroth/android/library/imagezoom/easing/Linear;-><init>()V

    .line 1572
    .local v5, "easing":Lit/sephiroth/android/library/imagezoom/easing/Linear;
    iget-object v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$2;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/aviary/android/feather/widget/AdjustImageView$2;-><init>(Lcom/aviary/android/feather/widget/AdjustImageView;IJLit/sephiroth/android/library/imagezoom/easing/Linear;F)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1592
    return-void
.end method

.method protected fadeinOutlines(I)V
    .locals 7
    .param p1, "durationMs"    # I

    .prologue
    .line 1624
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandlerStarted:Z

    if-eqz v0, :cond_0

    .line 1658
    :goto_0
    return-void

    .line 1625
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandlerStarted:Z

    .line 1627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1628
    .local v3, "startTime":J
    new-instance v5, Lit/sephiroth/android/library/imagezoom/easing/Linear;

    invoke-direct {v5}, Lit/sephiroth/android/library/imagezoom/easing/Linear;-><init>()V

    .line 1630
    .local v5, "easing":Lit/sephiroth/android/library/imagezoom/easing/Linear;
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$4;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AdjustImageView$4;-><init>(Lcom/aviary/android/feather/widget/AdjustImageView;IJLit/sephiroth/android/library/imagezoom/easing/Linear;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected fadeoutGrid(I)V
    .locals 8
    .param p1, "durationMs"    # I

    .prologue
    .line 1596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1597
    .local v3, "startTime":J
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v6, v0

    .line 1598
    .local v6, "startAlpha":F
    new-instance v5, Lit/sephiroth/android/library/imagezoom/easing/Linear;

    invoke-direct {v5}, Lit/sephiroth/android/library/imagezoom/easing/Linear;-><init>()V

    .line 1600
    .local v5, "easing":Lit/sephiroth/android/library/imagezoom/easing/Linear;
    iget-object v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$3;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/aviary/android/feather/widget/AdjustImageView$3;-><init>(Lcom/aviary/android/feather/widget/AdjustImageView;IJLit/sephiroth/android/library/imagezoom/easing/Linear;F)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1621
    return-void
.end method

.method public flip(Z)V
    .locals 2
    .param p1, "horizontal"    # Z

    .prologue
    .line 1971
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAnimationDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->flip(ZJ)V

    .line 1972
    return-void
.end method

.method protected flip(ZJ)V
    .locals 0
    .param p1, "horizontal"    # Z
    .param p2, "durationMs"    # J

    .prologue
    .line 1975
    invoke-virtual {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AdjustImageView;->flipTo(ZJ)V

    .line 1976
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->hideOutlines()V

    .line 1977
    return-void
.end method

.method protected flipTo(ZJ)V
    .locals 13
    .param p1, "horizontal"    # Z
    .param p2, "durationMs"    # J

    .prologue
    .line 1988
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    if-eqz v0, :cond_1

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 1992
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    .line 1994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1995
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 1996
    .local v11, "vwidth":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingBottom()I

    move-result v1

    sub-int v10, v0, v1

    .line 1997
    .local v10, "vheight":I
    div-int/lit8 v0, v11, 0x2

    int-to-float v8, v0

    .line 1998
    .local v8, "centerx":F
    div-int/lit8 v0, v10, 0x2

    int-to-float v9, v0

    .line 2000
    .local v9, "centery":F
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 2002
    .local v6, "camera":Landroid/graphics/Camera;
    iget-object v12, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$7;

    move-object v1, p0

    move-wide v2, p2

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/aviary/android/feather/widget/AdjustImageView$7;-><init>(Lcom/aviary/android/feather/widget/AdjustImageView;JJLandroid/graphics/Camera;ZFF)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2061
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    if-nez v0, :cond_0

    .line 2062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 2063
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resetStraighten()V

    .line 2064
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    .line 1803
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getMeasuredHeight()I

    move-result v0

    .line 1805
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaseline:I

    goto :goto_0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    .prologue
    .line 1824
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getCurrentRotation()D
    .locals 2

    .prologue
    .line 2120
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    return-wide v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlipType()I
    .locals 1

    .prologue
    .line 2138
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    return v0
.end method

.method public getGrowthFactor()D
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->prevGrowth:D

    return-wide v0
.end method

.method public getHorizontalFlip()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2124
    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    if-eq v1, v2, :cond_0

    .line 2125
    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    and-int/2addr v1, v2

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2127
    :cond_0
    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getMatrixScale(Landroid/graphics/Matrix;)[F
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x0

    .line 2096
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2097
    .local v0, "result":[F
    invoke-virtual {p0, p1, v2}, Lcom/aviary/android/feather/widget/AdjustImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    aput v1, v0, v2

    .line 2098
    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/aviary/android/feather/widget/AdjustImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    aput v2, v0, v1

    .line 2099
    return-object v0
.end method

.method public getRotation()F
    .locals 2

    .prologue
    .line 2116
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    return-object v0
.end method

.method public getStraightenAngle()D
    .locals 2

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->previousStraightenAngle:D

    return-wide v0
.end method

.method public getStraightenStarted()Z
    .locals 1

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2092
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public getVerticalFlip()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2131
    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    if-eq v1, v2, :cond_0

    .line 2132
    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    and-int/2addr v1, v2

    sget-object v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v2, v2, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2134
    :cond_0
    return v0
.end method

.method protected hideOutlines()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1696
    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandlerStarted:Z

    .line 1697
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1698
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1699
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1700
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1701
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected isNumber(DD)D
    .locals 2
    .param p1, "number"    # D
    .param p3, "defaultValue"    # D

    .prologue
    .line 493
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    const-string/jumbo v0, "rotate"

    const-string/jumbo v1, "number is NaN or Infinite"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, p3

    .line 497
    .end local p1    # "number":D
    :cond_1
    return-wide p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 2202
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->orientation:I

    .line 2203
    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 2204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCenter:Landroid/graphics/PointF;

    .line 2205
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 2206
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    if-eqz v0, :cond_0

    .line 2207
    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 2208
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resetStraighten()V

    .line 2209
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 2211
    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mState:[I

    if-nez v0, :cond_0

    .line 1074
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1078
    :goto_0
    return-object v0

    .line 1075
    :cond_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mState:[I

    goto :goto_0

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mState:[I

    invoke-static {v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1411
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1414
    const-string/jumbo v2, "rotate"

    const-string/jumbo v3, "Drawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    if-nez v2, :cond_3

    .line 1419
    :cond_2
    const-string/jumbo v2, "rotate"

    const-string/jumbo v3, "drawable width or height is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1423
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v17

    .line 1424
    .local v17, "mPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v15

    .line 1425
    .local v15, "mPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingBottom()I

    move-result v14

    .line 1426
    .local v14, "mPaddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingRight()I

    move-result v16

    .line 1428
    .local v16, "mPaddingRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    .line 1429
    const-string/jumbo v2, "rotate"

    const-string/jumbo v3, "mDrawMatrix is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1434
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1436
    .local v21, "saveCount":I
    int-to-float v2, v15

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1439
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1440
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1441
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1443
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1446
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1448
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mEnableFreeRotate:Z

    if-eqz v2, :cond_0

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getImageRect()Landroid/graphics/RectF;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewDrawRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AdjustImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mInversePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1458
    const/16 v2, 0x8

    new-array v0, v2, [F

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v18, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v18, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v18, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v18, v2

    .line 1461
    .local v18, "points":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewInvertRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewInvertRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    int-to-float v4, v15

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewInvertRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mInversePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewInvertRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1472
    const/4 v2, 0x2

    aget v2, v18, v2

    const/4 v3, 0x3

    aget v3, v18, v3

    const/4 v4, 0x0

    aget v4, v18, v4

    const/4 v7, 0x1

    aget v7, v18, v7

    invoke-static {v2, v3, v4, v7}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance(FFFF)D

    move-result-wide v22

    .line 1473
    .local v22, "sx":D
    const/4 v2, 0x6

    aget v2, v18, v2

    const/4 v3, 0x7

    aget v3, v18, v3

    const/4 v4, 0x0

    aget v4, v18, v4

    const/4 v7, 0x1

    aget v7, v18, v7

    invoke-static {v2, v3, v4, v7}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance(FFFF)D

    move-result-wide v24

    .line 1474
    .local v24, "sy":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    invoke-static {v2, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->getAngle90(D)D

    move-result-wide v5

    .line 1477
    .local v5, "angle":D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    if-eqz v2, :cond_e

    .line 1479
    const-wide v2, 0x4046800000000000L    # 45.0

    cmpg-double v2, v5, v2

    if-gez v2, :cond_9

    .line 1480
    move-wide/from16 v0, v22

    double-to-float v3, v0

    move-wide/from16 v0, v24

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    int-to-float v8, v2

    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/aviary/android/feather/widget/AdjustImageView;->crop(FFDFFLandroid/graphics/PointF;Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object v19

    .line 1485
    .local v19, "rect":Landroid/graphics/RectF;
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v12, v2, v3

    .line 1486
    .local v12, "colStep":F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v20, v2, v3

    .line 1488
    .local v20, "rowStep":F
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_2
    const/16 v2, 0x8

    if-ge v13, v2, :cond_a

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v13

    mul-float/2addr v7, v12

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v13

    mul-float/2addr v7, v12

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1488
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1482
    .end local v12    # "colStep":F
    .end local v13    # "i":I
    .end local v19    # "rect":Landroid/graphics/RectF;
    .end local v20    # "rowStep":F
    :cond_9
    move-wide/from16 v0, v22

    double-to-float v3, v0

    move-wide/from16 v0, v24

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    int-to-float v8, v2

    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/aviary/android/feather/widget/AdjustImageView;->crop(FFDFFLandroid/graphics/PointF;Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object v19

    .restart local v19    # "rect":Landroid/graphics/RectF;
    goto :goto_1

    .line 1493
    .restart local v12    # "colStep":F
    .restart local v13    # "i":I
    .restart local v20    # "rowStep":F
    :cond_a
    const/4 v13, 0x1

    :goto_3
    const/16 v2, 0x8

    if-ge v13, v2, :cond_b

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v13

    mul-float v4, v4, v20

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v13

    mul-float v4, v4, v20

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1493
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1497
    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    .line 1499
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v11

    .line 1500
    .local v11, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v11, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    iget v7, v11, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1503
    iget v2, v11, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    .line 1504
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 1522
    .end local v11    # "center":Landroid/graphics/PointF;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mClipPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mInversePath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1527
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1529
    int-to-float v2, v15

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mInversePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1535
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    if-nez v2, :cond_d

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1540
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 1506
    .end local v12    # "colStep":F
    .end local v13    # "i":I
    .end local v19    # "rect":Landroid/graphics/RectF;
    .end local v20    # "rowStep":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    .line 1507
    .restart local v19    # "rect":Landroid/graphics/RectF;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v12, v2, v3

    .line 1508
    .restart local v12    # "colStep":F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v20, v2, v3

    .line 1510
    .restart local v20    # "rowStep":F
    const/4 v13, 0x1

    .restart local v13    # "i":I
    :goto_4
    const/16 v2, 0x8

    if-ge v13, v2, :cond_f

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v13

    mul-float/2addr v7, v12

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v13

    mul-float/2addr v7, v12

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1510
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1515
    :cond_f
    const/4 v13, 0x1

    :goto_5
    const/16 v2, 0x8

    if-ge v13, v2, :cond_c

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v13

    mul-float v4, v4, v20

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPath:Landroid/graphics/Path;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v13

    mul-float v4, v4, v20

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1515
    add-int/lit8 v13, v13, 0x1

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1128
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1130
    if-eqz p1, :cond_3

    .line 1131
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHaveFrame:Z

    .line 1133
    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 1134
    .local v2, "oldRotation":D
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHorizontalFlip()Z

    move-result v0

    .line 1135
    .local v0, "flip_h":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getVerticalFlip()Z

    move-result v1

    .line 1137
    .local v1, "flip_v":Z
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->configureBounds()V

    .line 1139
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 1140
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->flip(ZZ)V

    .line 1143
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_2

    .line 1144
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/aviary/android/feather/widget/AdjustImageView;->setImageRotation(DZ)V

    .line 1145
    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 1147
    :cond_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1149
    .end local v0    # "flip_h":Z
    .end local v1    # "flip_v":Z
    .end local v2    # "oldRotation":D
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1153
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resolveUri()V

    .line 1158
    const/4 v5, 0x0

    .line 1161
    .local v5, "desiredAspect":F
    const/16 v17, 0x0

    .line 1164
    .local v17, "resizeWidth":Z
    const/16 v16, 0x0

    .line 1166
    .local v16, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 1167
    .local v20, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1169
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 1171
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    .line 1172
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    .line 1173
    const/4 v7, 0x0

    .local v7, "h":I
    move/from16 v18, v7

    .line 1197
    .local v18, "w":I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v13

    .line 1198
    .local v13, "pleft":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingRight()I

    move-result v14

    .line 1199
    .local v14, "pright":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v15

    .line 1200
    .local v15, "ptop":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingBottom()I

    move-result v12

    .line 1205
    .local v12, "pbottom":I
    if-nez v17, :cond_1

    if-eqz v16, :cond_a

    .line 1213
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 1216
    .local v19, "widthSize":I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 1218
    .local v8, "heightSize":I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_3

    .line 1220
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 1222
    .local v4, "actualAspect":F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v21, v21, v23

    if-lez v21, :cond_3

    .line 1224
    const/4 v6, 0x0

    .line 1227
    .local v6, "done":Z
    if-eqz v17, :cond_2

    .line 1228
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 1229
    .local v11, "newWidth":I
    move/from16 v0, v19

    if-gt v11, v0, :cond_2

    .line 1230
    move/from16 v19, v11

    .line 1231
    const/4 v6, 0x1

    .line 1236
    .end local v11    # "newWidth":I
    :cond_2
    if-nez v6, :cond_3

    if-eqz v16, :cond_3

    .line 1237
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 1238
    .local v10, "newHeight":I
    if-gt v10, v8, :cond_3

    .line 1239
    move v8, v10

    .line 1260
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v10    # "newHeight":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/aviary/android/feather/widget/AdjustImageView;->setMeasuredDimension(II)V

    .line 1263
    return-void

    .line 1175
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v12    # "pbottom":I
    .end local v13    # "pleft":I
    .end local v14    # "pright":I
    .end local v15    # "ptop":I
    .end local v18    # "w":I
    .end local v19    # "widthSize":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    move/from16 v18, v0

    .line 1176
    .restart local v18    # "w":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    .line 1178
    .restart local v7    # "h":I
    if-gtz v18, :cond_5

    const/16 v18, 0x1

    .line 1179
    :cond_5
    if-gtz v7, :cond_6

    const/4 v7, 0x1

    .line 1181
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 1182
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->portrait:Z

    .line 1185
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->orientation:I

    .line 1189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1190
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    const/16 v17, 0x1

    .line 1191
    :goto_2
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v9, v0, :cond_9

    const/16 v16, 0x1

    .line 1193
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 1190
    :cond_8
    const/16 v17, 0x0

    goto :goto_2

    .line 1191
    :cond_9
    const/16 v16, 0x0

    goto :goto_3

    .line 1250
    .restart local v12    # "pbottom":I
    .restart local v13    # "pleft":I
    .restart local v14    # "pright":I
    .restart local v15    # "ptop":I
    :cond_a
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 1251
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1256
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->resolveSize(II)I

    move-result v19

    .line 1257
    .restart local v19    # "widthSize":I
    move/from16 v0, p2

    invoke-static {v7, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resolveSize(II)I

    move-result v8

    .restart local v8    # "heightSize":I
    goto/16 :goto_1
.end method

.method protected onSetAlpha(I)Z
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    const/4 v1, 0x1

    .line 248
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 249
    shr-int/lit8 v2, p1, 0x7

    add-int v0, p1, v2

    .line 250
    .local v0, "scale":I
    iget v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewAlphaScale:I

    if-eq v2, v0, :cond_0

    .line 251
    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mViewAlphaScale:I

    .line 252
    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorMod:Z

    .line 253
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->applyColorMod()V

    .line 257
    .end local v0    # "scale":I
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mEnableFreeRotate:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    const/16 v20, 0x1

    .line 722
    :goto_0
    return v20

    .line 591
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 593
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resetStraighten()V

    .line 599
    :cond_1
    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 722
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v20, 0x1

    goto :goto_0

    .line 603
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 604
    .local v10, "index":I
    if-gez v10, :cond_3

    .line 606
    const-string/jumbo v20, "rotate"

    const-string/jumbo v21, "released original pointer"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->onTouchUp()V

    .line 608
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    .line 609
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerIndex:I

    .line 612
    :cond_3
    const-string/jumbo v20, "rotate"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pointerId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", activePointerId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 621
    .end local v10    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 622
    const-string/jumbo v20, "rotate"

    const-string/jumbo v21, "We already have a valid pointer"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 626
    :cond_4
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 628
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 629
    .local v18, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 631
    .local v19, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 632
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    const/high16 v21, 0x42700000    # 60.0f

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x42700000    # 60.0f

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    const/high16 v23, 0x42700000    # 60.0f

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    const/high16 v24, 0x42700000    # 60.0f

    add-float v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 633
    .local v7, "copy":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getPaddingTop()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 634
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mIsInStraighten:Z

    .line 637
    .end local v7    # "copy":Landroid/graphics/RectF;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mIsInStraighten:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 638
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mLastTouchX:F

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    .line 641
    move-object/from16 v0, p0

    iput v9, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerIndex:I

    .line 642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->onTouchStart()V

    .line 648
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 626
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 656
    .end local v9    # "i":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 657
    .local v15, "pointerIndex":I
    if-gez v15, :cond_7

    .line 658
    const-string/jumbo v20, "rotate"

    const-string/jumbo v21, "could not find the original pointerId"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 662
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 663
    .restart local v18    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 666
    .restart local v19    # "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLastTouchX:F

    move/from16 v20, v0

    sub-float v8, v18, v20

    .line 669
    .local v8, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    move/from16 v20, v0

    add-float v20, v20, v8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    .line 672
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mLastTouchX:F

    .line 674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mIsInStraighten:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    .line 679
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_9

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    .line 684
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v13, v0

    .line 685
    .local v13, "midPoint":D
    const/high16 v20, 0x42340000    # 45.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v20, v20, v13

    const-wide v22, 0x4046800000000000L    # 45.0

    sub-double v11, v20, v22

    .line 686
    .local v11, "maxAngle":D
    const/high16 v20, 0x42340000    # 45.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v20, v20, v13

    const-wide v22, 0x4046800000000000L    # 45.0

    sub-double v16, v20, v22

    .line 687
    .local v16, "tempAngle":D
    const-wide v20, 0x4046800000000000L    # 45.0

    mul-double v20, v20, v16

    div-double v5, v20, v11

    .line 689
    .local v5, "angle":D
    neg-double v0, v5

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->straighten(DF)V

    .line 693
    .end local v5    # "angle":D
    .end local v11    # "maxAngle":D
    .end local v13    # "midPoint":D
    .end local v16    # "tempAngle":D
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    goto/16 :goto_1

    .line 699
    .end local v8    # "dx":F
    .end local v15    # "pointerIndex":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->onTouchUp()V

    .line 703
    :cond_b
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    .line 704
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerIndex:I

    .line 706
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mIsInStraighten:Z

    .line 707
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mLastTouchX:F

    goto/16 :goto_1

    .line 713
    :pswitch_5
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerId:I

    .line 714
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mActivePointerIndex:I

    .line 716
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mIsInStraighten:Z

    .line 717
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mLastTouchX:F

    goto/16 :goto_1

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public printDetails()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1961
    const-string/jumbo v0, "rotate"

    const-string/jumbo v3, "details:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const-string/jumbo v3, "rotate"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " flip horizontal: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    and-int/2addr v0, v5

    sget-object v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const-string/jumbo v0, "rotate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " flip vertical: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    and-int/2addr v4, v5

    sget-object v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    if-ne v4, v5, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const-string/jumbo v0, "rotate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const-string/jumbo v0, "rotate"

    const-string/jumbo v1, "--------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    return-void

    :cond_0
    move v0, v2

    .line 1962
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1964
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    .line 2147
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->onReset()V

    .line 2148
    return-void
.end method

.method public rotate90(Z)V
    .locals 2
    .param p1, "cw"    # Z

    .prologue
    .line 1875
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAnimationDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->rotate90(ZJ)V

    .line 1876
    return-void
.end method

.method public rotate90(ZJ)V
    .locals 3
    .param p1, "cw"    # Z
    .param p2, "durationMs"    # J

    .prologue
    .line 1879
    if-eqz p1, :cond_0

    const/16 v2, 0x5a

    :goto_0
    int-to-double v0, v2

    .line 1880
    .local v0, "destRotation":D
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/aviary/android/feather/widget/AdjustImageView;->rotateBy(DJ)V

    .line 1881
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->hideOutlines()V

    .line 1882
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->portrait:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->portrait:Z

    .line 1883
    return-void

    .line 1879
    .end local v0    # "destRotation":D
    :cond_0
    const/16 v2, -0x5a

    goto :goto_0

    .line 1882
    .restart local v0    # "destRotation":D
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected rotateBy(DJ)V
    .locals 13
    .param p1, "deltaRotation"    # D
    .param p3, "durationMs"    # J

    .prologue
    .line 1891
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    if-eqz v0, :cond_1

    .line 1948
    :cond_0
    :goto_0
    return-void

    .line 1895
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    .line 1896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1898
    .local v4, "startTime":J
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    add-double v10, v0, p1

    .line 1899
    .local v10, "destRotation":D
    iget-wide v8, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 1901
    .local v8, "srcRotation":D
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/aviary/android/feather/widget/AdjustImageView;->setImageRotation(DZ)V

    .line 1902
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1904
    iget-object v12, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$6;

    move-object v1, p0

    move-wide/from16 v2, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/aviary/android/feather/widget/AdjustImageView$6;-><init>(Lcom/aviary/android/feather/widget/AdjustImageView;JJDDD)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1943
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    if-nez v0, :cond_0

    .line 1944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 1945
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resetStraighten()V

    .line 1946
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    goto :goto_0
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAdjustViewBounds:Z

    .line 743
    if-eqz p1, :cond_0

    .line 744
    sget-object v0, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->FIT_CENTER:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->setScaleType(Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;)V

    .line 746
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 1849
    and-int/lit16 p1, p1, 0xff

    .line 1850
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 1851
    iput p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mAlpha:I

    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorMod:Z

    .line 1853
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->applyColorMod()V

    .line 1854
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1856
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .param p1, "baseline"    # I

    .prologue
    .line 1810
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    .line 1811
    iput p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaseline:I

    .line 1812
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->requestLayout()V

    .line 1814
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .param p1, "aligned"    # Z

    .prologue
    .line 1817
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 1818
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mBaselineAlignBottom:Z

    .line 1819
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->requestLayout()V

    .line 1821
    :cond_0
    return-void
.end method

.method public setCameraEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1982
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCameraEnabled:Z

    .line 1984
    :goto_0
    return-void

    .line 1983
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mCameraEnabled:Z

    goto :goto_0
.end method

.method public final setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1832
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1833
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1828
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1829
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1841
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mColorMod:Z

    .line 1843
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->applyColorMod()V

    .line 1844
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1846
    :cond_0
    return-void
.end method

.method public setEasing(Lit/sephiroth/android/library/imagezoom/easing/Easing;)V
    .locals 0
    .param p1, "value"    # Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 159
    return-void
.end method

.method public setEnableFreeRotate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mEnableFreeRotate:Z

    .line 128
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 884
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 885
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 859
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_2

    .line 860
    const/4 v2, 0x0

    iput v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    .line 861
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    .line 863
    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    .line 864
    .local v1, "oldWidth":I
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    .line 866
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AdjustImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 868
    iget v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->requestLayout()V

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 873
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_2
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 903
    iput p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLevel:I

    .line 904
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 906
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resizeFromDrawable()V

    .line 908
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1013
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    const/4 p1, 0x0

    .line 1018
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1020
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->configureBounds()V

    .line 1021
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1023
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    if-eq v0, p1, :cond_1

    .line 819
    :cond_0
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    iput p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    .line 821
    iput-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    .line 822
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resolveUri()V

    .line 823
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->requestLayout()V

    .line 824
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 826
    :cond_1
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 842
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResource:I

    .line 845
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mUri:Landroid/net/Uri;

    .line 846
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resolveUri()V

    .line 847
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->requestLayout()V

    .line 848
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 850
    :cond_1
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 791
    iput p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMaxHeight:I

    .line 792
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 768
    iput p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mMaxWidth:I

    .line 769
    return-void
.end method

.method public setOnResetListener(Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mResetListener:Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;

    .line 142
    return-void
.end method

.method public setScaleType(Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    .prologue
    .line 974
    if-nez p1, :cond_0

    .line 975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 979
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    .line 981
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mScaleType:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    sget-object v1, Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;->CENTER:Lcom/aviary/android/feather/widget/AdjustImageView$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->setWillNotCacheDrawing(Z)V

    .line 983
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->requestLayout()V

    .line 984
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 986
    :cond_1
    return-void

    .line 981
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 898
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 899
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->resizeFromDrawable()V

    .line 900
    return-void
.end method

.method public straighten(DF)V
    .locals 6
    .param p1, "newPosition"    # D
    .param p3, "posx"    # F

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    if-eqz v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 506
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    .line 508
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/widget/AdjustImageView;->setStraightenRotation(D)V

    .line 511
    iput p3, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mPosX:F

    .line 512
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    goto :goto_0
.end method

.method public straightenBy(DIJ)V
    .locals 15
    .param p1, "newPosition"    # D
    .param p3, "newx"    # I
    .param p4, "durationMs"    # J

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    if-eqz v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 535
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    .line 536
    .local v9, "srcx":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenAngle()D

    move-result-wide v0

    add-double v12, v0, p1

    .line 537
    .local v12, "destRotation":D
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenAngle()D

    move-result-wide v10

    .line 538
    .local v10, "srcRotation":D
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 540
    iget-object v14, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;

    move-object v1, p0

    move-wide/from16 v2, p4

    move-wide/from16 v6, p1

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/aviary/android/feather/widget/AdjustImageView$1;-><init>(Lcom/aviary/android/feather/widget/AdjustImageView;JJDIIDD)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
