.class Lcom/aviary/android/feather/widget/AdjustImageView$1;
.super Ljava/lang/Object;
.source "AdjustImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AdjustImageView;->straightenBy(DIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

.field final synthetic val$destRotation:D

.field final synthetic val$durationMs:J

.field final synthetic val$newPosition:D

.field final synthetic val$newx:I

.field final synthetic val$srcRotation:D

.field final synthetic val$srcx:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AdjustImageView;JJDIIDD)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iput-wide p2, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$durationMs:J

    iput-wide p4, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$startTime:J

    iput-wide p6, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$newPosition:D

    iput p8, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$newx:I

    iput p9, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$srcx:I

    iput-wide p10, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$srcRotation:D

    iput-wide p12, p0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$destRotation:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 545
    .local v15, "now":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$durationMs:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$startTime:J

    sub-long v3, v15, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-float v10, v1

    .line 546
    .local v10, "currentMs":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$000(Lcom/aviary/android/feather/widget/AdjustImageView;)Lit/sephiroth/android/library/imagezoom/easing/Easing;

    move-result-object v1

    float-to-double v2, v10

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$newPosition:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$durationMs:J

    long-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v11

    .line 547
    .local v11, "new_rotation":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$000(Lcom/aviary/android/feather/widget/AdjustImageView;)Lit/sephiroth/android/library/imagezoom/easing/Easing;

    move-result-object v1

    float-to-double v2, v10

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$newx:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$durationMs:J

    long-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v13

    .line 549
    .local v13, "new_x":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$srcx:I

    int-to-double v2, v2

    add-double/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v4, v4, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v3, v3, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v4, v4, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$srcx:I

    int-to-double v4, v4

    add-double/2addr v4, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v6, v6, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v6, v6, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$srcRotation:D

    add-double/2addr v2, v11

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->setStraightenRotation(D)V
    invoke-static {v1, v2, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$100(Lcom/aviary/android/feather/widget/AdjustImageView;D)V

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 555
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$durationMs:J

    long-to-float v1, v1

    cmpg-float v1, v10, v1

    if-gez v1, :cond_1

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mStraightenDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$newx:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v3, v3, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v3, v3, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v4, v4, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$newx:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView;->handleWidth:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView;->imageCaptureRegion:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v6, v6, Lcom/aviary/android/feather/widget/AdjustImageView;->handleHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->val$destRotation:D

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->setStraightenRotation(D)V
    invoke-static {v1, v2, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$100(Lcom/aviary/android/feather/widget/AdjustImageView;D)V

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-boolean v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    if-eqz v1, :cond_0

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->straightenStarted:Z

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView$1;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->onReset()V
    invoke-static {v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$200(Lcom/aviary/android/feather/widget/AdjustImageView;)V

    goto :goto_0
.end method
