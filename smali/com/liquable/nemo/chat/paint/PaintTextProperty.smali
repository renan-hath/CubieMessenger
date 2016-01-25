.class Lcom/liquable/nemo/chat/paint/PaintTextProperty;
.super Ljava/lang/Object;
.source "PaintTextProperty.java"


# instance fields
.field private final color:I

.field private final paintBubbleStyle:Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

.field private final paintItemIndex:I

.field private final rotation:F

.field private final scale:F

.field private final text:Ljava/lang/String;

.field private final textRect:Landroid/graphics/Rect;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IILjava/lang/String;ILcom/liquable/nemo/chat/paint/PaintBubbleStyle;FFLandroid/graphics/Rect;I)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "color"    # I
    .param p5, "paintBubbleStyle"    # Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;
    .param p6, "scale"    # F
    .param p7, "rotation"    # F
    .param p8, "textRect"    # Landroid/graphics/Rect;
    .param p9, "paintItemIndex"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->x:I

    .line 34
    iput p2, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->y:I

    .line 35
    iput-object p3, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->text:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->color:I

    .line 37
    iput-object p5, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->paintBubbleStyle:Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    .line 38
    iput p6, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->scale:F

    .line 39
    iput p7, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->rotation:F

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->textRect:Landroid/graphics/Rect;

    .line 41
    iput p9, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->paintItemIndex:I

    .line 42
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->color:I

    return v0
.end method

.method public getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->paintBubbleStyle:Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    return-object v0
.end method

.method public getPaintItemIndex()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->paintItemIndex:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->rotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->scale:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->textRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->y:I

    return v0
.end method

.method public withStyle(Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .locals 10
    .param p1, "newPaintBubbleStyle"    # Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    .prologue
    .line 86
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getX()I

    move-result v1

    .line 87
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getY()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getText()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getColor()I

    move-result v4

    .line 91
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getScale()F

    move-result v6

    .line 92
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getRotation()F

    move-result v7

    .line 93
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getTextRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 94
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintItemIndex()I

    move-result v9

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;-><init>(IILjava/lang/String;ILcom/liquable/nemo/chat/paint/PaintBubbleStyle;FFLandroid/graphics/Rect;I)V

    return-object v0
.end method

.method public withText(Ljava/lang/String;)Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .locals 10
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getX()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getY()I

    move-result v2

    .line 101
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getColor()I

    move-result v4

    .line 102
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getScale()F

    move-result v6

    .line 104
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getRotation()F

    move-result v7

    .line 105
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getTextRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 106
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintItemIndex()I

    move-result v9

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;-><init>(IILjava/lang/String;ILcom/liquable/nemo/chat/paint/PaintBubbleStyle;FFLandroid/graphics/Rect;I)V

    return-object v0
.end method

.method public withTextDimension(II)Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 110
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getX()I

    move-result v1

    .line 111
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getY()I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getText()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getColor()I

    move-result v4

    .line 114
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v5

    .line 115
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getScale()F

    move-result v6

    .line 116
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getRotation()F

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintItemIndex()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;-><init>(IILjava/lang/String;ILcom/liquable/nemo/chat/paint/PaintBubbleStyle;FFLandroid/graphics/Rect;I)V

    return-object v0
.end method
