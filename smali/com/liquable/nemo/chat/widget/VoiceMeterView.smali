.class public Lcom/liquable/nemo/chat/widget/VoiceMeterView;
.super Landroid/view/View;
.source "VoiceMeterView.java"


# instance fields
.field private final _128dp:I

.field private currentHeight:I

.field private final downSpeed:I

.field private height:I

.field private final mPaints1:Landroid/graphics/Paint;

.field private measureHeight:I

.field private measureWidth:I

.field private final meterBitmap:Landroid/graphics/Bitmap;

.field private final upSpeed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->mPaints1:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->mPaints1:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->mPaints1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    .line 40
    iget v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->height:I

    .line 41
    iget v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->upSpeed:I

    .line 42
    iget v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    div-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->downSpeed:I

    .line 43
    iget v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->height:I

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->currentHeight:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020553

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->meterBitmap:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 51
    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 52
    .local v0, "top":I
    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->height:I

    iget v2, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->currentHeight:I

    if-ge v1, v2, :cond_0

    .line 53
    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->currentHeight:I

    iget v2, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->upSpeed:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->currentHeight:I

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->postInvalidate()V

    .line 59
    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->currentHeight:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureWidth:I

    iget v3, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureHeight:I

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 60
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->meterBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->mPaints1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    return-void

    .line 55
    :cond_0
    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureHeight:I

    iput v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->height:I

    .line 56
    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->currentHeight:I

    iget v2, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->downSpeed:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->currentHeight:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureWidth:I

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureHeight:I

    if-eq v0, v1, :cond_1

    .line 70
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureWidth:I

    .line 71
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->measureHeight:I

    .line 73
    :cond_1
    return-void
.end method

.method public setHeight(I)V
    .locals 5
    .param p1, "height"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->_128dp:I

    int-to-double v1, v1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->height:I

    .line 78
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->invalidate()V

    .line 79
    return-void
.end method
