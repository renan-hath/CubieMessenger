.class public Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "StickerDrawable.java"

# interfaces
.implements Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;


# instance fields
.field mBlurFilter:Landroid/graphics/BlurMaskFilter;

.field mDrawShadow:Z

.field private mPackLabel:Ljava/lang/String;

.field mShadowBitmap:Landroid/graphics/Bitmap;

.field mShadowPaint:Landroid/graphics/Paint;

.field private mStickerName:Ljava/lang/String;

.field mTempRect:Landroid/graphics/Rect;

.field private minHeight:F

.field private minWidth:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "packlabel"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 21
    iput v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minWidth:F

    .line 22
    iput v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minHeight:F

    .line 30
    iput-boolean v4, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mDrawShadow:Z

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 35
    iput-object p3, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mStickerName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mPackLabel:Ljava/lang/String;

    .line 38
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40a00000    # 5.0f

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mShadowPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mBlurFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 42
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 43
    .local v0, "offsetXY":[I
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mDrawShadow:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 59
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    return-void
.end method

.method public getBitmapHeight()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBitmapWidth()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getCurrentHeight()F
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getCurrentWidth()F
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minHeight:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minWidth:F

    return v0
.end method

.method public getPackLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mPackLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mStickerName:Ljava/lang/String;

    return-object v0
.end method

.method public setDropShadow(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->mDrawShadow:Z

    .line 66
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->invalidateSelf()V

    .line 67
    return-void
.end method

.method public setMinSize(FF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 84
    iput p1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minWidth:F

    .line 85
    iput p2, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minHeight:F

    .line 86
    return-void
.end method

.method public validateSize(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minWidth:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->minHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
