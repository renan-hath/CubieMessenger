.class public Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreviewFillColorDrawable.java"


# instance fields
.field private mChecked:Z

.field mColor:I

.field final mDstRect:Landroid/graphics/Rect;

.field mGradient:Landroid/graphics/LinearGradient;

.field final mGradientMatrix:Landroid/graphics/Matrix;

.field mLightenColor:I

.field final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field mRadius:F

.field mRadiusFixed:Z

.field final mStrokeColor:I

.field final mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 29
    iput-boolean v4, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mRadiusFixed:Z

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 42
    .local v9, "theme":Landroid/content/res/Resources$Theme;
    const/4 v0, 0x0

    sget-object v2, Lcom/aviary/android/feather/R$styleable;->AviaryPreviewFillDrawable:[I

    sget v3, Lcom/aviary/android/feather/R$attr;->aviaryPreviewFillDrawableStyle:I

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 44
    .local v8, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x14

    invoke-virtual {v8, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mStrokeWidth:I

    .line 45
    const/4 v0, 0x1

    const/high16 v2, -0x1000000

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mStrokeColor:I

    .line 46
    const/16 v0, 0x32

    invoke-virtual {v8, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mRadius:F

    .line 47
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradient:Landroid/graphics/LinearGradient;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    .line 54
    return-void

    .line 52
    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 104
    iget v7, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mRadius:F

    .line 105
    .local v7, "radius":F
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mRadiusFixed:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mRadius:F

    mul-float v7, v0, v1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 112
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 116
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mStrokeWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget-object v3, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 122
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mLightenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 126
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 127
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 128
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 130
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mChecked:Z

    .line 158
    .local v0, "checked":Z
    iget-boolean v2, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPressed:Z

    .line 160
    .local v2, "pressed":Z
    iput-boolean v3, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mChecked:Z

    .line 161
    iput-boolean v3, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPressed:Z

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 164
    aget v5, p1, v1

    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    .line 165
    iput-boolean v4, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPressed:Z

    .line 168
    :cond_0
    aget v5, p1, v1

    const v6, 0x10100a1

    if-ne v5, v6, :cond_1

    .line 169
    iput-boolean v4, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mChecked:Z

    .line 163
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_2
    iget-boolean v5, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mChecked:Z

    if-ne v0, v5, :cond_3

    iget-boolean v5, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mPressed:Z

    if-eq v2, v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    return v3
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 149
    return-void
.end method

.method public setColor(I)V
    .locals 13
    .param p1, "color"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mColor:I

    .line 76
    const/4 v0, 0x3

    new-array v11, v0, [F

    .line 77
    .local v11, "hsv":[F
    invoke-static {p1, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 79
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 80
    .local v12, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 81
    .local v10, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 83
    .local v8, "blue":I
    const/16 v0, 0xff

    int-to-double v1, v12

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    const-wide v3, 0x405fc00000000000L    # 127.0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-double v2, v10

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide v4, 0x405fc00000000000L    # 127.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v3, v8

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    const-wide v5, 0x405fc00000000000L    # 127.0

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mLightenColor:I

    .line 85
    const/4 v0, 0x1

    aget v1, v11, v0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    aput v1, v11, v0

    .line 86
    const/4 v0, 0x2

    aget v1, v11, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    aput v1, v11, v0

    .line 88
    invoke-static {v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    .line 90
    .local v9, "bottomColor":I
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mColor:I

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mGradient:Landroid/graphics/LinearGradient;

    .line 91
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->invalidateSelf()V

    .line 92
    return-void

    .line 90
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 152
    return-void
.end method

.method public setFixedRadius(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mRadiusFixed:Z

    .line 96
    iput p1, p0, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->mRadius:F

    .line 97
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->invalidateSelf()V

    .line 98
    return-void
.end method
