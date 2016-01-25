.class Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CropPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/CropPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryAdapter"
.end annotation


# instance fields
.field final INVALID_POSITION:I

.field final VALID_POSITION:I

.field final VALID_POSITION_CUSTOM:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mRes:Landroid/content/res/Resources;

.field private mValues:[Ljava/lang/String;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/CropPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/CropPanel;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/CropPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->INVALID_POSITION:I

    .line 293
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->VALID_POSITION:I

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->VALID_POSITION_CUSTOM:I

    .line 301
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 302
    iput-object p3, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mValues:[Ljava/lang/String;

    .line 303
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mRes:Landroid/content/res/Resources;

    .line 304
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mValues:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 318
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    move v0, v1

    .line 329
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/CropPanel;->mNonInvertOptions:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "valid":Z
    :cond_1
    move v0, v2

    .line 328
    goto :goto_0

    .restart local v0    # "valid":Z
    :cond_2
    move v1, v2

    .line 329
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->getItemViewType(I)I

    move-result v4

    .line 337
    .local v4, "type":I
    const/4 v0, 0x0

    .line 338
    .local v0, "image":Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    const/4 v3, 0x0

    .line 342
    .local v3, "text":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 343
    if-ne v4, v9, :cond_2

    .line 344
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/aviary/android/feather/R$layout;->aviary_gallery_crop_item_view:I

    iget-object v7, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v7, v7, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 353
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 355
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    .local v1, "label":Ljava/lang/String;
    sget v5, Lcom/aviary/android/feather/R$id;->text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "text":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 357
    .restart local v3    # "text":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    if-ne v4, v9, :cond_1

    .line 361
    sget v5, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "image":Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    check-cast v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 365
    .restart local v0    # "image":Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-boolean v5, v5, Lcom/aviary/android/feather/effects/CropPanel;->mStrictPolicy:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/CropPanel;->mNonInvertOptions:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 366
    const/4 v2, 0x0

    .line 371
    .local v2, "targetVisibility":I
    :goto_1
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setVisibility(I)V

    .line 373
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-boolean v5, v5, Lcom/aviary/android/feather/effects/CropPanel;->isChecked:Z

    invoke-virtual {v0, v5}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(Z)V

    .line 380
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "targetVisibility":I
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 381
    return-object p2

    .line 345
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 346
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/aviary/android/feather/R$layout;->aviary_gallery_crop_item_view_custom:I

    iget-object v7, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v7, v7, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 348
    :cond_3
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/aviary/android/feather/R$layout;->aviary_gallery_item_view:I

    iget-object v7, p0, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v7, v7, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 349
    sget v5, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 368
    .restart local v1    # "label":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x8

    .restart local v2    # "targetVisibility":I
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x3

    return v0
.end method
