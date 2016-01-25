.class public Lcom/liquable/nemo/gallery/GalleryBigImageView;
.super Landroid/widget/ImageView;
.source "GalleryBigImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;
    }
.end annotation


# instance fields
.field private onImageLoadedListener:Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryBigImageView;->onImageLoadedListener:Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryBigImageView;->onImageLoadedListener:Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;

    invoke-interface {v0}, Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;->onImageLoaded()V

    .line 25
    :cond_0
    return-void
.end method

.method public setOnImageLoadedListener(Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;)V
    .locals 0
    .param p1, "onImageLoadedListener"    # Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryBigImageView;->onImageLoadedListener:Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;

    .line 29
    return-void
.end method
