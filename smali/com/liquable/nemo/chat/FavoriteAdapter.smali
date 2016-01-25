.class public Lcom/liquable/nemo/chat/FavoriteAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoriteAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final loadableImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/sticker/StickerThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private final stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "emojis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "stickers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->loadableImageMap:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->stickers:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->emojis:Ljava/util/List;

    .line 35
    iput-object p4, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->emojis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->stickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/FavoriteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/FavoriteAdapter;->isSticker(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->stickers:Ljava/util/List;

    iget-object v1, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->emojis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->emojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x38

    const/4 v8, 0x0

    .line 60
    if-nez p2, :cond_1

    .line 61
    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, "emojiView":Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v6, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->context:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->context:Landroid/content/Context;

    .line 64
    invoke-static {v7, v9}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/FavoriteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/FavoriteAdapter;->isSticker(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    iget-object v5, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    iget-object v5, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    check-cast v3, Lcom/liquable/nemo/sticker/StickerThumbnail;

    .line 82
    .restart local v3    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v5, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 89
    .end local v3    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    :cond_0
    :goto_2
    return-object v2

    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "emojiView":Landroid/widget/ImageView;
    :cond_1
    move-object v2, p2

    .line 67
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2    # "emojiView":Landroid/widget/ImageView;
    goto :goto_0

    .line 77
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    :cond_2
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/liquable/nemo/sticker/model/StickerManager;->findVisibleSticker(Ljava/lang/String;Z)Lcom/liquable/nemo/sticker/model/VisibleSticker;

    move-result-object v4

    .line 79
    .local v4, "visibleSticker":Lcom/liquable/nemo/sticker/model/VisibleSticker;
    new-instance v3, Lcom/liquable/nemo/sticker/StickerThumbnail;

    .end local v3    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    invoke-virtual {v4}, Lcom/liquable/nemo/sticker/model/VisibleSticker;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v5

    invoke-direct {v3, v5, v9, v9}, Lcom/liquable/nemo/sticker/StickerThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerDto;II)V

    .line 80
    .restart local v3    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    iget-object v5, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    .end local v3    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    .end local v4    # "visibleSticker":Lcom/liquable/nemo/sticker/model/VisibleSticker;
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/liquable/nemo/chat/EmojiUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 85
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public isSticker(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/chat/FavoriteAdapter;->emojis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
