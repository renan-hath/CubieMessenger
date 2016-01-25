.class public Lcom/aviary/android/feather/widget/AviaryImageSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "AviaryImageSwitcher.java"


# instance fields
.field protected mSwitchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->mSwitchEnabled:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->mSwitchEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->mSwitchEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 30
    .restart local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    :goto_0
    invoke-virtual {v0, p1, p2, v2, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 32
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->mSwitchEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->showNext()V

    .line 34
    :goto_1
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .restart local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setDisplayedChild(I)V

    goto :goto_1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->mSwitchEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 42
    .restart local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    :goto_0
    invoke-virtual {v0, p1, p2, v2, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 44
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->mSwitchEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->showNext()V

    .line 46
    :goto_1
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .restart local v0    # "image":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setDisplayedChild(I)V

    goto :goto_1
.end method

.method public setSwitchEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->mSwitchEnabled:Z

    .line 50
    return-void
.end method
