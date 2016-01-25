.class public Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreviewSpotDrawable.java"


# instance fields
.field final mBackgroundColorSelected:I

.field final mBackgroundColorUnselected:I

.field private mChecked:Z

.field final mDstRect:Landroid/graphics/Rect;

.field final mGlowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field final mGlowColor:I

.field mGradient:Landroid/graphics/LinearGradient;

.field final mGradientMatrix:Landroid/graphics/Matrix;

.field final mGradientShaderSelected:Landroid/graphics/LinearGradient;

.field final mGradientShaderUnselected:Landroid/graphics/LinearGradient;

.field final mPaint:Landroid/graphics/Paint;

.field private mPorterDuffSrcInMode:Landroid/graphics/Xfermode;

.field private mPressed:Z

.field mRadius:F

.field mRadiusFixed:Z

.field final mStrokeColor:I

.field final mStrokeWidth:I

.field final mStrokeWidthOuter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadiusFixed:Z

    .line 46
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPorterDuffSrcInMode:Landroid/graphics/Xfermode;

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .line 52
    .local v14, "theme":Landroid/content/res/Resources$Theme;
    const/4 v0, 0x0

    sget-object v1, Lcom/aviary/android/feather/R$styleable;->AviaryPreviewSpotDrawable:[I

    sget v2, Lcom/aviary/android/feather/R$attr;->aviaryPreviewSpotDrawableStyle:I

    const/4 v3, 0x0

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 53
    .local v8, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x9

    const/16 v1, 0x14

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeWidth:I

    .line 54
    iget v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeWidth:I

    int-to-double v0, v0

    const-wide v2, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeWidthOuter:I

    .line 56
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 57
    .local v9, "color1":I
    const/4 v0, 0x3

    const/high16 v1, -0x1000000

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 58
    .local v10, "color2":I
    const/4 v0, 0x4

    const/high16 v1, -0x1000000

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 59
    .local v11, "color3":I
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 60
    .local v12, "color4":I
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGlowColor:I

    .line 61
    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mBackgroundColorUnselected:I

    .line 62
    const/4 v0, 0x7

    const/high16 v1, -0x1000000

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mBackgroundColorSelected:I

    .line 63
    const/16 v0, 0x8

    const/high16 v1, -0x1000000

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeColor:I

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 67
    .local v13, "glowSize":I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v9, v5, v6

    const/4 v6, 0x1

    aput v10, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientShaderUnselected:Landroid/graphics/LinearGradient;

    .line 73
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v12, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientShaderSelected:Landroid/graphics/LinearGradient;

    .line 74
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientShaderUnselected:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradient:Landroid/graphics/LinearGradient;

    .line 76
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float v1, v13

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGlowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 78
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    .line 79
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientShaderUnselected:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 80
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadius:F

    .line 81
    return-void

    .line 72
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 73
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 99
    iget v7, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadius:F

    .line 101
    .local v7, "radius":F
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadiusFixed:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadius:F

    mul-float v7, v0, v1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 108
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mChecked:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGlowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 116
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGlowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeWidthOuter:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 123
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 130
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mChecked:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mBackgroundColorSelected:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v7, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 136
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    mul-float v3, v7, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 137
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 139
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPorterDuffSrcInMode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 140
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 149
    return-void

    .line 131
    :cond_2
    iget v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mBackgroundColorUnselected:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mChecked:Z

    .line 171
    .local v0, "checked":Z
    iget-boolean v2, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPressed:Z

    .line 173
    .local v2, "pressed":Z
    iput-boolean v3, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mChecked:Z

    .line 174
    iput-boolean v3, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPressed:Z

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 177
    aget v5, p1, v1

    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    .line 178
    iput-boolean v4, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPressed:Z

    .line 181
    :cond_0
    aget v5, p1, v1

    const v6, 0x10100a1

    if-ne v5, v6, :cond_1

    .line 182
    iput-boolean v4, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mChecked:Z

    .line 176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-boolean v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mChecked:Z

    if-eqz v5, :cond_5

    .line 187
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientShaderSelected:Landroid/graphics/LinearGradient;

    iput-object v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradient:Landroid/graphics/LinearGradient;

    .line 192
    :goto_1
    iget-boolean v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mChecked:Z

    if-ne v0, v5, :cond_3

    iget-boolean v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mPressed:Z

    if-eq v2, v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    return v3

    .line 189
    :cond_5
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradientShaderUnselected:Landroid/graphics/LinearGradient;

    iput-object v5, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mGradient:Landroid/graphics/LinearGradient;

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 162
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 165
    return-void
.end method

.method public setFixedRadius(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadiusFixed:Z

    .line 91
    iput p1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadius:F

    .line 92
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->invalidateSelf()V

    .line 93
    return-void
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 84
    const-string/jumbo v0, "PreviewSpotDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput p1, p0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->mRadius:F

    .line 86
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->invalidateSelf()V

    .line 87
    return-void
.end method
