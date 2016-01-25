.class public Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "CustomStickerThumbnail.java"


# static fields
.field private static final DEFAULT_HEIGHT_IN_DP:I = 0x40

.field private static final DEFAULT_WIDTH_IN_DP:I = 0x40


# instance fields
.field private final customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

.field private loading:Z


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)V
    .locals 1
    .param p1, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->loading:Z

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 24
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->loading:Z

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;

    .line 40
    .local v0, "other":Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    if-nez v3, :cond_3

    .line 41
    iget-object v3, v0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    if-eqz v3, :cond_0

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 45
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x1f

    .line 53
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 54
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 55
    return v1

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x40

    .line 60
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->customSticker:Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    invoke-virtual {v1, v2, v3, v3}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->loadThumb(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/liquable/nemo/sticker/custom/CustomStickerThumbnail;->loading:Z

    .line 64
    return-object v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x40

    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 71
    return-void
.end method

.method public showLoadingAnimation()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method
