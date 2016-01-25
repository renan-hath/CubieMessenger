.class Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/DrawingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryColorAdapter"
.end annotation


# instance fields
.field private final ERASER_POSITION:I

.field private final INVALID_POSITION:I

.field private final VALID_POSITION:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mRes:Landroid/content/res/Resources;

.field private sizes:[I

.field final synthetic this$0:Lcom/aviary/android/feather/effects/DrawingPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/DrawingPanel;Landroid/content/Context;[I)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/DrawingPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "values"    # [I

    .prologue
    .line 532
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->VALID_POSITION:I

    .line 525
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->INVALID_POSITION:I

    .line 526
    const/4 v0, 0x2

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->ERASER_POSITION:I

    .line 533
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 534
    iput-object p3, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->sizes:[I

    .line 535
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->mRes:Landroid/content/res/Resources;

    .line 536
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->sizes:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->sizes:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 550
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    move v1, v2

    .line 562
    .local v1, "valid":Z
    :goto_0
    if-nez v1, :cond_1

    .line 569
    :goto_1
    return v2

    .end local v1    # "valid":Z
    :cond_0
    move v1, v3

    .line 560
    goto :goto_0

    .line 565
    .restart local v1    # "valid":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 566
    .local v0, "color":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 567
    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 569
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 577
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->getItemViewType(I)I

    move-result v3

    .line 579
    .local v3, "type":I
    const/4 v1, 0x0

    .line 580
    .local v1, "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    const/4 v0, 0x0

    .line 582
    .local v0, "color":I
    if-nez p2, :cond_3

    .line 584
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 585
    iget-object v4, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/aviary/android/feather/R$layout;->aviary_gallery_item_highlight_view:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 590
    :goto_0
    if-nez v3, :cond_0

    .line 591
    new-instance v1, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    .end local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    iget-object v4, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    invoke-virtual {v4}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;-><init>(Landroid/content/Context;)V

    .line 592
    .restart local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    sget v4, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 593
    .local v2, "image":Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 603
    .end local v2    # "image":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    .line 604
    iget-object v4, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->sizes:[I

    aget v0, v4, p1

    .line 605
    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->setColor(I)V

    .line 608
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 609
    return-object p2

    .line 587
    :cond_2
    iget-object v4, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/aviary/android/feather/R$layout;->aviary_gallery_item_view:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 598
    :cond_3
    if-nez v3, :cond_0

    .line 599
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    check-cast v1, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    .restart local v1    # "drawable":Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x3

    return v0
.end method
