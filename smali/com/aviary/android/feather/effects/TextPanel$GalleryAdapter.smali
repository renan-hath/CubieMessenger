.class Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/TextPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryAdapter"
.end annotation


# instance fields
.field private final INVALID_POSITION:I

.field private final VALID_POSITION:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mRes:Landroid/content/res/Resources;

.field private sizes:[I

.field final synthetic this$0:Lcom/aviary/android/feather/effects/TextPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/TextPanel;Landroid/content/Context;[I)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/TextPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "values"    # [I

    .prologue
    .line 540
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->VALID_POSITION:I

    .line 534
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->INVALID_POSITION:I

    .line 541
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 542
    iput-object p3, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->sizes:[I

    .line 543
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->mRes:Landroid/content/res/Resources;

    .line 544
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->sizes:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->sizes:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 558
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 568
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    move v0, v2

    .line 569
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "valid":Z
    :cond_0
    move v0, v1

    .line 568
    goto :goto_0

    .restart local v0    # "valid":Z
    :cond_1
    move v1, v2

    .line 569
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 575
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->getItemViewType(I)I

    move-result v3

    .line 577
    .local v3, "type":I
    const/4 v1, 0x0

    .line 578
    .local v1, "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    const/4 v0, 0x0

    .line 580
    .local v0, "color":I
    if-nez p2, :cond_3

    .line 582
    iget-object v5, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/aviary/android/feather/R$layout;->aviary_gallery_item_view:I

    iget-object v7, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    # getter for: Lcom/aviary/android/feather/effects/TextPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;
    invoke-static {v7}, Lcom/aviary/android/feather/effects/TextPanel;->access$100(Lcom/aviary/android/feather/effects/TextPanel;)Lcom/aviary/android/feather/widget/AviaryGallery;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 584
    if-nez v3, :cond_0

    .line 585
    new-instance v1, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    .end local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    iget-object v5, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    invoke-virtual {v5}, Lcom/aviary/android/feather/effects/TextPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v5

    invoke-interface {v5}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;-><init>(Landroid/content/Context;)V

    .line 586
    .restart local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    sget v5, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 587
    .local v2, "image":Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 596
    .end local v2    # "image":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    .line 597
    iget-object v5, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->sizes:[I

    aget v0, v5, p1

    .line 598
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->setColor(I)V

    .line 601
    :cond_1
    iget-object v5, p0, Lcom/aviary/android/feather/effects/TextPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    # getter for: Lcom/aviary/android/feather/effects/TextPanel;->mSelectedPosition:I
    invoke-static {v5}, Lcom/aviary/android/feather/effects/TextPanel;->access$200(Lcom/aviary/android/feather/effects/TextPanel;)I

    move-result v5

    if-ne v5, p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 602
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 603
    return-object p2

    .line 591
    :cond_3
    if-nez v3, :cond_0

    .line 592
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    check-cast v1, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    .restart local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x2

    return v0
.end method
