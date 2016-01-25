.class public Lcom/liquable/nemo/sticker/StickerThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "StickerThumbnail.java"


# static fields
.field public static final DEFAULT_HEIGHT_IN_DP:I = 0x40

.field public static final DEFAULT_WIDTH_IN_DP:I = 0x40


# instance fields
.field private final height:I

.field private loading:Z

.field private final sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 1
    .param p1, "sticker"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    const/16 v0, 0x40

    .line 31
    invoke-direct {p0, p1, v0, v0}, Lcom/liquable/nemo/sticker/StickerThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerDto;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/model/sticker/StickerDto;II)V
    .locals 1
    .param p1, "sticker"    # Lcom/liquable/nemo/model/sticker/StickerDto;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->loading:Z

    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 36
    iput p2, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->width:I

    .line 37
    iput p3, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->height:I

    .line 39
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->loading:Z

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 52
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/liquable/nemo/sticker/StickerThumbnail;

    .line 55
    .local v0, "other":Lcom/liquable/nemo/sticker/StickerThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    if-nez v3, :cond_3

    .line 56
    iget-object v3, v0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    if-eqz v3, :cond_0

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/sticker/StickerDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 60
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 67
    const/16 v0, 0x1f

    .line 68
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 69
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 70
    return v1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerDto;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 75
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    if-eqz v2, :cond_1

    .line 77
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerThumbnailKeyPathFile(Lcom/liquable/nemo/model/sticker/StickerDto;)Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, "keyPathFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->width:I

    .line 81
    invoke-static {p1, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    iget v4, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->height:I

    .line 82
    invoke-static {p1, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 79
    invoke-static {v2, v5, v3, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 83
    .local v0, "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    iput-boolean v5, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->loading:Z

    .line 84
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 89
    .end local v0    # "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .end local v1    # "keyPathFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 86
    .restart local v1    # "keyPathFile":Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->sticker:Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerThumbnail(Lcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 88
    .end local v1    # "keyPathFile":Ljava/io/File;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->loading:Z

    .line 89
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget v0, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 95
    iget v0, p0, Lcom/liquable/nemo/sticker/StickerThumbnail;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 96
    return-void
.end method
