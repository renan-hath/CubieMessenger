.class public Lcom/aviary/android/feather/graphics/PluginDividerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PluginDividerDrawable.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mFillColor:I

.field private mHeight:I

.field private mLabel:Ljava/lang/String;

.field private mMaxHeight:I

.field private mMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTextDivider:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTextStrokePaint:Landroid/graphics/Paint;

.field private mTextY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleid"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    const/high16 v5, 0x41200000    # 10.0f

    iput v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextSize:F

    .line 135
    iput v9, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextY:I

    .line 41
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 43
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 44
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    const/4 v5, 0x0

    sget-object v6, Lcom/aviary/android/feather/R$styleable;->AviaryPluginDividerDrawable:[I

    sget v7, Lcom/aviary/android/feather/R$attr;->aviaryEffectThumbDividerTextStyle:I

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mFillColor:I

    .line 48
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mStrokeWidth:I

    .line 49
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mStrokeColor:I

    .line 50
    const/4 v5, 0x1

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextDivider:F

    .line 52
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "fontname":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/aviary/android/feather/utils/TypefaceUtils;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    iput-object p3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mLabel:Ljava/lang/String;

    .line 64
    new-instance v5, Landroid/graphics/Paint;

    const/16 v6, 0x181

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mFillColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    if-eqz v1, :cond_0

    .line 69
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 72
    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextStrokePaint:Landroid/graphics/Paint;

    .line 73
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextStrokePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mStrokeColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextStrokePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextStrokePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mBounds:Landroid/graphics/Rect;

    .line 78
    new-instance v5, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v5, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 79
    return-void

    .line 56
    :catch_0
    move-exception v3

    .line 57
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 163
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .line 164
    .local v1, "saveCount":I
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 165
    iget v2, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mHeight:I

    iget-object v4, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mMaxHeight:I

    if-le v2, v3, :cond_0

    .line 168
    iget v2, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mMaxHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 169
    .local v0, "diff":F
    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 172
    .end local v0    # "diff":F
    :cond_0
    iget v2, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mStrokeWidth:I

    if-lez v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 178
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mWidth:I

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mHeight:I

    .line 132
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->onTextBoundsChanged()V

    .line 133
    return-void
.end method

.method protected final onTextBoundsChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 139
    iget v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextDivider:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextSize:F

    .line 141
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mLabel:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 144
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 146
    iget v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextSize:F

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mTextY:I

    .line 157
    iget v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mHeight:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mMaxHeight:I

    .line 158
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 97
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->mLabel:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->invalidateSelf()V

    .line 85
    return-void
.end method
