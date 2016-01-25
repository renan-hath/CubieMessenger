.class public Lcom/liquable/nemo/sticker/StickerItemThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "StickerItemThumbnail.java"


# static fields
.field public static final DEFAULT_HEIGHT_IN_DP:I = 0x34

.field public static final DEFAULT_WIDTH_IN_DP:I = 0x34


# instance fields
.field private final heightInPx:I

.field private loading:Z

.field private final stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

.field private final widthInPx:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;II)V
    .locals 1
    .param p1, "StickerItemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .param p2, "widthInPx"    # I
    .param p3, "heightInPx"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->loading:Z

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 30
    iput p3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->heightInPx:I

    .line 31
    iput p2, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->widthInPx:I

    .line 32
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->loading:Z

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 45
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    .line 48
    .local v0, "other":Lcom/liquable/nemo/sticker/StickerItemThumbnail;
    iget v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->widthInPx:I

    iget v4, v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->widthInPx:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    iget v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->heightInPx:I

    iget v4, v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->heightInPx:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-nez v3, :cond_5

    .line 55
    iget-object v3, v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-eqz v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 59
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 68
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->widthInPx:I

    add-int/lit8 v1, v2, 0x1f

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->heightInPx:I

    add-int v1, v2, v3

    .line 70
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 71
    return v1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 76
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, "keyPathFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->widthInPx:I

    iget v4, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->heightInPx:I

    invoke-static {v2, v5, v3, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 83
    .local v0, "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    iput-boolean v5, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->loading:Z

    .line 84
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 89
    .end local v0    # "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :goto_0
    return-object v2

    .line 86
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 87
    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerItemThumbnail(Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->loading:Z

    .line 89
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget v0, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->widthInPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 96
    iget v0, p0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;->heightInPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 97
    return-void
.end method

.method public showLoadingAnimation()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
