.class public Lcom/aviary/android/feather/widget/AviaryEdgeEffect;
.super Ljava/lang/Object;
.source "AviaryEdgeEffect.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDuration:F

.field private mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeHeight:I

.field private mEdgeMaxAlpha:I

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowHeight:I

.field private mGlowMaxAlpha:I

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mGlowWidth:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxEffectHeight:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleid"    # I

    .prologue
    const/16 v4, 0xff

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeMaxAlpha:I

    .line 59
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowMaxAlpha:I

    .line 97
    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    .line 101
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 110
    sget-object v4, Lcom/aviary/android/feather/R$styleable;->AviaryEdgeEffect:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 113
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 114
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 115
    .local v2, "color":I
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "blendMode":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/aviary/android/feather/R$drawable;->aviary_overscroll_edge:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/aviary/android/feather/R$drawable;->aviary_overscroll_glow:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 128
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 129
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 131
    .local v3, "mode":Landroid/graphics/PorterDuff$Mode;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 134
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    .end local v3    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_2
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeHeight:I

    .line 138
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowHeight:I

    .line 139
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowWidth:I

    .line 141
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mMaxEffectHeight:I

    .line 145
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    return-void

    .line 132
    .restart local v3    # "mode":Landroid/graphics/PorterDuff$Mode;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 374
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 375
    .local v3, "time":J
    iget-wide v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 377
    .local v2, "t":F
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 379
    .local v1, "interp":F
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlpha:F

    .line 380
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    .line 381
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    .line 382
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    .line 384
    const v5, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 385
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iput v11, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    .line 388
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mStartTime:J

    .line 389
    iput v10, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mDuration:F

    .line 391
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaStart:F

    .line 392
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    .line 393
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    .line 394
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYStart:F

    .line 397
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaFinish:F

    .line 398
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYFinish:F

    .line 399
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaFinish:F

    .line 400
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 403
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    .line 404
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mStartTime:J

    .line 405
    iput v10, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mDuration:F

    .line 407
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaStart:F

    .line 408
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    .line 409
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    .line 410
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYStart:F

    .line 413
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaFinish:F

    .line 414
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYFinish:F

    .line 415
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaFinish:F

    .line 416
    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 421
    :pswitch_2
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 424
    .local v0, "factor":F
    :goto_1
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    .line 427
    iput v11, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    goto :goto_0

    .line 421
    .end local v0    # "factor":F
    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    .line 430
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 338
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->update()V

    .line 340
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowMaxAlpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 342
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 344
    .local v1, "glowBottom":I
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mWidth:I

    invoke-virtual {v3, v2, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlpha:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeMaxAlpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 350
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 351
    .local v0, "edgeBottom":I
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mWidth:I

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 352
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 355
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    .line 358
    :cond_0
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 6
    .param p1, "velocity"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    .line 295
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 297
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mStartTime:J

    .line 298
    const v0, 0x3dcccccd    # 0.1f

    int-to-float v1, p1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mDuration:F

    .line 302
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaStart:F

    .line 303
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    .line 306
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    .line 307
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYStart:F

    .line 311
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaFinish:F

    .line 313
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    .line 314
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 313
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYFinish:F

    .line 320
    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    .line 322
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    .line 323
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 322
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaFinish:F

    .line 324
    return-void
.end method

.method public onPull(F)V
    .locals 10
    .param p1, "deltaDistance"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 214
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, "now":J
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 253
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    .line 219
    const v4, 0x3dcccccd    # 0.1f

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    .line 221
    :cond_1
    iput v6, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    .line 223
    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mStartTime:J

    .line 224
    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mDuration:F

    .line 226
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mPullDistance:F

    .line 227
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 229
    .local v0, "distance":F
    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlpha:F

    .line 230
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v0, v9

    .line 231
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 230
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    .line 233
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    .line 235
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 233
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    .line 237
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 238
    .local v1, "glowChange":F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 239
    neg-float v1, v1

    .line 241
    :cond_2
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 242
    iput v7, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    .line 246
    :cond_3
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    mul-float v5, v1, v9

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    .line 249
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaFinish:F

    .line 250
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYFinish:F

    .line 251
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaFinish:F

    .line 252
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mPullDistance:F

    .line 264
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mState:I

    .line 269
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaStart:F

    .line 270
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYStart:F

    .line 271
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaStart:F

    .line 272
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYStart:F

    .line 274
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeAlphaFinish:F

    .line 275
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeScaleYFinish:F

    .line 276
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowAlphaFinish:F

    .line 277
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowScaleYFinish:F

    .line 279
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mStartTime:J

    .line 280
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    :cond_1
    return-void
.end method

.method public setEdgeMaxAlpha(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeMaxAlpha:I

    .line 166
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mWidth:I

    .line 161
    iput p2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mGlowHeight:I

    iput p2, p0, Lcom/aviary/android/feather/widget/AviaryEdgeEffect;->mEdgeHeight:I

    .line 162
    return-void
.end method
