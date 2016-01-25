.class public Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
.super Ljava/lang/Object;
.source "PaintEmojiProperty.java"


# instance fields
.field private final emojiCode:Ljava/lang/String;

.field private final flip:Z

.field private final paintItemIndex:I

.field private final rotation:F

.field private final scale:F

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIFFLjava/lang/String;ZI)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "rotation"    # F
    .param p5, "emojiCode"    # Ljava/lang/String;
    .param p6, "flip"    # Z
    .param p7, "paintItemIndex"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p7, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->paintItemIndex:I

    .line 27
    iput p3, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->scale:F

    .line 28
    iput p4, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->rotation:F

    .line 29
    iput-object p5, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->emojiCode:Ljava/lang/String;

    .line 30
    iput p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->x:I

    .line 31
    iput p2, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->y:I

    .line 32
    iput-boolean p6, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->flip:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getEmojiCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->emojiCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPaintItemIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->paintItemIndex:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->rotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->scale:F

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->y:I

    return v0
.end method

.method public isFlip()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->flip:Z

    return v0
.end method

.method public toggleFlip()Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    .locals 8

    .prologue
    .line 64
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->x:I

    iget v2, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->y:I

    iget v3, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->scale:F

    iget v4, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->rotation:F

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->emojiCode:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->flip:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iget v7, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;->paintItemIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;-><init>(IIFFLjava/lang/String;ZI)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
