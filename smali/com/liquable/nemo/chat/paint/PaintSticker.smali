.class Lcom/liquable/nemo/chat/paint/PaintSticker;
.super Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
.source "PaintSticker.java"


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private final height:I

.field private final previous:Lcom/liquable/nemo/chat/paint/PaintSticker;

.field private final property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintStickerProperty;Lcom/liquable/nemo/chat/paint/PaintSticker;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "property"    # Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    .param p3, "previous"    # Lcom/liquable/nemo/chat/paint/PaintSticker;

    .prologue
    const/4 v6, 0x1

    .line 27
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getX()I

    move-result v2

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getY()I

    move-result v3

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getScale()F

    move-result v4

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getRotation()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;-><init>(Landroid/content/Context;IIFF)V

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .line 29
    iput-object p3, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->previous:Lcom/liquable/nemo/chat/paint/PaintSticker;

    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->loadBitmap()Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->width:I

    .line 34
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->height:I

    .line 36
    if-eqz p3, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->setVisible(Z)V

    .line 42
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->bitmapPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 45
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/paint/PaintSticker;->moveTo(II)V

    goto :goto_0
.end method

.method private loadBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 81
    :goto_0
    return-object v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .local v1, "density":F
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerBitmaps(Lcom/liquable/nemo/model/sticker/StickerDto;F)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerIndex()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 76
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/liquable/nemo/util/ImageUtils;->createEmptyBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 81
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->cachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public createForTransform(I)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .locals 3
    .param p1, "paintItemIndex"    # I

    .prologue
    .line 49
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintSticker;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintSticker;->toProperty(I)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;-><init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintStickerProperty;Lcom/liquable/nemo/chat/paint/PaintSticker;)V

    return-object v0
.end method

.method public findPrevious()Lcom/liquable/nemo/chat/paint/PaintSticker;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->previous:Lcom/liquable/nemo/chat/paint/PaintSticker;

    return-object v0
.end method

.method protected getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->height:I

    return v0
.end method

.method protected getWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->width:I

    return v0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 87
    return-void
.end method

.method protected onPaint(Landroid/graphics/Canvas;Z)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "transforming"    # Z

    .prologue
    .line 91
    if-nez p2, :cond_1

    const/4 v4, 0x1

    .line 92
    .local v4, "useAntiAlias":Z
    :goto_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 95
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 99
    .local v2, "scaleX":F
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 101
    .local v3, "scaleY":F
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->isFlip()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getWidth()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 115
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 116
    return-void

    .line 91
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "useAntiAlias":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 111
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v2    # "scaleX":F
    .restart local v3    # "scaleY":F
    .restart local v4    # "useAntiAlias":Z
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getWidth()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1
.end method

.method public toProperty(I)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    .locals 9
    .param p1, "paintItemIndex"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getX()I

    move-result v1

    .line 120
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getY()I

    move-result v2

    .line 121
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getScale()F

    move-result v3

    .line 122
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintSticker;->getRotation()F

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .line 123
    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .line 124
    invoke-virtual {v6}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->getStickerIndex()I

    move-result v6

    iget-object v7, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->property:Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    .line 125
    invoke-virtual {v7}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->isFlip()Z

    move-result v7

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;-><init>(IIFFLcom/liquable/nemo/model/sticker/StickerDto;IZI)V

    return-object v0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->previous:Lcom/liquable/nemo/chat/paint/PaintSticker;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintSticker;->previous:Lcom/liquable/nemo/chat/paint/PaintSticker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintSticker;->setVisible(Z)V

    .line 134
    :cond_0
    return-void
.end method
