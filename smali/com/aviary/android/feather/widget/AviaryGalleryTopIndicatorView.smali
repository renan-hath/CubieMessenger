.class public Lcom/aviary/android/feather/widget/AviaryGalleryTopIndicatorView;
.super Landroid/widget/LinearLayout;
.source "AviaryGalleryTopIndicatorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryGalleryTopIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryGalleryTopIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryGalleryTopIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 28
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    sget-object v3, Lcom/aviary/android/feather/R$styleable;->AviaryGalleryIndicatorView:[I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 30
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    if-eqz v1, :cond_0

    .line 33
    new-instance v3, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;

    invoke-direct {v3, p1, v4, v1}, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryGalleryTopIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v3, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;

    invoke-direct {v3, p1}, Lcom/aviary/android/feather/graphics/GalleryTopIndicatorDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryGalleryTopIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
