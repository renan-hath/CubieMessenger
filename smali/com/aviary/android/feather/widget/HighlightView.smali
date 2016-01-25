.class public Lcom/aviary/android/feather/widget/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/HighlightView$Mode;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field protected animationDurationMs:I

.field private dHeight:I

.field private dWidth:I

.field final grid_cols:I

.field final grid_rows:I

.field final hysteresis:F

.field private mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

.field private mDrawRect:Landroid/graphics/Rect;

.field protected mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

.field private mHidden:Z

.field private mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

.field private mInitialAspectRatio:D

.field private mInternalStrokeColor:I

.field private mInternalStrokeColorPressed:I

.field private mInversePath:Landroid/graphics/Path;

.field private mLinesPaintShadow:Landroid/graphics/Paint;

.field private mLinesPath:Landroid/graphics/Path;

.field private mMaintainAspectRatio:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMinSize:I

.field private mMode:Lcom/aviary/android/feather/widget/HighlightView$Mode;

.field private final mOutlineFill:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private final mOutlinePaint2:Landroid/graphics/Paint;

.field private mOutsideFillColor:I

.field private mOutsideFillColorPressed:I

.field private mParentHeight:I

.field private mParentWidth:I

.field private mPath:Landroid/graphics/Path;

.field private mResizeDrawable:Landroid/graphics/drawable/Drawable;

.field protected volatile mRunning:Z

.field private mStrokeColor:I

.field private mStrokeColorPressed:I

.field private mStrokeWidth:I

.field private mStrokeWidth2:I

.field private mViewDrawingRect:Landroid/graphics/Rect;

.field private tempLayoutRectF:Landroid/graphics/RectF;

.field private tmpDisplayRectF:Landroid/graphics/RectF;

.field private tmpDrawRect2F:Landroid/graphics/RectF;

.field private tmpDrawRectF:Landroid/graphics/RectF;

.field private tmpRect2:Lcom/aviary/android/feather/library/graphics/RectD;

.field private tmpRect4:Landroid/graphics/Rect;

.field private tmpRectMotion:Landroid/graphics/Rect;

