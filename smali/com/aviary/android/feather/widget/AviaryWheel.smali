.class public Lcom/aviary/android/feather/widget/AviaryWheel;
.super Landroid/view/View;
.source "AviaryWheel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;
.implements Lcom/aviary/android/feather/widget/VibrationWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;
    }
.end annotation


# static fields
.field private static final EDGE_HEIGHT:D = 0.5517241379310345

.field private static final HARD_LIMIT:I = 0x800

.field private static final INVALID_VALUE:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "wheel"

.field private static final MAX_DELTA:I = 0x32

.field private static final SHADER_MULTIPLIER:F = 2.2f


# instance fields
.field private debugPaint:Landroid/graphics/Paint;

.field private mCurrentValue:D

.field private mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

.field private mEdgeMatrixLeft:Landroid/graphics/Matrix;

.field private mEdgeMatrixRight:Landroid/graphics/Matrix;

.field private mEdgeOffset:F

.field private mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

.field private mEdgeStyle:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHeightDiff:I

.field private mInLayout:Z

.field private mLastMotionValue:I

.field private mLayoutCompleted:Z

.field private mLineWidth:I

.field private mLinesIndicator:Landroid/graphics/drawable/Drawable;

.field private mLinesPaint:Landroid/graphics/Paint;

.field private mLinesSingle:Landroid/graphics/drawable/Drawable;

.field private mMaxX:I

.field private mMinX:I

.field private mNextValue:I

.field private mOverscrollX:F

.field private mScaledDensity:F

.field private mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

.field private mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

.field private mShader:Landroid/graphics/BitmapShader;

.field private mShaderMatrix:Landroid/graphics/Matrix;

.field private mShaderWidth:I

.field private mShadowBottom:Landroid/graphics/drawable/Drawable;

.field private mToLeft:Z

