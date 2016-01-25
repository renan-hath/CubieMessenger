.class public Lcom/liquable/nemo/chat/StickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickerAdapter.java"


# instance fields
.field private final categoryCode:Ljava/lang/String;

.field private final context:Landroid/content/Context;

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

.field private stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categoryCode"    # Ljava/lang/String;
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/StickerAdapter;->loadableImageMap:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/chat/StickerAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/liquable/nemo/chat/StickerAdapter;->categoryCode:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSendableStickers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/StickerAdapter;->stickers:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/liquable/nemo/chat/StickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/chat/StickerAdapter;->stickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/chat/StickerAdapter;->stickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    if-nez p2, :cond_1

    .line 63
    new-instance v4, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/liquable/nemo/chat/StickerAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v4, "stickerThumbView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/liquable/nemo/chat/StickerAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 66
    .local v2, "screenWidth":I
    const/high16 v6, 0x42800000    # 64.0f

    iget-object v7, p0, Lcom/liquable/nemo/chat/StickerAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/liquable/nemo/util/NemoUIs;->getDensity(Landroid/content/Context;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 67
    .local v5, "widthOfSticker":I
    mul-int/lit8 v6, v5, 0x4

    if-ge v2, v6, :cond_0

    .line 68
    div-int/lit8 v6, v2, 0x4

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v0, v6, 0xa

    .line 69
    .local v0, "adjustedWidth":I
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .end local v0    # "adjustedWidth":I
    :cond_0
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    .end local v2    # "screenWidth":I
    .end local v5    # "widthOfSticker":I
    :goto_0
    iget-object v6, p0, Lcom/liquable/nemo/chat/StickerAdapter;->stickers:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 76
    .local v3, "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    iget-object v6, p0, Lcom/liquable/nemo/chat/StickerAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    iget-object v6, p0, Lcom/liquable/nemo/chat/StickerAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    check-cast v1, Lcom/liquable/nemo/sticker/StickerThumbnail;

    .line 85
    .restart local v1    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    :goto_1
    iget-object v6, p0, Lcom/liquable/nemo/chat/StickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v6, v4, v1}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 86
    return-object v4

    .end local v1    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    .end local v3    # "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    .end local v4    # "stickerThumbView":Landroid/widget/ImageView;
    :cond_1
    move-object v4, p2

    .line 73
    check-cast v4, Landroid/widget/ImageView;

    .restart local v4    # "stickerThumbView":Landroid/widget/ImageView;
    goto :goto_0

    .line 82
    .restart local v1    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    .restart local v3    # "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    :cond_2
    new-instance v1, Lcom/liquable/nemo/sticker/StickerThumbnail;

    .end local v1    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    invoke-direct {v1, v3}, Lcom/liquable/nemo/sticker/StickerThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 83
    .restart local v1    # "loadableImage":Lcom/liquable/nemo/sticker/StickerThumbnail;
    iget-object v6, p0, Lcom/liquable/nemo/chat/StickerAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/StickerAdapter;->categoryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSendableStickers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/StickerAdapter;->stickers:Ljava/util/List;

    .line 91
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/StickerAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
