.class public Lcom/aviary/android/feather/widget/ScrollerRunnable;
.super Ljava/lang/Object;
.source "ScrollerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;
    }
.end annotation


# instance fields
.field protected mAnimationDuration:I

.field protected mHasMore:Z

.field protected mLastFlingX:I

.field private mOverscrollDistance:I

.field protected mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

.field protected mPreviousX:I

.field private mScroller:Landroid/widget/OverScroller;

.field protected mShouldStopFling:Z


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "parent"    # Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;
    .param p2, "animationDuration"    # I
    .param p3, "overscrollDistance"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p4, :cond_0

    .line 46
    new-instance v1, Landroid/widget/OverScroller;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 51
    :goto_0
    iput p3, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mOverscrollDistance:I

    .line 52
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    .line 53
    iput p2, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mAnimationDuration:I

    .line 54
    return-void

    .line 48
    :cond_0
    new-instance v1, Landroid/widget/OverScroller;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    goto :goto_0
.end method


# virtual methods
.method protected abortAnimation()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 127
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public endFling(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->abortAnimation()V

    .line 71
    iput v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mLastFlingX:I

    .line 72
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mHasMore:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->scrollIntoSlots()V

    .line 77
    :cond_0
    return-void
.end method

.method public getCurrVelocity()F
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getLastFlingX()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mLastFlingX:I

    return v0
.end method

.method public getPreviousX()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mPreviousX:I

    return v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mHasMore:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mShouldStopFling:Z

    .line 132
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mPreviousX:I

    .line 133
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->computeScrollOffset()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mHasMore:Z

    .line 134
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getCurrX()I

    move-result v0

    .line 135
    .local v0, "x":I
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v1, v0}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->trackMotionScroll(I)V

    .line 137
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mHasMore:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mShouldStopFling:Z

    if-nez v1, :cond_0

    .line 138
    iput v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mLastFlingX:I

    .line 139
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v1, p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->post(Ljava/lang/Runnable;)Z

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method protected startCommon()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method public startUsingDistance(II)V
    .locals 6
    .param p1, "initialX"    # I
    .param p2, "distance"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    if-nez p2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startCommon()V

    .line 82
    iput p1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mLastFlingX:I

    .line 83
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mAnimationDuration:I

    move v1, p1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 84
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(II)V
    .locals 11
    .param p1, "initialX"    # I
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 88
    if-nez p2, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startCommon()V

    .line 90
    iput p1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mLastFlingX:I

    .line 91
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v1}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->getMinX()I

    move-result v5

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v1}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->getMaxX()I

    move-result v6

    const v8, 0x7fffffff

    iget v9, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mOverscrollDistance:I

    move v1, p1

    move v3, p2

    move v4, v2

    move v7, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 93
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ScrollerRunnable;->mParent:Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->endFling(Z)V

    .line 67
    return-void
.end method
