.class Lcom/aviary/android/feather/widget/AdjustImageView$4;
.super Ljava/lang/Object;
.source "AdjustImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AdjustImageView;->fadeinOutlines(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

.field final synthetic val$durationMs:I

.field final synthetic val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AdjustImageView;IJLit/sephiroth/android/library/imagezoom/easing/Linear;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iput p2, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$durationMs:I

    iput-wide p3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$startTime:J

    iput-object p5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v3, 0x0

    .line 1634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1636
    .local v13, "now":J
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$durationMs:I

    int-to-long v0, v0

    iget-wide v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$startTime:J

    sub-long v5, v13, v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v9, v0

    .line 1638
    .local v9, "currentMs":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

    float-to-double v1, v9

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFillAlpha:I

    int-to-double v5, v5

    iget v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$durationMs:I

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Linear;->easeNone(DDDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 1639
    .local v10, "new_alpha_fill":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

    float-to-double v1, v9

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaintAlpha:I

    int-to-double v5, v5

    iget v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$durationMs:I

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Linear;->easeNone(DDDD)D

    move-result-wide v0

    double-to-float v12, v0

    .line 1640
    .local v12, "new_alpha_paint":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Linear;

    float-to-double v1, v9

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesAlpha:I

    int-to-double v5, v5

    iget v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$durationMs:I

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Linear;->easeNone(DDDD)D

    move-result-wide v0

    double-to-float v11, v0

    .line 1642
    .local v11, "new_alpha_lines":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    float-to-int v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1643
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    float-to-int v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1644
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    float-to-int v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1645
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1647
    iget v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->val$durationMs:I

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFadeHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1656
    :goto_0
    return-void

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFill:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlineFillAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1652
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mOutlinePaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1653
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mLinesAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1654
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$4;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    goto :goto_0
.end method
