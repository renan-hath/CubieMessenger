.class Lcom/liquable/nemo/staggerd/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/staggerd/ScrollerCompat$ScrollerCompatImplIcs;
    }
.end annotation


# instance fields
.field mScroller:Landroid/widget/Scroller;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    .line 52
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/liquable/nemo/staggerd/ScrollerCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 43
    new-instance v0, Lcom/liquable/nemo/staggerd/ScrollerCompat$ScrollerCompatImplIcs;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/staggerd/ScrollerCompat$ScrollerCompatImplIcs;-><init>(Landroid/content/Context;)V

    .line 45
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/staggerd/ScrollerCompat;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 60
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 100
    return-void
.end method

.method public getCurrVelocity()F
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public startScroll(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 169
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 194
    return-void
.end method
