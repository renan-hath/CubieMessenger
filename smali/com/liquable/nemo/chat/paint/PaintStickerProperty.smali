.class public Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
.super Ljava/lang/Object;
.source "PaintStickerProperty.java"


# instance fields
.field private final flip:Z

.field private final paintItemIndex:I

.field private final rotation:F

.field private final scale:F

.field private final stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

.field private final stickerIndex:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIFFLcom/liquable/nemo/model/sticker/StickerDto;IZI)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "rotation"    # F
    .param p5, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;
    .param p6, "stickerIndex"    # I
    .param p7, "flip"    # Z
    .param p8, "paintItemIndex"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p7, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->flip:Z

    .line 31
    iput p8, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->paintItemIndex:I

    .line 32
    iput p3, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->scale:F

    .line 33
    iput p4, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->rotation:F

    .line 34
    iput-object p5, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 35
    iput p6, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->stickerIndex:I

    .line 36
    iput p1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->x:I

    .line 37
    iput p2, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->y:I

    .line 38
    return-void
.end method


# virtual methods
.method public getPaintItemIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->paintItemIndex:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->rotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->scale:F

    return v0
.end method

.method public getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    return-object v0
.end method

.method public getStickerIndex()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->stickerIndex:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->y:I

    return v0
.end method

.method public isFlip()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->flip:Z

    return v0
.end method

.method public toggleFlip()Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    .locals 9

    .prologue
    .line 73
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->x:I

    iget v2, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->y:I

    iget v3, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->scale:F

    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->rotation:F

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    iget v6, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->stickerIndex:I

    iget-boolean v7, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->flip:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->paintItemIndex:I

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;-><init>(IIFFLcom/liquable/nemo/model/sticker/StickerDto;IZI)V

    return-object v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public withStickerIndex(I)Lcom/liquable/nemo/chat/paint/PaintStickerProperty;
    .locals 9
    .param p1, "newStickerIndex"    # I

    .prologue
    .line 84
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->x:I

    iget v2, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->y:I

    iget v3, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->scale:F

    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->rotation:F

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->stickerDto:Lcom/liquable/nemo/model/sticker/StickerDto;

    iget-boolean v7, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->flip:Z

    iget v8, p0, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;->paintItemIndex:I

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/chat/paint/PaintStickerProperty;-><init>(IIFFLcom/liquable/nemo/model/sticker/StickerDto;IZI)V

    return-object v0
.end method
