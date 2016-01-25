.class Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "DelayedSpotDrawPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;
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

.field final synthetic this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;Landroid/content/Context;[I)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "values"    # [I

    .prologue
    .line 495
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->VALID_POSITION:I

    .line 489
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->INVALID_POSITION:I

    .line 496
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 497
    iput-object p3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->sizes:[I

    .line 498
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->mRes:Landroid/content/res/Resources;

    .line 499
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->sizes:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->sizes:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 513
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 523
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    move v0, v2

    .line 524
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "valid":Z
    :cond_0
    move v0, v1

    .line 523
    goto :goto_0

    .restart local v0    # "valid":Z
    :cond_1
    move v1, v2

    .line 524
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 530
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->getItemViewType(I)I

    move-result v3

    .line 532
    .local v3, "type":I
    const/4 v0, 0x0

    .line 533
    .local v0, "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    const/4 v2, 0x1

    .line 535
    .local v2, "size":I
    if-nez p2, :cond_3

    .line 537
    iget-object v6, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/aviary/android/feather/R$layout;->aviary_gallery_item_view:I

    iget-object v8, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v8, v8, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v6, v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 539
    if-nez v3, :cond_0

    .line 540
    new-instance v0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    .end local v0    # "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    iget-object v6, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v6}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v6

    invoke-interface {v6}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;-><init>(Landroid/content/Context;)V

    .line 541
    .restart local v0    # "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    sget v6, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 542
    .local v1, "image":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 551
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 552
    iget-object v6, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->sizes:[I

    aget v2, v6, p1

    .line 555
    iget-object v6, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget v6, v6, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->minRadiusSize:F

    int-to-float v7, v2

    iget-object v8, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    # getter for: Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->minBrushSize:I
    invoke-static {v8}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->access$000(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    # getter for: Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->maxBrushSize:I
    invoke-static {v8}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->access$100(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)I

    move-result v8

    iget-object v9, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    # getter for: Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->minBrushSize:I
    invoke-static {v9}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->access$000(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget v8, v8, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->maxRadiusSize:F

    iget-object v9, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget v9, v9, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->minRadiusSize:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 557
    .local v4, "value":F
    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->setRadius(F)V

    .line 560
    .end local v4    # "value":F
    :cond_1
    iget-object v6, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget v6, v6, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mSelectedPosition:I

    if-ne v6, p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 561
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 562
    return-object p2

    .line 546
    :cond_3
    if-nez v3, :cond_0

    .line 547
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    check-cast v0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    .restart local v0    # "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x2

    return v0
.end method
