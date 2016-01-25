.class Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/DrawingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GallerySizeAdapter"
.end annotation


# instance fields
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
    .line 452
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->VALID_POSITION:I

    .line 446
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->INVALID_POSITION:I

    .line 453
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 454
    iput-object p3, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->sizes:[I

    .line 455
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->mRes:Landroid/content/res/Resources;

    .line 456
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->sizes:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->sizes:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 470
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 480
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    move v0, v2

    .line 481
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "valid":Z
    :cond_0
    move v0, v1

    .line 480
    goto :goto_0

    .restart local v0    # "valid":Z
    :cond_1
    move v1, v2

    .line 481
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->getItemViewType(I)I

    move-result v3

    .line 489
    .local v3, "type":I
    const/4 v0, 0x0

    .line 490
    .local v0, "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    const/4 v2, 0x1

    .line 492
    .local v2, "size":I
    if-nez p2, :cond_2

    .line 494
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/aviary/android/feather/R$layout;->aviary_gallery_item_view:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 496
    if-nez v3, :cond_0

    .line 497
    new-instance v0, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    .end local v0    # "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    invoke-virtual {v5}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v5

    invoke-interface {v5}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;-><init>(Landroid/content/Context;)V

    .line 498
    .restart local v0    # "drawable":Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;
    sget v5, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 499
    .local v1, "image":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 508
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 509
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->sizes:[I

    aget v2, v5, p1

    .line 512
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->minRadiusSize:F
    invoke-static {v5}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$600(Lcom/aviary/android/feather/effects/DrawingPanel;)F

    move-result v5

    int-to-float v6, v2

    iget-object v7, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->minBrushSize:I
    invoke-static {v7}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$700(Lcom/aviary/android/feather/effects/DrawingPanel;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->maxBrushSize:I
    invoke-static {v7}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$800(Lcom/aviary/android/feather/effects/DrawingPanel;)I

    move-result v7

    iget-object v8, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->minBrushSize:I
    invoke-static {v8}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$700(Lcom/aviary/android/feather/effects/DrawingPanel;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->maxRadiusSize:F
    invoke-static {v7}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$900(Lcom/aviary/android/feather/effects/DrawingPanel;)F

    move-result v7

    iget-object v8, p0, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;->this$0:Lcom/aviary/android/feather/effects/DrawingPanel;

    # getter for: Lcom/aviary/android/feather/effects/DrawingPanel;->minRadiusSize:F
    invoke-static {v8}, Lcom/aviary/android/feather/effects/DrawingPanel;->access$600(Lcom/aviary/android/feather/effects/DrawingPanel;)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 514
    .local v4, "value":F
    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->setRadius(F)V

    .line 517
    .end local v4    # "value":F
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 518
    return-object p2

    .line 503
    :cond_2
    if-nez v3, :cond_0

    .line 504
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
    .line 475
    const/4 v0, 0x2

    return v0
.end method
