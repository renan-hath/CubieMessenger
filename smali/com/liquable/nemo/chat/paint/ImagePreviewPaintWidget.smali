.class public Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;
.super Lcom/liquable/nemo/chat/paint/PaintWidget;
.source "ImagePreviewPaintWidget.java"


# instance fields
.field private initX:I

.field private initY:I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/paint/PaintWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f03015c

    return v0
.end method

.method protected getWindowSize()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->windowWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->windowHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected initPaintView()V
    .locals 5

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->getWindowSize()Landroid/util/Pair;

    move-result-object v2

    .line 34
    .local v2, "windowSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    .local v3, "windowWidth":I
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    .local v1, "windowHeight":I
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v4, v3, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->initPaint(II)V

    .line 38
    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 40
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 41
    iget v4, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->initX:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 42
    iget v4, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->initY:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 43
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->paintWidgetBottom:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->modeHint:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 54
    .local v0, "paintWidgetIsVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/chat/paint/PaintView;->setEnablePaint(Z)V

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-super {p0, v1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->setVisibility(I)V

    .line 60
    :goto_1
    return-void

    .end local v0    # "paintWidgetIsVisible":Z
    :cond_0
    move v0, v1

    .line 53
    goto :goto_0

    .line 58
    .restart local v0    # "paintWidgetIsVisible":Z
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->secretMaskView:Lcom/liquable/nemo/chat/paint/SecretMaskView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/paint/SecretMaskView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setWindowPositionAndSize([I)V
    .locals 2
    .param p1, "imagePositionAndSize"    # [I

    .prologue
    .line 67
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->initX:I

    .line 68
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->initY:I

    .line 69
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->windowWidth:I

    .line 70
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->windowHeight:I

    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->hasPaintViewInited:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->initPaintView()V

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    sget-object v1, Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;->BRUSH:Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintView;->switchMode(Lcom/liquable/nemo/chat/paint/PaintView$PaintMode;)V

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->requestLayout()V

    .line 76
    :cond_0
    return-void
.end method
