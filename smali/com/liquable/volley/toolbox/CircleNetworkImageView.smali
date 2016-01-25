.class public Lcom/liquable/volley/toolbox/CircleNetworkImageView;
.super Lcom/liquable/volley/toolbox/NetworkImageView;
.source "CircleNetworkImageView.java"


# instance fields
.field final paint:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/volley/toolbox/CircleNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/volley/toolbox/CircleNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->paint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->path:Landroid/graphics/Path;

    .line 34
    iget-object v0, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/4 v6, 0x4

    move-object v0, p1

    move v2, v1

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v7

    .line 45
    .local v7, "saveCount":I
    invoke-super {p0, p1}, Lcom/liquable/volley/toolbox/NetworkImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    iget-object v0, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 48
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/liquable/volley/toolbox/NetworkImageView;->onSizeChanged(IIII)V

    .line 53
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 55
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 56
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 57
    .local v0, "height":I
    iget-object v2, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->path:Landroid/graphics/Path;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 58
    iget-object v2, p0, Lcom/liquable/volley/toolbox/CircleNetworkImageView;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 61
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_1
    return-void
.end method
