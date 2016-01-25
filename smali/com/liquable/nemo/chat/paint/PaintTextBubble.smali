.class Lcom/liquable/nemo/chat/paint/PaintTextBubble;
.super Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
.source "PaintTextBubble.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintItem;


# static fields
.field private static final PAINT_TEXT_FONT_SIZE:I = 0x1c


# instance fields
.field private final bubbleRect:Landroid/graphics/Rect;

.field protected final context:Landroid/content/Context;

.field private final previous:Lcom/liquable/nemo/chat/paint/PaintTextBubble;

.field private final property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

.field private final textLayout:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintTextProperty;Lcom/liquable/nemo/chat/paint/PaintTextBubble;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "property"    # Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .param p3, "previous"    # Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    .prologue
    const/4 v7, 0x1

    .line 37
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getX()I

    move-result v2

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getY()I

    move-result v3

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getScale()F

    move-result v4

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getRotation()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;-><init>(Landroid/content/Context;IIFF)V

    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 40
    iput-object p3, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->previous:Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    .line 41
    iput-boolean v7, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->visible:Z

    .line 43
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getTextRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->wrapRect(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->bubbleRect:Landroid/graphics/Rect;

    .line 45
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 46
    .local v2, "textPaint":Landroid/text/TextPaint;
    invoke-static {p1}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getTextSizePixel(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 47
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 48
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 52
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getText()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p2}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getTextRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->textLayout:Landroid/text/StaticLayout;

    .line 61
    if-eqz p3, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->setVisible(Z)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->moveTo(II)V

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintTextProperty;Lcom/liquable/nemo/chat/paint/PaintTextBubble;)Lcom/liquable/nemo/chat/paint/PaintTextBubble;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .param p2, "previous"    # Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    .prologue
    .line 14
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;-><init>(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintTextProperty;Lcom/liquable/nemo/chat/paint/PaintTextBubble;)V

    return-object v0
.end method

.method public static getTextSizePixel(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v0, v1, v2

    .line 19
    .local v0, "ratio":F
    const/high16 v1, 0x41e00000    # 28.0f

    mul-float/2addr v1, v0

    return v1
.end method


# virtual methods
.method public createForTransform(I)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
    .locals 2
    .param p1, "paintItemIndex"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->toProperty(I)Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->create(Landroid/content/Context;Lcom/liquable/nemo/chat/paint/PaintTextProperty;Lcom/liquable/nemo/chat/paint/PaintTextBubble;)Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    move-result-object v0

    return-object v0
.end method

.method public final findPrevious()Lcom/liquable/nemo/chat/paint/PaintTextBubble;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->previous:Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    return-object v0
.end method

.method protected getHeight()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->bubbleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method protected getWidth()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->bubbleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected final onPaint(Landroid/graphics/Canvas;Z)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "transforming"    # Z

    .prologue
    .line 94
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 96
    .local v0, "useAntiAlias":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->bubbleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->bubbleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getTextRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->drawWrapRect(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 105
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 106
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    return-void

    .line 94
    .end local v0    # "useAntiAlias":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toProperty(I)Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    .locals 10
    .param p1, "paintItemIndex"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getX()I

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getY()I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 114
    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 115
    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getColor()I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 116
    invoke-virtual {v5}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getPaintBubbleStyle()Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    move-result-object v5

    .line 117
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getScale()F

    move-result v6

    .line 118
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->getRotation()F

    move-result v7

    iget-object v8, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->property:Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    .line 119
    invoke-virtual {v8}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;->getTextRect()Landroid/graphics/Rect;

    move-result-object v8

    move v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;-><init>(IILjava/lang/String;ILcom/liquable/nemo/chat/paint/PaintBubbleStyle;FFLandroid/graphics/Rect;I)V

    return-object v0
.end method

.method public final undo()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->previous:Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->previous:Lcom/liquable/nemo/chat/paint/PaintTextBubble;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintTextBubble;->setVisible(Z)V

    .line 128
    :cond_0
    return-void
.end method
