.class Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;
.super Ljava/lang/Object;
.source "HorizontalVariableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HorizontalVariableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlingScroller"
.end annotation


# instance fields
.field mDuration:I

.field mFinalPosition:I

.field mMore:Z

.field mOffset:I

.field final synthetic this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V
    .locals 0

    .prologue
    .line 2705
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2706
    return-void
.end method


# virtual methods
.method public hasMore()Z
    .locals 1

    .prologue
    .line 2733
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mMore:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2739
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2740
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mMore:Z

    .line 2762
    :cond_0
    :goto_0
    return-void

    .line 2744
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2746
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_2

    .line 2747
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FlingScroller. final position: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mFinalPosition:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", current: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I
    invoke-static {v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FlingScroller. minx: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I
    invoke-static {v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$11(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", max: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I
    invoke-static {v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$12(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_2
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mFinalPosition:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I
    invoke-static {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 2753
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mFinalPosition:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I
    invoke-static {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v1

    sub-int v3, v0, v1

    .line 2754
    .local v3, "offset":I
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mFinalPosition:I

    .line 2756
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$5(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Landroid/widget/OverScroller;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I
    invoke-static {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v1

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mDuration:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2757
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 2759
    .end local v3    # "offset":I
    :cond_3
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mMore:Z

    goto/16 :goto_0
.end method

.method public start(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2710
    if-eqz p1, :cond_2

    .line 2712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mMore:Z

    .line 2713
    iput p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mOffset:I

    .line 2714
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mFinalPosition:I

    .line 2715
    iput p2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mDuration:I

    .line 2717
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$5(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2718
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$5(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2721
    :cond_0
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 2722
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FlingScroller. start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", final position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mFinalPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->post(Ljava/lang/Runnable;)Z

    .line 2726
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->mMore:Z

    .line 2730
    return-void
.end method
