.class public Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "StickerCategoryThumbnail.java"


# static fields
.field public static final DEFAULT_HEIGHT_IN_DP:I = 0x34

.field public static final DEFAULT_WIDTH_IN_DP:I = 0x34


# instance fields
.field private final category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

.field private loading:Z


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V
    .locals 1
    .param p1, "category"    # Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->loading:Z

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 28
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->loading:Z

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 41
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;

    .line 44
    .local v0, "other":Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    if-nez v3, :cond_3

    .line 45
    iget-object v3, v0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    if-eqz v3, :cond_0

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 59
    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x34

    const/4 v5, 0x0

    .line 64
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 65
    .local v1, "keyPathFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {p1, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    .line 69
    invoke-static {p1, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 66
    invoke-static {v2, v5, v3, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 70
    .local v0, "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    iput-boolean v5, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->loading:Z

    .line 71
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 75
    .end local v0    # "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :goto_0
    return-object v2

    .line 73
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->category:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerCategoryThumbnail(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;->loading:Z

    .line 75
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x42500000    # 52.0f

    .line 81
    mul-float v0, p1, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 82
    mul-float v0, p1, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 83
    return-void
.end method

.method public showLoadingAnimation()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method