.field private tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/widget/HighlightView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 12
    .param p1, "context"    # Landroid/view/View;
    .param p2, "styleId"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v5, 0x14

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMinSize:I

    .line 49
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 53
    iput-boolean v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z

    .line 57
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 58
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    .line 59
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    .line 60
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPaintShadow:Landroid/graphics/Paint;

    .line 71
    iput v11, p0, Lcom/aviary/android/feather/widget/HighlightView;->grid_rows:I

    .line 72
    iput v11, p0, Lcom/aviary/android/feather/widget/HighlightView;->grid_cols:I

    .line 130
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    .line 132
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mPath:Landroid/graphics/Path;

    .line 133
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    .line 134
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInversePath:Landroid/graphics/Path;

    .line 135
    new-instance v5, Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-direct {v5}, Lcom/aviary/android/feather/library/graphics/RectD;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect2:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 136
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect4:Landroid/graphics/Rect;

    .line 138
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRect2F:Landroid/graphics/RectF;

    .line 139
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRectF:Landroid/graphics/RectF;

    .line 140
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDisplayRectF:Landroid/graphics/RectF;

    .line 141
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotion:Landroid/graphics/Rect;

    .line 142
    new-instance v5, Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-direct {v5}, Lcom/aviary/android/feather/library/graphics/RectD;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 143
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    .line 211
    const/high16 v5, 0x41f00000    # 30.0f

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->hysteresis:F

    .line 569
    iput-boolean v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mRunning:Z

    .line 570
    const/16 v5, 0x12c

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->animationDurationMs:I

    .line 571
    new-instance v5, Lit/sephiroth/android/library/imagezoom/easing/Quad;

    invoke-direct {v5}, Lit/sephiroth/android/library/imagezoom/easing/Quad;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 76
    if-lez p2, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/aviary/android/feather/R$styleable;->AviaryCropHighlightView:[I

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeWidth:I

    .line 80
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeColor:I

    .line 81
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeColorPressed:I

    .line 83
    const/4 v5, 0x4

    const/high16 v6, -0x67000000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutsideFillColor:I

    .line 84
    const/4 v5, 0x5

    const/high16 v6, -0x67000000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutsideFillColorPressed:I

    .line 86
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeWidth2:I

    .line 87
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInternalStrokeColor:I

    .line 88
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInternalStrokeColorPressed:I

    .line 90
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v3, v5

    .line 107
    .local v3, "w":D
    iget-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-double v1, v5

    .line 109
    .local v1, "h":D
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    .line 110
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    .line 114
    .end local v1    # "h":D
    .end local v3    # "w":D
    :cond_0
    iget-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mParentWidth:I

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mParentHeight:I

    .line 117
    return-void

    .line 94
    :cond_1
    iput v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeWidth:I

    .line 95
    iput v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeWidth2:I

    .line 96
    iput v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeColor:I

    .line 97
    iput v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeColorPressed:I

    .line 98
    iput v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutsideFillColor:I

    .line 99
    iput v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutsideFillColorPressed:I

    .line 100
    iput v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInternalStrokeColor:I

    .line 101
    iput v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInternalStrokeColorPressed:I

    .line 102
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/HighlightView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/HighlightView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/aviary/android/feather/widget/HighlightView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/aviary/android/feather/widget/HighlightView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/HighlightView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z

    return p1
.end method

.method private adjustCropRect(Lcom/aviary/android/feather/library/graphics/RectD;)V
    .locals 14
    .param p1, "r"    # Lcom/aviary/android/feather/library/graphics/RectD;

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    .line 441
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 442
    iget-object v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v4, v4, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-wide v6, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    sub-double/2addr v4, v6

    invoke-virtual {p1, v4, v5, v8, v9}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 447
    :cond_0
    :goto_0
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    .line 448
    iget-object v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v4, v4, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-wide v6, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    sub-double/2addr v4, v6

    invoke-virtual {p1, v8, v9, v4, v5}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 453
    :cond_1
    :goto_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .local v0, "diffx":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 455
    .local v2, "diffy":D
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v6}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    .line 457
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    .line 458
    iget-object v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v4, v4, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-wide v6, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    sub-double v0, v4, v6

    .line 459
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    add-double/2addr v4, v0

    iput-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 478
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_3

    .line 479
    cmpl-double v4, v2, v10

    if-eqz v4, :cond_9

    .line 480
    iget-wide v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    mul-double v0, v2, v4

    .line 481
    div-double v4, v0, v12

    invoke-virtual {p1, v4, v5, v8, v9}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    .line 488
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/graphics/RectD;->sort()V

    .line 489
    return-void

    .line 443
    .end local v0    # "diffx":D
    .end local v2    # "diffy":D
    :cond_4
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 444
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    sub-double/2addr v4, v6

    neg-double v4, v4

    invoke-virtual {p1, v4, v5, v8, v9}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    goto :goto_0

    .line 449
    :cond_5
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 450
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    sub-double/2addr v4, v6

    neg-double v4, v4

    invoke-virtual {p1, v8, v9, v4, v5}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    goto :goto_1

    .line 460
    .restart local v0    # "diffx":D
    .restart local v2    # "diffy":D
    :cond_6
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 461
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    sub-double v0, v4, v6

    .line 462
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    neg-double v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    goto :goto_2

    .line 465
    :cond_7
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v6}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 466
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    .line 468
    iget-object v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v4, v4, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-wide v6, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    sub-double v2, v4, v6

    .line 469
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    add-double/2addr v4, v2

    iput-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    goto :goto_2

    .line 471
    :cond_8
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 473
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v6, v6, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    sub-double v2, v4, v6

    .line 474
    iget-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    neg-double v6, v2

    add-double/2addr v4, v6

    iput-wide v4, p1, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    goto/16 :goto_2

    .line 482
    :cond_9
    cmpl-double v4, v0, v10

    if-eqz v4, :cond_3

    .line 483
    iget-wide v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    div-double v2, v0, v4

    .line 484
    div-double v4, v2, v12

    invoke-virtual {p1, v8, v9, v4, v5}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    goto/16 :goto_3
.end method

