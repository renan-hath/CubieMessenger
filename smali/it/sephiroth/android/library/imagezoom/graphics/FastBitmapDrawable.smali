.class public Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    .line 29
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    .line 34
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 36
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 37
    return-void

    .line 31
    :cond_0
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    .line 32
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x3

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 67
    return-void
.end method
