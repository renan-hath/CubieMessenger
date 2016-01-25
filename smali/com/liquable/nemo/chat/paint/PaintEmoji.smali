.class Lcom/liquable/nemo/chat/paint/PaintEmoji;
.super Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
.source "PaintEmoji.java"


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private final height:I

.field private final previous:Lcom/liquable/nemo/chat/paint/PaintEmoji;

.field private final property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;Lcom/liquable/nemo/chat/paint/PaintEmoji;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "property"    # Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    .param p3, "previous"    # Lcom/liquable/nemo/chat/paint/PaintEmoji;

    .prologue
    const/4 v6, 0x1

    .line 23
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getX()I

    move-result v2

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getY()I

    move-result v3

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getScale()F

    move-result v4

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getRotation()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;-><init>(Landroid/content/Context;IIFF)V

    .line 24
    iput-object p2, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .line 25
    iput-object p3, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->previous:Lcom/liquable/nemo/chat/paint/PaintEmoji;

    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->loadBitmap()Landroid/graphics/Bitmap;

    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->width:I

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->height:I

    .line 32
    if-eqz p3, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->setVisible(Z)V

    .line 38
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->bitmapPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 41
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->moveTo(II)V

    goto :goto_0
.end method

.method private loadBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 69
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getEmojiCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/EmojiUtil;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->cachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public createForTransform(I)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .locals 3
    .param p1, "paintItemIndex"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintEmoji;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->toProperty(I)Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;-><init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;Lcom/liquable/nemo/chat/paint/PaintEmoji;)V

    return-object v0
.end method

.method public findPrevious()Lcom/liquable/nemo/chat/paint/PaintEmoji;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->previous:Lcom/liquable/nemo/chat/paint/PaintEmoji;

    return-object v0
.end method

.method protected getHeight()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->height:I

    return v0
.end method

.method protected getWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->width:I

    return v0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 75
    return-void
.end method

.method protected onPaint(Landroid/graphics/Canvas;Z)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "transforming"    # Z

    .prologue
    const/4 v6, 0x0

    .line 79
    if-nez p2, :cond_0

    const/4 v2, 0x1

    .line 80
    .local v2, "useAntiAlias":Z
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 83
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v1, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 88
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 92
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    return-void

    .line 79
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "useAntiAlias":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "useAntiAlias":Z
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public toProperty(I)Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    .locals 8
    .param p1, "paintItemIndex"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getX()I

    move-result v1

    .line 96
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getY()I

    move-result v2

    .line 97
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getScale()F

    move-result v3

    .line 98
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->getRotation()F

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .line 99
    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->getEmojiCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    .line 100
    invoke-virtual {v6}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->isFlip()Z

    move-result v6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;-><init>(IIFFLjava/lang/String;ZI)V

    return-object v0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->previous:Lcom/liquable/nemo/chat/paint/PaintEmoji;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmoji;->previous:Lcom/liquable/nemo/chat/paint/PaintEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintEmoji;->setVisible(Z)V

    .line 109
    :cond_0
    return-void
.end method
