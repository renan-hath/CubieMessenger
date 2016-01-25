.class public Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GalleryTopIndicatorDrawable.java"


# instance fields
.field final destRect:Landroid/graphics/Rect;

.field mDirection:I

.field mFillColor:I

.field mIndicatorSize:F

.field mMatrix:Landroid/graphics/Matrix;

.field mMinHeight:I

.field mOffsetY:I

.field mShadowColor:I

.field mShadowDy:I

.field mStrokeColor1:I

.field mStrokeColor2:I

.field mStrokeWidth:I

.field final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryOptionPanelTopIndicatorStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;-><init>(Landroid/content/Context;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defStyle"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 55
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    const/4 v2, 0x0

    sget-object v3, Lcom/aviary/android/feather/R$styleable;->AviaryGalleryTopIndicator:[I

    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "array":Landroid/content/res/TypedArray;
    const-string/jumbo v2, "gallery-top-indicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "defaultStyle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mShadowColor:I

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mShadowDy:I

    .line 61
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mFillColor:I

    .line 62
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeColor1:I

    .line 63
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeColor2:I

    .line 64
    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mIndicatorSize:F

    .line 65
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    .line 66
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mDirection:I

    .line 67
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mOffsetY:I

    .line 68
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMinHeight:I

    .line 70
    const-string/jumbo v2, "gallery-top-indicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "strokeWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v2, "gallery-top-indicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v2, "gallery-top-indicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mOffsetY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    .line 77
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 93
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 94
    .local v6, "halfHeight":I
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 95
    .local v7, "halfWidth":I
    int-to-float v0, v6

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mIndicatorSize:F

    mul-float/2addr v0, v1

    float-to-int v12, v0

    .line 97
    .local v12, "triangleSize":I
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int v11, v0, v1

    .line 98
    .local v11, "top":I
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    sub-int v8, v0, v1

    .line 99
    .local v8, "left":I
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    add-int v10, v0, v1

    .line 101
    .local v10, "right":I
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 102
    .local v9, "path":Landroid/graphics/Path;
    int-to-float v0, v8

    int-to-float v1, v11

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    int-to-float v0, v10

    int-to-float v1, v11

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    int-to-float v0, v10

    add-int v1, v11, v6

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    add-int v0, v8, v7

    add-int/2addr v0, v12

    int-to-float v0, v0

    add-int v1, v11, v6

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    add-int v0, v8, v7

    int-to-float v0, v0

    add-int v1, v11, v6

    add-int/2addr v1, v12

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    add-int v0, v8, v7

    sub-int/2addr v0, v12

    int-to-float v0, v0

    add-int v1, v11, v6

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    int-to-float v0, v8

    add-int v1, v11, v6

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    int-to-float v0, v8

    int-to-float v1, v11

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->destRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 116
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mOffsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->save(I)I

    .line 118
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mShadowDy:I

    if-lez v0, :cond_1

    .line 124
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mShadowDy:I

    int-to-float v0, v0

    invoke-virtual {v9, v4, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mShadowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 127
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mShadowDy:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v9, v4, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 138
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeColor2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mDirection:I

    if-ne v0, v5, :cond_2

    .line 142
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    add-int/2addr v0, v8

    int-to-float v1, v0

    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    add-int/2addr v0, v11

    int-to-float v2, v0

    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    sub-int v0, v10, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    add-int/2addr v0, v11

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_2
    add-int v0, v11, v6

    iget v1, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mStrokeWidth:I

    sub-int v11, v0, v1

    .line 145
    int-to-float v1, v8

    int-to-float v2, v11

    add-int v0, v8, v7

    sub-int/2addr v0, v12

    int-to-float v3, v0

    int-to-float v4, v11

    iget-object v5, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 146
    add-int v0, v8, v7

    add-int/2addr v0, v12

    int-to-float v1, v0

    int-to-float v2, v11

    int-to-float v3, v10

    int-to-float v4, v11

    iget-object v5, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMinHeight:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;->mMinHeight:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 158
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 162
    return-void
.end method
