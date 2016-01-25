.class public Lcom/aviary/android/feather/widget/AviarySeekBar;
.super Landroid/widget/SeekBar;
.source "AviarySeekBar.java"


# instance fields
.field protected mBackgroundOffset:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mRealWidth:I

.field protected mSecondary:Landroid/graphics/drawable/Drawable;

.field protected mSecondaryCenter:Landroid/graphics/drawable/Drawable;

.field protected mSecondaryCenterOffset:D

.field protected mSecondaryInverted:Landroid/graphics/drawable/Drawable;

.field protected mSecondaryMinHeight:I

.field protected mSecondaryMinWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviarySeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    sget v0, Lcom/aviary/android/feather/R$attr;->aviarySeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviarySeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 42
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    sget-object v4, Lcom/aviary/android/feather/R$styleable;->AviarySeekBar:[I

    invoke-virtual {v1, p2, v4, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 43
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 44
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 45
    .local v0, "offset":I
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryInverted:Landroid/graphics/drawable/Drawable;

    .line 47
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryCenter:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryMinWidth:I

    .line 52
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryMinHeight:I

    .line 53
    iget v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryMinWidth:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryCenterOffset:D

    .line 55
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mBackgroundOffset:I

    .line 58
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviarySeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->setThumbOffset(I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 66
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getDrawableState()[I

    move-result-object v0

    .line 67
    .local v0, "state":[I
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 68
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryInverted:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 69
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 70
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mRealWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x1

    if-ge v11, v12, :cond_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getProgress()I

    move-result v11

    int-to-double v11, v11

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    div-double v6, v11, v13

    .line 85
    .local v6, "progress":D
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getPaddingLeft()I

    move-result v11

    neg-int v11, v11

    int-to-double v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getWidth()I

    move-result v13

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    add-double v1, v11, v13

    .line 86
    .local v1, "center":D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mRealWidth:I

    int-to-double v11, v11

    mul-double/2addr v11, v6

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double v9, v11, v13

    .line 88
    .local v9, "w":D
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    instance-of v11, v11, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v11, :cond_4

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    .line 93
    .local v4, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    .line 94
    .local v5, "left":I
    const/4 v8, 0x0

    .line 95
    .local v8, "right":I
    const/4 v3, 0x0

    .line 97
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    const-wide/16 v11, 0x0

    cmpl-double v11, v6, v11

    if-lez v11, :cond_5

    .line 99
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryCenterOffset:D

    sub-double v11, v1, v11

    double-to-int v5, v11

    .line 100
    int-to-double v11, v5

    add-double/2addr v11, v9

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryCenterOffset:D

    add-double/2addr v11, v13

    double-to-int v8, v11

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_1
    :goto_1
    sub-int v11, v8, v5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryMinWidth:I

    if-ge v11, v12, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget v11, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryMinWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-double v11, v11

    sub-double v11, v1, v11

    double-to-int v5, v11

    .line 112
    move-object/from16 v0, p0

    iget v11, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryMinWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-double v11, v11

    add-double/2addr v11, v1

    double-to-int v8, v11

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryCenter:Landroid/graphics/drawable/Drawable;

    .line 116
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v11, v3, :cond_3

    .line 117
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    const v11, 0x102000f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v11, v12}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 121
    :cond_3
    if-eqz v3, :cond_4

    .line 122
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryMinHeight:I

    invoke-virtual {v3, v5, v11, v8, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "left":I
    .end local v8    # "right":I
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 81
    .end local v1    # "center":D
    .end local v6    # "progress":D
    .end local v9    # "w":D
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 102
    .restart local v1    # "center":D
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v5    # "left":I
    .restart local v6    # "progress":D
    .restart local v8    # "right":I
    .restart local v9    # "w":D
    :cond_5
    const-wide/16 v11, 0x0

    cmpg-double v11, v6, v11

    if-gez v11, :cond_1

    .line 104
    add-double v11, v1, v9

    double-to-int v5, v11

    .line 105
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryCenterOffset:D

    add-double/2addr v11, v1

    double-to-int v8, v11

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mSecondaryInverted:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 75
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mBackgroundOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/widget/AviarySeekBar;->mRealWidth:I

    .line 76
    return-void
.end method
