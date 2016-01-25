.class public Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectPromotionStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private stickerItemDtos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "stickerItemDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->activity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->stickerItemDtos:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->stickerItemDtos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->stickerItemDtos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->getItem(I)Lcom/liquable/nemo/model/sticker/StickerItemDto;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x34

    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03011b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v1, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;)V

    .line 61
    .local v1, "viewHolder":Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;
    const v2, 0x7f080207

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;->stickerTitleTextView:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0802b2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;->stickerThumbnail:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->getItem(I)Lcom/liquable/nemo/model/sticker/StickerItemDto;

    move-result-object v0

    .line 69
    .local v0, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    iget-object v2, v1, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;->stickerTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, v1, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;->stickerThumbnail:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    iget-object v5, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->activity:Landroid/app/Activity;

    .line 72
    invoke-static {v5, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->activity:Landroid/app/Activity;

    .line 73
    invoke-static {v6, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v0, v5, v6}, Lcom/liquable/nemo/sticker/StickerItemThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;II)V

    .line 71
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 74
    return-object p2

    .line 65
    .end local v0    # "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter$ViewHolder;
    goto :goto_0
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->stickerItemDtos:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method