.method private adjustRealCropRect(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Lcom/aviary/android/feather/library/graphics/RectD;)Lcom/aviary/android/feather/library/graphics/RectD;
    .locals 14
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "rect"    # Lcom/aviary/android/feather/library/graphics/RectD;
    .param p3, "outsideRect"    # Lcom/aviary/android/feather/library/graphics/RectD;

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 495
    .local v1, "adjusted":Z
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    double-to-float v9, v9

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    double-to-float v10, v10

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    double-to-float v11, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    double-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 496
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 498
    const/16 v8, 0x9

    new-array v6, v8, [F

    .line 499
    .local v6, "mvalues":[F
    invoke-virtual {p1, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 500
    const/4 v8, 0x0

    aget v7, v6, v8

    .line 502
    .local v7, "scale":F
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_7

    .line 503
    const/4 v1, 0x1

    .line 504
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-object v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    sub-double/2addr v8, v10

    float-to-double v10, v7

    div-double/2addr v8, v10

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 510
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8

    .line 511
    const/4 v1, 0x1

    .line 512
    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-object v12, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    sub-double/2addr v10, v12

    float-to-double v12, v7

    div-double/2addr v10, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 518
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    double-to-float v9, v9

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    double-to-float v10, v10

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    double-to-float v11, v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    double-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 519
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 521
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {p3 .. p3}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 522
    const/4 v1, 0x1

    .line 523
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-object v12, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    sub-double/2addr v10, v12

    float-to-double v12, v7

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 524
    :cond_2
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-object v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-double v10, v10

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    sub-double/2addr v10, v12

    neg-double v10, v10

    float-to-double v12, v7

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 527
    :cond_3
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {p3 .. p3}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_5

    .line 528
    const/4 v1, 0x1

    .line 529
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-object v12, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    sub-double/2addr v10, v12

    float-to-double v12, v7

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 530
    :cond_4
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_5

    .line 531
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-object v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v10

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    sub-double/2addr v10, v12

    neg-double v10, v10

    float-to-double v12, v7

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 534
    :cond_5
    iget-boolean v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v8, :cond_6

    if-eqz v1, :cond_6

    .line 535
    iget-wide v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_9

    .line 536
    invoke-virtual/range {p2 .. p2}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    div-double v4, v8, v10

    .line 537
    .local v4, "dy":D
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    add-double/2addr v8, v4

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 544
    .end local v4    # "dy":D
    :cond_6
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/aviary/android/feather/library/graphics/RectD;->sort()V

    .line 545
    return-object p2

    .line 505
    :cond_7
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 506
    const/4 v1, 0x1

    .line 507
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    sub-double/2addr v8, v10

    neg-double v8, v8

    float-to-double v10, v7

    div-double/2addr v8, v10

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    goto/16 :goto_0

    .line 513
    :cond_8
    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 514
    const/4 v1, 0x1

    .line 515
    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->tempLayoutRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v10

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    sub-double/2addr v10, v12

    neg-double v10, v10

    float-to-double v12, v7

    div-double/2addr v10, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    goto/16 :goto_1

    .line 539
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    mul-double v2, v8, v10

    .line 540
    .local v2, "dx":D
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    add-double/2addr v8, v2

    move-object/from16 v0, p2

    iput-wide v8, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    goto :goto_2
.end method

.method private computeLayout(ZLandroid/graphics/Rect;)V
    .locals 9
    .param p1, "adjust"    # Z
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const-wide/16 v1, 0x0

    .line 549
    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/HighlightView;->adjustCropRect(Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 551
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect2:Lcom/aviary/android/feather/library/graphics/RectD;

    iget v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mParentWidth:I

    int-to-double v5, v3

    iget v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mParentHeight:I

    int-to-double v7, v3

    move-wide v3, v1

    invoke-virtual/range {v0 .. v8}, Lcom/aviary/android/feather/library/graphics/RectD;->set(DDDD)V

    .line 552
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect2:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-direct {p0, v0, v1, v2}, Lcom/aviary/android/feather/widget/HighlightView;->adjustRealCropRect(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Lcom/aviary/android/feather/library/graphics/RectD;)Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {p0, v0, v1, p2}, Lcom/aviary/android/feather/widget/HighlightView;->getDisplayRect(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Landroid/graphics/Rect;)V

    .line 555
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Lcom/aviary/android/feather/library/graphics/RectD;Z)V
    .locals 24
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "m"    # Landroid/graphics/Matrix;
    .param p3, "imageRect"    # Lcom/aviary/android/feather/library/graphics/RectD;
    .param p4, "cropRect"    # Lcom/aviary/android/feather/library/graphics/RectD;
    .param p5, "maintainAspectRatio"    # Z

    .prologue
    .line 579
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aviary/android/feather/widget/HighlightView;->mRunning:Z

    if-nez v3, :cond_0

    .line 580
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/aviary/android/feather/widget/HighlightView;->mRunning:Z

    .line 581
    sget-object v3, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/widget/HighlightView;->setMode(Lcom/aviary/android/feather/widget/HighlightView$Mode;)V

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->postInvalidate()V

    .line 584
    new-instance v3, Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/aviary/android/feather/widget/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 585
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 586
    new-instance v3, Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/aviary/android/feather/library/graphics/RectD;-><init>(Lcom/aviary/android/feather/library/graphics/RectD;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 587
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v17

    div-double v21, v3, v17

    .line 590
    .local v21, "ratio":D
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 593
    .local v20, "oldRect":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 594
    .local v19, "newRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 596
    const/4 v3, 0x2

    new-array v15, v3, [F

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    aput v4, v15, v3

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aput v4, v15, v3

    .line 597
    .local v15, "topLeft":[F
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v16, v0

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    aput v4, v16, v3

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    aput v4, v16, v3

    .line 599
    .local v16, "bottomRight":[F
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v7, v3

    .line 600
    .local v7, "pt1":D
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-double v9, v3

    .line 601
    .local v9, "pt2":D
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-double v11, v3

    .line 602
    .local v11, "pt3":D
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-double v13, v3

    .line 604
    .local v13, "pt4":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 606
    .local v5, "startTime":J
    sget-object v23, Lcom/aviary/android/feather/widget/HighlightView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aviary/android/feather/widget/HighlightView$1;

    move-object/from16 v4, p0

    move-object/from16 v17, p1

    move/from16 v18, p5

    invoke-direct/range {v3 .. v18}, Lcom/aviary/android/feather/widget/HighlightView$1;-><init>(Lcom/aviary/android/feather/widget/HighlightView;JDDDD[F[FLandroid/view/View;Z)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    .end local v5    # "startTime":J
    .end local v7    # "pt1":D
    .end local v9    # "pt2":D
    .end local v11    # "pt3":D
    .end local v13    # "pt4":D
    .end local v15    # "topLeft":[F
    .end local v16    # "bottomRight":[F
    .end local v19    # "newRect":Landroid/graphics/Rect;
    .end local v20    # "oldRect":Landroid/graphics/Rect;
    .end local v21    # "ratio":D
    :cond_0
    return-void
.end method

.method calculateDx(DD)D
    .locals 6
    .param p1, "dy"    # D
    .param p3, "dx"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 282
    move-wide v0, p3

    .line 283
    .local v0, "ndx":D
    cmpl-double v2, p1, v4

    if-eqz v2, :cond_1

    .line 284
    iget-wide v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    mul-double v0, p1, v2

    .line 285
    cmpl-double v2, p3, v4

    if-eqz v2, :cond_0

    .line 286
    cmpl-double v2, p3, v4

    if-lez v2, :cond_2

    .line 287
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 292
    :cond_0
    :goto_0
    move-wide p3, v0

    .line 294
    :cond_1
    return-wide v0

    .line 289
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v0, v2, v4

    goto :goto_0
.end method

.method calculateDy(DD)D
    .locals 6
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 266
    move-wide v0, p3

    .line 267
    .local v0, "ndy":D
    cmpl-double v2, p1, v4

    if-eqz v2, :cond_1

    .line 268
    iget-wide v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    div-double v0, p1, v2

    .line 269
    cmpl-double v2, p3, v4

    if-eqz v2, :cond_0

    .line 270
    cmpl-double v2, p3, v4

    if-lez v2, :cond_2

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 276
    :cond_0
    :goto_0
    move-wide p3, v0

    .line 278
    :cond_1
    return-wide v0

    .line 273
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v0, v2, v4

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x40400000    # 3.0f

    .line 146
    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mHidden:Z

    if-eqz v7, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 149
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInversePath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 150
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 152
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRectF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 153
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRect2F:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInversePath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRect2F:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 156
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInversePath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRectF:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 158
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRectF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 159
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRectF:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 161
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRect2F:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 162
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDrawRect2F:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 164
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v7, v10

    .line 165
    .local v1, "colStep":F
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v7, v10

    .line 167
    .local v5, "rowStep":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_2

    .line 168
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v2

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 169
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v2

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v11, :cond_3

    .line 173
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    int-to-float v9, v2

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 174
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    int-to-float v9, v2

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 178
    :cond_3
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInversePath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v7, 0x1

    .line 184
    .local v3, "left":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v7, 0x1

    .line 185
    .local v4, "right":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v7, 0x4

    .line 186
    .local v6, "top":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v7, 0x3

    .line 187
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    .line 189
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    sub-int v8, v3, v8

    iget v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    sub-int v9, v6, v9

    iget v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    add-int/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    sub-int v8, v4, v8

    iget v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    sub-int v9, v6, v9

    iget v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    add-int/2addr v10, v4

    iget v11, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    add-int/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    sub-int v8, v3, v8

    iget v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    sub-int v9, v0, v9

    iget v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    add-int/2addr v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    sub-int v8, v4, v8

    iget v9, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    sub-int v9, v0, v9

    iget v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    add-int/2addr v10, v4

    iget v11, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    add-int/2addr v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    iget-object v7, p0, Lcom/aviary/android/feather/widget/HighlightView;->mResizeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getCropRectD()Lcom/aviary/android/feather/library/graphics/RectD;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "supportRect"    # Lcom/aviary/android/feather/library/graphics/RectD;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDisplayRectF:Landroid/graphics/RectF;

    iget-wide v1, p2, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    double-to-float v1, v1

    iget-wide v2, p2, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    double-to-float v2, v2

    iget-wide v3, p2, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    double-to-float v3, v3

    iget-wide v4, p2, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    double-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 559
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDisplayRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 560
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDisplayRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDisplayRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDisplayRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpDisplayRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 561
    return-void
.end method

.method public getDrawRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHit(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x41f00000    # 30.0f

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .local v1, "r":Landroid/graphics/Rect;
    invoke-direct {p0, v5, v1}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 216
    const/4 v2, 0x1

    .line 217
    .local v2, "retval":I
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v6, v7

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v6, v7

    cmpg-float v6, p2, v6

    if-gez v6, :cond_5

    move v3, v4

    .line 218
    .local v3, "verticalCheck":Z
    :goto_0
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v7

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_6

    move v0, v4

    .line 219
    .local v0, "horizCheck":Z
    :goto_1
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x2

    .line 220
    :cond_0
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x4

    .line 221
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    if-eqz v0, :cond_2

    or-int/lit8 v2, v2, 0x8

    .line 222
    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    if-eqz v0, :cond_3

    or-int/lit8 v2, v2, 0x10

    .line 223
    :cond_3
    if-ne v2, v4, :cond_4

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v2, 0x20

    .line 224
    :cond_4
    return v2

    .end local v0    # "horizCheck":Z
    .end local v3    # "verticalCheck":Z
    :cond_5
    move v3, v5

    .line 217
    goto :goto_0

    .restart local v3    # "verticalCheck":Z
    :cond_6
    move v0, v5

    .line 218
    goto :goto_1
.end method

.method public getInvalidateRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 2

    .prologue
    .line 434
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 435
    .local v0, "values":[F
    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 436
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method growWithConstantAspectSize(IDD)V
    .locals 25
    .param p1, "edge"    # I
    .param p2, "dx"    # D
    .param p4, "dy"    # D

    .prologue
    .line 299
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isLeftEdge(I)Z

    move-result v7

    .line 300
    .local v7, "left":Z
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isRightEdge(I)Z

    move-result v12

    .line 301
    .local v12, "right":Z
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isTopEdge(I)Z

    move-result v14

    .line 302
    .local v14, "top":Z
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isBottomEdge(I)Z

    move-result v5

    .line 303
    .local v5, "bottom":Z
    if-nez v7, :cond_0

    if-eqz v12, :cond_5

    :cond_0
    const/4 v6, 0x1

    .line 304
    .local v6, "horizontal":Z
    :goto_0
    if-nez v14, :cond_1

    if-eqz v5, :cond_6

    :cond_1
    const/4 v15, 0x1

    .line 305
    .local v15, "vertical":Z
    :goto_1
    if-eqz v6, :cond_2

    if-nez v15, :cond_7

    :cond_2
    const/4 v13, 0x1

    .line 308
    .local v13, "singleSide":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->mMinSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/HighlightView;->getScale()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 311
    .local v16, "widthCap":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/aviary/android/feather/library/graphics/RectD;->set(Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 313
    if-eqz v13, :cond_b

    .line 314
    if-eqz v6, :cond_9

    .line 316
    move-wide/from16 v8, p2

    .line 317
    .local v8, "ndx":D
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/aviary/android/feather/widget/HighlightView;->calculateDy(DD)D

    move-result-wide v10

    .line 319
    .local v10, "ndy":D
    if-eqz v7, :cond_8

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    move-wide/from16 v19, v0

    add-double v19, v19, v8

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v21, v10, v21

    invoke-virtual/range {v18 .. v22}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    .line 360
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v18

    cmpl-double v18, v18, v16

    if-ltz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v18

    cmpl-double v18, v18, v16

    if-ltz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/aviary/android/feather/library/graphics/RectD;->contains(Lcom/aviary/android/feather/library/graphics/RectD;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/aviary/android/feather/library/graphics/RectD;->set(Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 364
    :cond_4
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 365
    return-void

    .line 303
    .end local v6    # "horizontal":Z
    .end local v8    # "ndx":D
    .end local v10    # "ndy":D
    .end local v13    # "singleSide":Z
    .end local v15    # "vertical":Z
    .end local v16    # "widthCap":D
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 304
    .restart local v6    # "horizontal":Z
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 305
    .restart local v15    # "vertical":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 323
    .restart local v8    # "ndx":D
    .restart local v10    # "ndy":D
    .restart local v13    # "singleSide":Z
    .restart local v16    # "widthCap":D
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    move-wide/from16 v19, v0

    add-double v19, v19, v8

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    neg-double v0, v10

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v21, v21, v23

    invoke-virtual/range {v18 .. v22}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    goto :goto_3

    .line 329
    .end local v8    # "ndx":D
    .end local v10    # "ndy":D
    :cond_9
    move-wide/from16 v10, p4

    .line 330
    .restart local v10    # "ndy":D
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/aviary/android/feather/widget/HighlightView;->calculateDx(DD)D

    move-result-wide v8

    .line 331
    .restart local v8    # "ndx":D
    if-eqz v14, :cond_a

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    move-wide/from16 v19, v0

    add-double v19, v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v19, v8, v19

    const-wide/16 v21, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    goto/16 :goto_3

    .line 334
    :cond_a
    if-eqz v5, :cond_3

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    move-wide/from16 v19, v0

    add-double v19, v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    neg-double v0, v8

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v19, v19, v21

    const-wide/16 v21, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    goto/16 :goto_3

    .line 342
    .end local v8    # "ndx":D
    .end local v10    # "ndy":D
    :cond_b
    move-wide/from16 v8, p2

    .line 343
    .restart local v8    # "ndx":D
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/widget/HighlightView;->calculateDy(DD)D

    move-result-wide v10

    .line 345
    .restart local v10    # "ndy":D
    if-eqz v7, :cond_c

    if-eqz v14, :cond_c

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    move-wide/from16 v19, v0

    add-double v19, v19, v8

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    move-wide/from16 v19, v0

    add-double v19, v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    goto/16 :goto_3

    .line 348
    :cond_c
    if-eqz v7, :cond_d

    if-eqz v5, :cond_d

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    move-wide/from16 v19, v0

    add-double v19, v19, v8

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    move-wide/from16 v19, v0

    sub-double v19, v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    goto/16 :goto_3

    .line 351
    :cond_d
    if-eqz v12, :cond_e

    if-eqz v14, :cond_e

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    move-wide/from16 v19, v0

    add-double v19, v19, v8

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    move-wide/from16 v19, v0

    sub-double v19, v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    goto/16 :goto_3

    .line 354
    :cond_e
    if-eqz v12, :cond_3

    if-eqz v5, :cond_3

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    move-wide/from16 v19, v0

    add-double v19, v19, v8

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    move-wide/from16 v19, v0

    add-double v19, v19, v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    goto/16 :goto_3
.end method

.method growWithoutConstantAspectSize(IDD)V
    .locals 21
    .param p1, "edge"    # I
    .param p2, "dx"    # D
    .param p4, "dy"    # D

    .prologue
    .line 369
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isLeftEdge(I)Z

    move-result v4

    .line 370
    .local v4, "left":Z
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isRightEdge(I)Z

    move-result v9

    .line 371
    .local v9, "right":Z
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isTopEdge(I)Z

    move-result v10

    .line 372
    .local v10, "top":Z
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/widget/HighlightView;->isBottomEdge(I)Z

    move-result v2

    .line 373
    .local v2, "bottom":Z
    if-nez v4, :cond_0

    if-eqz v9, :cond_5

    :cond_0
    const/4 v3, 0x1

    .line 374
    .local v3, "horizontal":Z
    :goto_0
    if-nez v10, :cond_1

    if-eqz v2, :cond_6

    :cond_1
    const/4 v11, 0x1

    .line 377
    .local v11, "vertical":Z
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->mMinSize:I

    int-to-double v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/HighlightView;->getScale()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v12, v14, v16

    .line 379
    .local v12, "widthCap":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v14, v15}, Lcom/aviary/android/feather/library/graphics/RectD;->set(Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 381
    move-wide/from16 v7, p4

    .line 382
    .local v7, "ndy":D
    move-wide/from16 v5, p2

    .line 384
    .local v5, "ndx":D
    if-eqz v3, :cond_2

    .line 386
    if-eqz v4, :cond_7

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    add-double/2addr v15, v5

    iput-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    .line 388
    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v17, v7, v17

    invoke-virtual/range {v14 .. v18}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    .line 395
    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    .line 397
    if-eqz v10, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    add-double/2addr v15, v7

    iput-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    .line 399
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v15, v5, v15

    const-wide/16 v17, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    .line 406
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v14}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v14

    cmpl-double v14, v14, v12

    if-ltz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v14}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v14

    cmpl-double v14, v14, v12

    if-ltz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v14, v15}, Lcom/aviary/android/feather/library/graphics/RectD;->contains(Lcom/aviary/android/feather/library/graphics/RectD;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v14, v15}, Lcom/aviary/android/feather/library/graphics/RectD;->set(Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 410
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 411
    return-void

    .line 373
    .end local v3    # "horizontal":Z
    .end local v5    # "ndx":D
    .end local v7    # "ndy":D
    .end local v11    # "vertical":Z
    .end local v12    # "widthCap":D
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 374
    .restart local v3    # "horizontal":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 389
    .restart local v5    # "ndx":D
    .restart local v7    # "ndy":D
    .restart local v11    # "vertical":Z
    .restart local v12    # "widthCap":D
    :cond_7
    if-eqz v9, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    add-double/2addr v15, v5

    iput-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    .line 391
    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    const-wide/16 v15, 0x0

    neg-double v0, v7

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v17, v17, v19

    invoke-virtual/range {v14 .. v18}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    goto :goto_2

    .line 400
    :cond_8
    if-eqz v2, :cond_3

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    add-double/2addr v15, v7

    iput-wide v15, v14, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    .line 402
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotionD:Lcom/aviary/android/feather/library/graphics/RectD;

    neg-double v15, v5

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    const-wide/16 v17, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/aviary/android/feather/library/graphics/RectD;->inset(DD)V

    goto :goto_3
.end method

.method handleMotion(IFF)V
    .locals 12
    .param p1, "edge"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mRunning:Z

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect4:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 246
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 248
    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    .line 249
    float-to-double v0, p2

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v6}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect4:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v0, v6

    float-to-double v6, p3

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v8}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect4:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-virtual {p0, v0, v1, v6, v7}, Lcom/aviary/android/feather/widget/HighlightView;->moveBy(DD)V

    goto :goto_0

    .line 251
    :cond_2
    and-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_3

    const/4 p2, 0x0

    .line 252
    :cond_3
    and-int/lit8 v0, p1, 0x18

    if-nez v0, :cond_4

    const/4 p3, 0x0

    .line 255
    :cond_4
    float-to-double v0, p2

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v6}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect4:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v2, v0

    .line 256
    .local v2, "xDelta":D
    float-to-double v0, p3

    iget-object v6, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v6}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRect4:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v4, v0

    .line 257
    .local v4, "yDelta":D
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    move v1, p1

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/widget/HighlightView;->growWithConstantAspectSize(IDD)V

    goto :goto_0

    :cond_5
    move-object v0, p0

    move v1, p1

    .line 260
    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/widget/HighlightView;->growWithoutConstantAspectSize(IDD)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mRunning:Z

    if-nez v0, :cond_0

    .line 565
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 567
    :cond_0
    return-void
.end method

.method isBottomEdge(I)Z
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 240
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLeftEdge(I)Z
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 228
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRightEdge(I)Z
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 232
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mRunning:Z

    return v0
.end method

.method isTopEdge(I)Z
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 236
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveBy(DD)V
    .locals 2
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    .line 414
    double-to-float v0, p1

    double-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/HighlightView;->moveBy(FF)V

    .line 415
    return-void
.end method

.method moveBy(FF)V
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const-wide/16 v7, 0x0

    .line 418
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 419
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 420
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v1, v1, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    iget-object v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v3, v3, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    sub-double/2addr v1, v3

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v3, v3, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    iget-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v5, v5, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    sub-double/2addr v3, v5

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 421
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v1, v1, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    iget-object v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v3, v3, Lcom/aviary/android/feather/library/graphics/RectD;->right:D

    sub-double/2addr v1, v3

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iget-object v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v3, v3, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    iget-object v5, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v5, v5, Lcom/aviary/android/feather/library/graphics/RectD;->bottom:D

    sub-double/2addr v3, v5

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/library/graphics/RectD;->offset(DD)V

    .line 423
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 425
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 426
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->tmpRectMotion:Landroid/graphics/Rect;

    iget v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->dWidth:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->dHeight:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 427
    return-void
.end method

.method public onSizeChanged(Lcom/aviary/android/feather/widget/CropImageView;IIII)V
    .locals 1
    .param p1, "cropImageView"    # Lcom/aviary/android/feather/widget/CropImageView;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "oldw"    # I
    .param p5, "oldh"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/aviary/android/feather/widget/CropImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 721
    iput p2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mParentWidth:I

    .line 722
    iput p3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mParentHeight:I

    .line 723
    return-void
.end method

.method public setMinSize(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMinSize:I

    .line 124
    return-void
.end method

.method public setMode(Lcom/aviary/android/feather/widget/HighlightView$Mode;)V
    .locals 3
    .param p1, "mode"    # Lcom/aviary/android/feather/widget/HighlightView$Mode;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMode:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    if-eq p1, v0, :cond_0

    .line 203
    iput-object p1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMode:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    .line 204
    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMode:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMode:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInternalStrokeColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPaintShadow:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMode:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x66

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    iget-object v1, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMode:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutsideFillColor:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    :cond_0
    return-void

    .line 204
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeColorPressed:I

    goto :goto_0

    .line 205
    :cond_2
    iget v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInternalStrokeColorPressed:I

    goto :goto_1

    .line 206
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 207
    :cond_4
    iget v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutsideFillColorPressed:I

    goto :goto_3
.end method

.method public setup(Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Lcom/aviary/android/feather/library/graphics/RectD;Z)V
    .locals 10
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "imageRect"    # Lcom/aviary/android/feather/library/graphics/RectD;
    .param p3, "cropRect"    # Lcom/aviary/android/feather/library/graphics/RectD;
    .param p4, "maintainAspectRatio"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 646
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 647
    iput-object p3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 648
    new-instance v2, Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-direct {v2, p2}, Lcom/aviary/android/feather/library/graphics/RectD;-><init>(Lcom/aviary/android/feather/library/graphics/RectD;)V

    iput-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mImageRect:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 649
    iput-boolean p4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z

    .line 651
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aviary/android/feather/widget/HighlightView;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v4}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v4

    div-double v0, v2, v4

    .line 653
    .local v0, "ratio":D
    iput-wide v0, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInitialAspectRatio:D

    .line 655
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v2}, Lcom/aviary/android/feather/widget/HighlightView;->computeLayout(ZLandroid/graphics/Rect;)V

    .line 657
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 658
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 659
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "setHinting"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 664
    :goto_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeWidth2:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 665
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 666
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 667
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mInternalStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    :try_start_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlinePaint2:Landroid/graphics/Paint;

    const-string/jumbo v3, "setHinting"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 672
    :goto_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutsideFillColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 673
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 674
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 675
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 677
    :try_start_2
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mOutlineFill:Landroid/graphics/Paint;

    const-string/jumbo v3, "setHinting"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/aviary/android/feather/library/utils/ReflectionUtils$ReflectionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 680
    :goto_2
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPaintShadow:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aviary/android/feather/widget/HighlightView;->mStrokeWidth2:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 681
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 682
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPaintShadow:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPaintShadow:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 684
    iget-object v2, p0, Lcom/aviary/android/feather/widget/HighlightView;->mLinesPaintShadow:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x40000000    # 2.0f

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 686
    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->None:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/HighlightView;->setMode(Lcom/aviary/android/feather/widget/HighlightView$Mode;)V

    .line 687
    return-void

    .line 678
    :catch_0
    move-exception v2

    goto :goto_2

    .line 670
    :catch_1
    move-exception v2

    goto :goto_1

    .line 662
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method
