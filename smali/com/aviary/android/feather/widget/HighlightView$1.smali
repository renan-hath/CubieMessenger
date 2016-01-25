.class Lcom/aviary/android/feather/widget/HighlightView$1;
.super Ljava/lang/Object;
.source "HighlightView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/HighlightView;->animateTo(Landroid/view/View;Landroid/graphics/Matrix;Lcom/aviary/android/feather/library/graphics/RectD;Lcom/aviary/android/feather/library/graphics/RectD;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/HighlightView;

.field final synthetic val$bottomRight:[F

.field final synthetic val$maintainAspectRatio:Z

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$pt1:D

.field final synthetic val$pt2:D

.field final synthetic val$pt3:D

.field final synthetic val$pt4:D

.field final synthetic val$startTime:J

.field final synthetic val$topLeft:[F


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/HighlightView;JDDDD[F[FLandroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/HighlightView;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iput-wide p2, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$startTime:J

    iput-wide p4, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt1:D

    iput-wide p6, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt2:D

    iput-wide p8, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt3:D

    iput-wide p10, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt4:D

    iput-object p12, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$topLeft:[F

    iput-object p13, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$bottomRight:[F

    iput-object p14, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$parent:Landroid/view/View;

    iput-boolean p15, p0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$maintainAspectRatio:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 611
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget v1, v1, Lcom/aviary/android/feather/widget/HighlightView;->animationDurationMs:I

    int-to-long v4, v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$startTime:J

    sub-long v6, v10, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-double v2, v4

    .line 613
    .local v2, "currentMs":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/HighlightView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt1:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget v8, v8, Lcom/aviary/android/feather/widget/HighlightView;->animationDurationMs:I

    int-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v12

    .line 614
    .local v12, "value1":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/HighlightView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt2:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget v8, v8, Lcom/aviary/android/feather/widget/HighlightView;->animationDurationMs:I

    int-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v14

    .line 615
    .local v14, "value2":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/HighlightView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt3:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget v8, v8, Lcom/aviary/android/feather/widget/HighlightView;->animationDurationMs:I

    int-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v16

    .line 616
    .local v16, "value3":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/HighlightView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$pt4:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget v8, v8, Lcom/aviary/android/feather/widget/HighlightView;->animationDurationMs:I

    int-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v18

    .line 618
    .local v18, "value4":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    # getter for: Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/HighlightView;->access$000(Lcom/aviary/android/feather/widget/HighlightView;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$topLeft:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v12

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    # getter for: Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/HighlightView;->access$000(Lcom/aviary/android/feather/widget/HighlightView;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$bottomRight:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v14

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    # getter for: Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/HighlightView;->access$000(Lcom/aviary/android/feather/widget/HighlightView;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$topLeft:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    add-double v4, v4, v16

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    # getter for: Lcom/aviary/android/feather/widget/HighlightView;->mDrawRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/HighlightView;->access$000(Lcom/aviary/android/feather/widget/HighlightView;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$bottomRight:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    add-double v4, v4, v18

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 623
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    iget v1, v1, Lcom/aviary/android/feather/widget/HighlightView;->animationDurationMs:I

    int-to-double v4, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$parent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 626
    # getter for: Lcom/aviary/android/feather/widget/HighlightView;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/aviary/android/feather/widget/HighlightView;->access$100()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$maintainAspectRatio:Z

    # setter for: Lcom/aviary/android/feather/widget/HighlightView;->mMaintainAspectRatio:Z
    invoke-static {v1, v4}, Lcom/aviary/android/feather/widget/HighlightView;->access$202(Lcom/aviary/android/feather/widget/HighlightView;Z)Z

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/aviary/android/feather/widget/HighlightView;->mRunning:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->this$0:Lcom/aviary/android/feather/widget/HighlightView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/HighlightView;->invalidate()V

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$parent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/HighlightView$1;->val$parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method
