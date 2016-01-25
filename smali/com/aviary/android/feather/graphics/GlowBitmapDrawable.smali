.class public Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;
.super Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;
.source "GlowBitmapDrawable.java"


# instance fields
.field private mBlurValue:I

.field private mChecked:Z

.field private mCheckedBitmap:Landroid/graphics/Bitmap;

.field private mCurrent:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mGlowMode:I

.field private mHighlightColorChecked:I

.field private mHighlightColorPressed:I

.field private mHighlightColorSelected:I

.field private mHighlightMode:I

.field private mPressed:Z

.field private mPressedBitmap:Landroid/graphics/Bitmap;

.field private mSelected:Z

.field private mSelectedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIIII)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "color_pressed"    # I
    .param p4, "color_checked"    # I
    .param p5, "color_selected"    # I
    .param p6, "blur_size"    # I
    .param p7, "highlightMode"    # I
    .param p8, "glowMode"    # I

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 43
    invoke-direct/range {v0 .. v6}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->init(IIIIII)V

    .line 44
    return-void
.end method

.method public static generateBlurBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/PorterDuff$Mode;ZLandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "blurValue"    # I
    .param p2, "color"    # I
    .param p3, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p4, "glow"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v9, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 90
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 92
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 94
    .local v2, "dest":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "alpha":Landroid/graphics/Bitmap;
    invoke-virtual {v1, p0, v9, v9, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 99
    .local v5, "paintBlur":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v7, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-virtual {v1, v0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    if-eqz p4, :cond_0

    .line 104
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    int-to-float v7, p1

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 105
    .local v4, "maskFilter":Landroid/graphics/BlurMaskFilter;
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 106
    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    invoke-virtual {v1, v0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    .end local v4    # "maskFilter":Landroid/graphics/BlurMaskFilter;
    :cond_0
    return-object v2
.end method

.method private init(IIIIII)V
    .locals 1
    .param p1, "color_pressed"    # I
    .param p2, "color_checked"    # I
    .param p3, "color_selected"    # I
    .param p4, "blur_size"    # I
    .param p5, "highlightMode"    # I
    .param p6, "glowMode"    # I

    .prologue
    .line 47
    iput p2, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightColorChecked:I

    .line 48
    iput p1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightColorPressed:I

    .line 49
    iput p3, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightColorSelected:I

    .line 50
    iput p4, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mBlurValue:I

    .line 51
    iput p6, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mGlowMode:I

    .line 52
    iput p5, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightMode:I

    .line 54
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCurrent:Landroid/graphics/Bitmap;

    .line 55
    invoke-direct {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->recycleBitmaps()V

    .line 56
    return-void
.end method

.method private recycleBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    iput-object v1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    iput-object v1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressedBitmap:Landroid/graphics/Bitmap;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    iput-object v1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 121
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCurrent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 14
    .param p1, "state"    # [I

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x4

    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 127
    iget-boolean v6, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mChecked:Z

    .line 128
    .local v6, "checked":Z
    iget-boolean v8, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressed:Z

    .line 129
    .local v8, "pressed":Z
    iget-boolean v9, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelected:Z

    .line 131
    .local v9, "selected":Z
    iput-boolean v10, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mChecked:Z

    .line 132
    iput-boolean v10, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressed:Z

    .line 133
    iput-boolean v10, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelected:Z

    .line 135
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_3

    .line 136
    aget v0, p1, v7

    const v1, 0x10100a7

    if-ne v0, v1, :cond_1

    .line 137
    iput-boolean v11, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressed:Z

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 141
    :cond_1
    aget v0, p1, v7

    const v1, 0x10100a0

    if-ne v0, v1, :cond_2

    .line 142
    iput-boolean v11, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mChecked:Z

    goto :goto_1

    .line 146
    :cond_2
    aget v0, p1, v7

    const v1, 0x10100a1

    if-ne v0, v1, :cond_0

    .line 147
    iput-boolean v11, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelected:Z

    goto :goto_1

    .line 152
    :cond_3
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressed:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightMode:I

    invoke-static {v0, v5}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mBlurValue:I

    iget v2, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightColorPressed:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mGlowMode:I

    .line 155
    invoke-static {v4, v5}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->generateBlurBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/PorterDuff$Mode;ZLandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressedBitmap:Landroid/graphics/Bitmap;

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressedBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCurrent:Landroid/graphics/Bitmap;

    .line 177
    :goto_2
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mChecked:Z

    if-ne v6, v0, :cond_5

    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mPressed:Z

    if-ne v8, v0, :cond_5

    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelected:Z

    if-eq v9, v0, :cond_b

    :cond_5
    move v0, v11

    :goto_3
    return v0

    .line 159
    :cond_6
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mChecked:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightMode:I

    invoke-static {v0, v12}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 161
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mBlurValue:I

    iget v2, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightColorChecked:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mGlowMode:I

    .line 162
    invoke-static {v4, v12}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->generateBlurBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/PorterDuff$Mode;ZLandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCurrent:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 166
    :cond_8
    iget-boolean v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelected:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightMode:I

    invoke-static {v0, v13}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 168
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mBlurValue:I

    iget v2, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mHighlightColorSelected:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mGlowMode:I

    .line 169
    invoke-static {v4, v13}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->generateBlurBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/PorterDuff$Mode;ZLandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mSelectedBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCurrent:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 174
    :cond_a
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCurrent:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_b
    move v0, v10

    .line 177
    goto :goto_3
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iput-object p1, p0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->mCurrent:Landroid/graphics/Bitmap;

    .line 61
    invoke-direct {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->recycleBitmaps()V

    .line 62
    return-void
.end method

.method public updateConfig(IIIIII)V
    .locals 1
    .param p1, "color_pressed"    # I
    .param p2, "color_checked"    # I
    .param p3, "color_selected"    # I
    .param p4, "blur_size"    # I
    .param p5, "highlightMode"    # I
    .param p6, "glowMode"    # I

    .prologue
    .line 83
    invoke-direct/range {p0 .. p6}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->init(IIIIII)V

    .line 84
    invoke-virtual {p0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->setState([I)Z

    .line 85
    return-void
.end method
