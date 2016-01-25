.class Landroid/support/v4/widget/ScrollerCompatGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompatGingerbread.java"


# direct methods
.method public static abortAnimation(Ljava/lang/Object;)V
    .locals 0
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 68
    return-void
.end method

.method public static computeScrollOffset(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public static getCurrX(Ljava/lang/Object;)I
    .locals 1
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public static getCurrY(Ljava/lang/Object;)I
    .locals 1
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public static getFinalX(Ljava/lang/Object;)I
    .locals 1
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public static getFinalY(Ljava/lang/Object;)I
    .locals 1
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static startScroll(Ljava/lang/Object;IIIII)V
    .locals 6
    .param p0, "scroller"    # Ljava/lang/Object;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 52
    move-object v0, p0

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 53
    return-void
.end method
