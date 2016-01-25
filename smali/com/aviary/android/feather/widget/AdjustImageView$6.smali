.class Lcom/aviary/android/feather/widget/AdjustImageView$6;
.super Ljava/lang/Object;
.source "AdjustImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AdjustImageView;->rotateBy(DJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field old_rotation:F

.field old_scale:F

.field final synthetic this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

.field final synthetic val$deltaRotation:D

.field final synthetic val$destRotation:D

.field final synthetic val$durationMs:J

.field final synthetic val$srcRotation:D

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AdjustImageView;JJDDD)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    const/4 v0, 0x0

    .line 1904
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iput-wide p2, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$durationMs:J

    iput-wide p4, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$startTime:J

    iput-wide p6, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$deltaRotation:D

    iput-wide p8, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$srcRotation:D

    iput-wide p10, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$destRotation:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1906
    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->old_scale:F

    .line 1908
    iput v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->old_rotation:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1915
    .local v11, "now":J
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$durationMs:J

    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$startTime:J

    sub-long v2, v11, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v9, v0

    .line 1916
    .local v9, "currentMs":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$000(Lcom/aviary/android/feather/widget/AdjustImageView;)Lit/sephiroth/android/library/imagezoom/easing/Easing;

    move-result-object v0

    float-to-double v1, v9

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$deltaRotation:D

    iget-wide v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$durationMs:J

    long-to-double v7, v7

    invoke-interface/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 1918
    .local v10, "new_rotation":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-wide v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$srcRotation:D

    float-to-double v3, v10

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/graphics/Point2D;->angle360(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 1919
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-wide v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->setImageRotation(DZ)V
    invoke-static {v0, v1, v2, v14}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$300(Lcom/aviary/android/feather/widget/AdjustImageView;DZ)V

    .line 1921
    iput v10, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->old_rotation:F

    .line 1922
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iput-boolean v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 1923
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1925
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$durationMs:J

    long-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_1

    .line 1926
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1940
    :cond_0
    :goto_0
    return-void

    .line 1928
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-wide v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->val$destRotation:D

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/graphics/Point2D;->angle360(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 1930
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-wide v1, v1, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->setImageRotation(DZ)V
    invoke-static {v0, v1, v2, v13}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$300(Lcom/aviary/android/feather/widget/AdjustImageView;DZ)V

    .line 1931
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iput-boolean v13, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->initStraighten:Z

    .line 1932
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iput-boolean v14, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    .line 1933
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 1934
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->printDetails()V

    .line 1936
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$6;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->onReset()V
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$200(Lcom/aviary/android/feather/widget/AdjustImageView;)V

    goto :goto_0
.end method
