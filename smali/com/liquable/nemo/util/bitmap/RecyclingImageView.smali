.class public Lcom/liquable/nemo/util/bitmap/RecyclingImageView;
.super Landroid/widget/ImageView;
.source "RecyclingImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private static notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "isDisplayed"    # Z

    .prologue
    .line 35
    instance-of v3, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;

    if-eqz v3, :cond_1

    .line 37
    check-cast p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->setIsDisplayed(Z)V

    .line 45
    :cond_0
    return-void

    .line 38
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 40
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 41
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/liquable/nemo/util/bitmap/RecyclingImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/bitmap/RecyclingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 64
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/liquable/nemo/util/bitmap/RecyclingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/liquable/nemo/util/bitmap/RecyclingImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 81
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/bitmap/RecyclingImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 82
    return-void
.end method
