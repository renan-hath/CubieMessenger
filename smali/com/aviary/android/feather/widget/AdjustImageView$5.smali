.class Lcom/aviary/android/feather/widget/AdjustImageView$5;
.super Ljava/lang/Object;
.source "AdjustImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AdjustImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

.field final synthetic val$alpha1:I

.field final synthetic val$alpha2:I

.field final synthetic val$alpha3:I

.field final synthetic val$durationMs:I

.field final synthetic val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

.field final synthetic val$startTime:J


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v5, 0x0

    .line 1673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1675
    .local v13, "now":J
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$durationMs:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$startTime:J

    sub-long v2, v13, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v9, v0

    .line 1677
    .local v9, "currentMs":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

    float-to-double v1, v9

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$alpha1:I

    int-to-double v3, v3

    iget v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$durationMs:I

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Linear;->easeNone(DDDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 1678
    .local v10, "new_alpha_fill":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

    float-to-double v1, v9

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$alpha2:I

    int-to-double v3, v3

    iget v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$durationMs:I

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Linear;->easeNone(DDDD)D

    move-result-wide v0

    double-to-float v12, v0

    .line 1679
    .local v12, "new_alpha_paint":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

    float-to-double v1, v9

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$alpha3:I

    int-to-double v3, v3

    iget v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$durationMs:I

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Linear;->easeNone(DDDD)D

    move-result-wide v0

    double-to-float v11, v0

    .line 1681
    .local v11, "new_alpha_lines":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    float-to-int v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1682
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    float-to-int v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1683
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    float-to-int v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1684
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1686
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->val$durationMs:I

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1691
    :goto_0
    return-void

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$5;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->hideOutlines()V

    goto :goto_0
.end method
