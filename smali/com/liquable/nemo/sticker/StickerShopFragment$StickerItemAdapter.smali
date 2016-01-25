.class Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickerShopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final loadableImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/sticker/StickerItemThumbnail;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->loadableImageMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Lcom/liquable/nemo/sticker/StickerShopFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;
    .param p2, "x1"    # Lcom/liquable/nemo/sticker/StickerShopFragment$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->resetPurchaseState()V

    return-void
.end method

.method private isDownloading(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Z
    .locals 2
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 203
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->isStickerPackageDownloading(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isOwned(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Z
    .locals 2
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->limitedOfferSuccessItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$200(Lcom/liquable/nemo/sticker/StickerShopFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPurchased(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Z
    .locals 2
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->purchaseSuccessItems:Ljava/util/Set;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$300(Lcom/liquable/nemo/sticker/StickerShopFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanBuy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPurchaseState()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->notifyDataSetChanged()V

    .line 222
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->stickerItemDtos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->stickerItemDtos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->stickerItemDtos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->stickerItemDtos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 150
    if-nez p2, :cond_0

    .line 151
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03011d

    .line 152
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 153
    new-instance v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;

    invoke-direct {v2, p0, v5}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;Lcom/liquable/nemo/sticker/StickerShopFragment$1;)V

    .line 154
    .local v2, "viewHolder":Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;
    const v3, 0x7f080207

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerTitleTextView:Landroid/widget/TextView;

    .line 155
    const v3, 0x7f0802b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerThumbnailImageView:Landroid/widget/ImageView;

    .line 156
    const v3, 0x7f0802b5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->isNewStickerImageView:Landroid/widget/ImageView;

    .line 157
    const v3, 0x7f080208

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemPrice:Landroid/widget/TextView;

    .line 158
    const v3, 0x7f0802b6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemStatus:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 165
    .local v1, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isNewPackage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->isNewStickerImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :goto_1
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemPrice:Landroid/widget/TextView;

    invoke-static {v3, v1, v4}, Lcom/liquable/nemo/sticker/StickerShopFragment;->displayItemPrice(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerItemDto;Landroid/widget/TextView;)V

    .line 176
    invoke-direct {p0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->isDownloading(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemStatus:Landroid/widget/TextView;

    const v4, 0x7f0d027b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :goto_2
    const/4 v0, 0x0

    .line 189
    .local v0, "loadableImage":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "loadableImage":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    check-cast v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    .line 197
    .restart local v0    # "loadableImage":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    :goto_3
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v3}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$100(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    iget-object v4, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 199
    return-object p2

    .line 161
    .end local v0    # "loadableImage":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    .end local v1    # "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .end local v2    # "viewHolder":Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;
    goto :goto_0

    .line 168
    .restart local v1    # "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    :cond_1
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->isNewStickerImageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 178
    :cond_2
    invoke-direct {p0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->isPurchased(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemStatus:Landroid/widget/TextView;

    const v4, 0x7f0d04c0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 180
    :cond_3
    invoke-direct {p0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->isOwned(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemStatus:Landroid/widget/TextView;

    const v4, 0x7f0d04bf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 182
    :cond_4
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanLimitedTimeOffer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemStatus:Landroid/widget/TextView;

    const v4, 0x7f0d04be

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 185
    :cond_5
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerItemStatus:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 192
    .restart local v0    # "loadableImage":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    :cond_6
    new-instance v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    .end local v0    # "loadableImage":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    iget-object v3, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerThumbnailImageView:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, v2, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter$ViewHolder;->stickerThumbnailImageView:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v3, v4}, Lcom/liquable/nemo/sticker/StickerItemThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;II)V

    .line 195
    .restart local v0    # "loadableImage":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public reset(Ljava/util/List;)V
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
    .line 216
    .local p1, "stickerItemDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->stickerItemDtos:Ljava/util/List;

    .line 217
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->notifyDataSetChanged()V

    .line 218
    return-void
.end method