.field private mVibrationHelper:Lcom/aviary/android/feather/widget/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryWheelStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixLeft:Landroid/graphics/Matrix;

    .line 98
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixRight:Landroid/graphics/Matrix;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mHeightDiff:I

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mOverscrollX:F

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AviaryWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method private createShader(II)V
    .locals 19
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 280
    move/from16 v0, p1

    int-to-float v2, v0

    const v3, 0x400ccccd    # 2.2f

    mul-float/2addr v2, v3

    float-to-int v7, v2

    .line 283
    .local v7, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesSingle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 284
    .local v11, "linesBitmap":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesSingle:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 285
    .local v16, "shader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 287
    .local v6, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 289
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v17, v2, 0x2

    .line 290
    .local v17, "w2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 291
    .local v9, "indicator_width":I
    div-int/lit8 v2, v9, 0x2

    sub-int v10, v17, v2

    .line 292
    .local v10, "left":I
    div-int/lit8 v2, v9, 0x2

    add-int v15, v17, v2

    .line 294
    .local v15, "right":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLineWidth:I

    rem-int v2, v10, v2

    int-to-double v13, v2

    .line 297
    .local v13, "rest":D
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 298
    .local v12, "matrix":Landroid/graphics/Matrix;
    double-to-float v2, v13

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 300
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v10

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v10, v3, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 308
    int-to-float v2, v15

    const/4 v3, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 310
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v11, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShader:Landroid/graphics/BitmapShader;

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 312
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 313
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShaderWidth:I

    .line 315
    const-wide v2, 0x3fe1a7b9611a7b96L    # 0.5517241379310345

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v8, v2

    .line 316
    .local v8, "height":I
    const/high16 v2, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScaledDensity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 318
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixLeft:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixLeft:Landroid/graphics/Matrix;

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixLeft:Landroid/graphics/Matrix;

    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixLeft:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mHeightDiff:I

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    mul-int/lit8 v3, v18, 0x2

    invoke-virtual {v2, v8, v3}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->setSize(II)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixRight:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixRight:Landroid/graphics/Matrix;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixRight:Landroid/graphics/Matrix;

    sub-int v3, p1, v18

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixRight:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mHeightDiff:I

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    mul-int/lit8 v3, v18, 0x2

    invoke-virtual {v2, v8, v3}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->setSize(II)V

    .line 329
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 126
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScaledDensity:F

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 129
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    sget-object v3, Lcom/aviary/android/feather/R$styleable;->AviaryWheel:[I

    invoke-virtual {v2, p2, v3, p3, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesSingle:Landroid/graphics/drawable/Drawable;

    .line 132
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesIndicator:Landroid/graphics/drawable/Drawable;

    .line 133
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeStyle:I

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScaledDensity:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeOffset:F

    .line 138
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesSingle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLineWidth:I

    .line 139
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesPaint:Landroid/graphics/Paint;

    .line 142
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 144
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 148
    :cond_0
    new-instance v3, Lcom/aviary/android/feather/widget/ScrollerRunnable;

    const/16 v4, 0xc8

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;-><init>(Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;IILandroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    .line 151
    new-instance v3, Lcom/aviary/android/feather/widget/VibrationHelper;

    invoke-direct {v3, p1, v8}, Lcom/aviary/android/feather/widget/VibrationHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mVibrationHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    .line 153
    new-instance v3, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeStyle:I

    invoke-direct {v3, v4, v5}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    .line 154
    new-instance v3, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeStyle:I

    invoke-direct {v3, v4, v5}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    .line 156
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v3, v9}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->setEdgeMaxAlpha(I)V

    .line 157
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v3, v9}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->setEdgeMaxAlpha(I)V

    .line 159
    const/4 v3, -0x1

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mNextValue:I

    .line 160
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    .line 161
    return-void
.end method

.method private onFinishedMovement()V
    .locals 0

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->scrollCompleted()V

    .line 611
    return-void
.end method

.method private trackMotionValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 624
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    .line 625
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->scrollRunning()V

    .line 626
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->postInvalidate()V

    .line 627
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 455
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 457
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getPreviousX()I

    move-result v0

    .line 459
    .local v0, "oldx":I
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getCurrX()I

    move-result v1

    .line 461
    .local v1, "x":I
    if-eq v0, v1, :cond_0

    .line 462
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    if-lt v0, v2, :cond_1

    if-le v0, v1, :cond_1

    .line 463
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->onAbsorb(I)V

    .line 469
    .end local v0    # "oldx":I
    .end local v1    # "x":I
    :cond_0
    :goto_0
    return-void

    .line 464
    .restart local v0    # "oldx":I
    .restart local v1    # "x":I
    :cond_1
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMaxX:I

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMaxX:I

    if-gt v0, v2, :cond_0

    if-le v1, v0, :cond_0

    .line 465
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->onAbsorb(I)V

    goto :goto_0
.end method

.method public getMaxX()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMaxX:I

    return v0
.end method

.method public getMinX()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    return v0
.end method

.method protected getPositionFromValue(D)I
    .locals 4
    .param p1, "value"    # D

    .prologue
    .line 209
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p1, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getRange()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRange()I
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMaxX:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 430
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 438
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    double-to-int v0, v0

    return v0
.end method

.method protected getValueFromPosition(I)D
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    sub-int v0, p1, v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getRange()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getVibrationEnabled()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mVibrationHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/VibrationHelper;->enabled()Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 473
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 474
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->stop(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->scrollStarted()V

    .line 476
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 337
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShaderMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 340
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShaderWidth:I

    div-int/lit8 v9, v0, 0x2

    .line 342
    .local v9, "w2":I
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/AviaryWheel;->getPositionFromValue(D)I

    move-result v8

    .line 344
    .local v8, "scroll_x":I
    sub-int v10, v8, v9

    .line 346
    .local v10, "x":I
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShaderMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 347
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 349
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeOffset:F

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeOffset:F

    sub-float v3, v0, v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLinesPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    .end local v8    # "scroll_x":I
    .end local v9    # "w2":I
    .end local v10    # "x":I
    :cond_2
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mHeightDiff:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mHeightDiff:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 356
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->debugPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->debugPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->debugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMaxX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMaxX:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->debugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->debugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 370
    .local v7, "restoreCount":I
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixLeft:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 372
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->postInvalidate()V

    .line 375
    :cond_4
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 378
    .end local v7    # "restoreCount":I
    :cond_5
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 382
    .restart local v7    # "restoreCount":I
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeMatrixRight:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 384
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 385
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->postInvalidate()V

    .line 387
    :cond_6
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getMaxX()I

    move-result v1

    .line 482
    .local v1, "max_x":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getMinX()I

    move-result v2

    .line 483
    .local v2, "min_x":I
    iget-wide v6, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    invoke-virtual {p0, v6, v7}, Lcom/aviary/android/feather/widget/AviaryWheel;->getPositionFromValue(D)I

    move-result v0

    .line 484
    .local v0, "current_x":I
    const/4 v6, 0x0

    cmpg-float v6, p3, v6

    if-gez v6, :cond_1

    move v3, v5

    .line 486
    .local v3, "toleft":Z
    :goto_0
    if-nez v3, :cond_3

    .line 488
    if-lt v0, v1, :cond_2

    .line 509
    :cond_0
    :goto_1
    return v4

    .end local v3    # "toleft":Z
    :cond_1
    move v3, v4

    .line 484
    goto :goto_0

    .line 492
    .restart local v3    # "toleft":Z
    :cond_2
    if-le v0, v1, :cond_4

    .line 493
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    sub-int v6, v1, v0

    invoke-virtual {v4, v0, v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingDistance(II)V

    move v4, v5

    .line 494
    goto :goto_1

    .line 498
    :cond_3
    if-le v0, v2, :cond_0

    .line 502
    if-ge v0, v2, :cond_4

    .line 503
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    sub-int v6, v2, v0

    invoke-virtual {v4, v0, v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingDistance(II)V

    move v4, v5

    .line 504
    goto :goto_1

    .line 508
    :cond_4
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    float-to-int v6, p3

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v0, v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingVelocity(II)V

    move v4, v5

    .line 509
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 235
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 237
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mInLayout:Z

    .line 239
    if-eqz p1, :cond_0

    .line 240
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLayoutCompleted:Z

    .line 241
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mNextValue:I

    if-eq v0, v1, :cond_0

    .line 242
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mNextValue:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWheel;->setValue(I)V

    .line 243
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mNextValue:I

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mInLayout:Z

    .line 248
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 513
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    .line 395
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 396
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 400
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 401
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 403
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 404
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 406
    .local v4, "heightSize":I
    if-eq v5, v8, :cond_0

    if-nez v5, :cond_2

    .line 407
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 412
    .local v2, "finalWidth":I
    :goto_0
    const/16 v7, 0x3a2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 414
    if-eq v3, v8, :cond_1

    if-nez v3, :cond_3

    .line 415
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 419
    .local v1, "finalHeigth":I
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/aviary/android/feather/widget/AviaryWheel;->setMeasuredDimension(II)V

    .line 423
    .end local v1    # "finalHeigth":I
    .end local v2    # "finalWidth":I
    .end local v3    # "heightMode":I
    .end local v4    # "heightSize":I
    .end local v5    # "widthMode":I
    .end local v6    # "widthSize":I
    :goto_2
    return-void

    .line 409
    .restart local v3    # "heightMode":I
    .restart local v4    # "heightSize":I
    .restart local v5    # "widthMode":I
    .restart local v6    # "widthSize":I
    :cond_2
    move v2, v6

    .restart local v2    # "finalWidth":I
    goto :goto_0

    .line 417
    :cond_3
    move v1, v4

    .restart local v1    # "finalHeigth":I
    goto :goto_1

    .line 421
    .end local v1    # "finalHeigth":I
    .end local v2    # "finalWidth":I
    .end local v3    # "heightMode":I
    .end local v4    # "heightSize":I
    .end local v5    # "widthMode":I
    .end local v6    # "widthSize":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 520
    const/high16 v5, -0x40800000    # -1.0f

    mul-float v1, v5, p3

    .line 521
    .local v1, "delta":F
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mToLeft:Z

    .line 523
    iget-wide v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    invoke-virtual {p0, v5, v6}, Lcom/aviary/android/feather/widget/AviaryWheel;->getPositionFromValue(D)I

    move-result v0

    .line 524
    .local v0, "current_x":I
    int-to-float v5, v0

    add-float/2addr v5, v1

    float-to-int v4, v5

    .line 525
    .local v4, "new_x":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getMaxX()I

    move-result v2

    .line 526
    .local v2, "max_x":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getMinX()I

    move-result v3

    .line 528
    .local v3, "min_x":I
    iget-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mToLeft:Z

    if-nez v5, :cond_2

    .line 529
    int-to-float v5, v0

    add-float/2addr v5, v1

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 531
    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 532
    float-to-double v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mOverscrollX:F

    add-float/2addr v9, v1

    int-to-float v10, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x42480000    # 50.0f

    div-float/2addr v9, v10

    float-to-double v9, v9

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-float v1, v5

    .line 534
    int-to-float v5, v0

    add-float/2addr v5, v1

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mOverscrollX:F

    .line 536
    move v4, v2

    .line 537
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    const/high16 v6, 0x42480000    # 50.0f

    div-float v6, v1, v6

    invoke-virtual {v5, v6}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->onPull(F)V

    .line 554
    :goto_1
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryWheel;->trackMotionScroll(I)V

    .line 555
    const/4 v5, 0x0

    return v5

    .line 521
    .end local v0    # "current_x":I
    .end local v2    # "max_x":I
    .end local v3    # "min_x":I
    .end local v4    # "new_x":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 540
    .restart local v0    # "current_x":I
    .restart local v2    # "max_x":I
    .restart local v3    # "min_x":I
    .restart local v4    # "new_x":I
    :cond_1
    int-to-float v5, v0

    add-float/2addr v5, v1

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mOverscrollX:F

    goto :goto_1

    .line 543
    :cond_2
    int-to-float v5, v0

    add-float/2addr v5, v1

    int-to-float v6, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 545
    const/high16 v5, -0x3db80000    # -50.0f

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 546
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v0

    sub-float/2addr v6, v1

    int-to-float v7, v3

    sub-float/2addr v6, v7

    const/high16 v7, 0x42480000    # 50.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v1, v5

    .line 548
    move v4, v3

    .line 549
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    const/high16 v6, 0x42480000    # 50.0f

    div-float v6, v1, v6

    invoke-virtual {v5, v6}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->onPull(F)V

    goto :goto_1

    .line 551
    :cond_3
    int-to-float v5, v0

    add-float/2addr v5, v1

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mOverscrollX:F

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 559
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    .local v0, "bounds":Landroid/graphics/Rect;
    int-to-float v2, p1

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeOffset:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 260
    .local v1, "max_width":I
    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    .line 261
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMinX:I

    sub-int v2, p1, v2

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mMaxX:I

    .line 266
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mHeightDiff:I

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/widget/AviaryWheel;->createShader(II)V

    .line 274
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 226
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 227
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 228
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWheel;->onUp(Landroid/view/MotionEvent;)Z

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeLeft:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->onRelease()V

    .line 445
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mEdgeRight:Lcom/aviary/android/feather/widget/AviaryEdgeEffect;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->onRelease()V

    .line 447
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->scrollIntoSlots()V

    .line 450
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method scrollCompleted()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;->onStopTrackingTouch(Lcom/aviary/android/feather/widget/AviaryWheel;)V

    .line 633
    :cond_0
    return-void
.end method

.method public scrollIntoSlots()V
    .locals 5

    .prologue
    .line 590
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 607
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getMaxX()I

    move-result v0

    .line 595
    .local v0, "max_x":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getMinX()I

    move-result v1

    .line 596
    .local v1, "min_x":I
    iget-wide v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    invoke-virtual {p0, v3, v4}, Lcom/aviary/android/feather/widget/AviaryWheel;->getPositionFromValue(D)I

    move-result v2

    .line 598
    .local v2, "scroll_x":I
    if-le v2, v0, :cond_1

    .line 599
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    sub-int v4, v0, v2

    invoke-virtual {v3, v2, v4}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 601
    :cond_1
    if-ge v2, v1, :cond_2

    .line 602
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    sub-int v4, v1, v2

    invoke-virtual {v3, v2, v4}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 606
    :cond_2
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->onFinishedMovement()V

    goto :goto_0
.end method

.method scrollRunning()V
    .locals 3

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getValue()I

    move-result v0

    .line 644
    .local v0, "value":I
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mInLayout:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLastMotionValue:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 645
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mVibrationHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/VibrationHelper;->vibrate(I)V

    .line 646
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLastMotionValue:I

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->getValue()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;->OnValueChanged(Lcom/aviary/android/feather/widget/AviaryWheel;I)V

    .line 652
    :cond_1
    return-void
.end method

.method scrollStarted()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;->onStartTrackingTouch(Lcom/aviary/android/feather/widget/AviaryWheel;)V

    .line 639
    :cond_0
    return-void
.end method

.method public setOnWheelChangeListener(Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScrollListener:Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;

    .line 165
    return-void
.end method

.method public setValue(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 173
    const/16 v0, 0x64

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 175
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 178
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mLayoutCompleted:Z

    if-nez v0, :cond_1

    .line 179
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mNextValue:I

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->stop(Z)V

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->scrollStarted()V

    .line 188
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWheel;->trackMotionValue(I)V

    .line 189
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->scrollCompleted()V

    goto :goto_0
.end method

.method public setVibrationEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 656
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mVibrationHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/VibrationHelper;->setEnabled(Z)V

    .line 657
    return-void
.end method

.method public trackMotionScroll(I)V
    .locals 4
    .param p1, "newX"    # I

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWheel;->getValueFromPosition(I)D

    move-result-wide v0

    .line 616
    .local v0, "newValue":D
    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 617
    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryWheel;->mCurrentValue:D

    .line 618
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->scrollRunning()V

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->postInvalidate()V

    .line 621
    return-void
.end method
