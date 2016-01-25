.class public final Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomStickerAdapter.java"


# static fields
.field private static final CUSTOM_STICKER_ADD_BUTTON:Ljava/lang/String; = "CustomStickerAddButton"


# instance fields
.field private final context:Landroid/content/Context;

.field private customStickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final includeAddButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "includeAddButton"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 29
    iput-boolean p3, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->includeAddButton:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->customStickers:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->includeAddButton:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->customStickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->customStickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->includeAddButton:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->customStickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 48
    const-string/jumbo v0, "CustomStickerAddButton"

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->customStickers:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-boolean v1, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->includeAddButton:Z

    if-eqz v1, :cond_0

    .line 62
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 64
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, -0x2

    .line 71
    if-nez p2, :cond_0

    .line 72
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "customStickerThumbView":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :goto_0
    iget-boolean v2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->includeAddButton:Z

    if-nez v2, :cond_1

    .line 81
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 82
    .local v0, "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;

    invoke-direct {v3, v0}, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;-><init>(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    invoke-virtual {v2, v1, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 93
    .end local v0    # "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    :goto_1
    return-object v1

    .end local v1    # "customStickerThumbView":Landroid/widget/ImageView;
    :cond_0
    move-object v1, p2

    .line 77
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1    # "customStickerThumbView":Landroid/widget/ImageView;
    goto :goto_0

    .line 86
    :cond_1
    if-nez p1, :cond_2

    .line 87
    const v2, 0x7f020173

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 90
    .restart local v0    # "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;

    invoke-direct {v3, v0}, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;-><init>(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V

    invoke-virtual {v2, v1, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x2

    return v0
.end method

.method public reset(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "updatedCustomStickers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomSticker;>;"
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->customStickers:Ljava/util/List;

    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method
