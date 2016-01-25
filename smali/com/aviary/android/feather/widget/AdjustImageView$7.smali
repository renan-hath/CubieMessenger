.class Lcom/aviary/android/feather/widget/AdjustImageView$7;
.super Ljava/lang/Object;
.source "AdjustImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AdjustImageView;->flipTo(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

.field final synthetic val$camera:Landroid/graphics/Camera;

.field final synthetic val$centerx:F

.field final synthetic val$centery:F

.field final synthetic val$durationMs:J

.field final synthetic val$horizontal:Z

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AdjustImageView;JJLandroid/graphics/Camera;ZFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AdjustImageView;

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iput-wide p2, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$durationMs:J

    iput-wide p4, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$startTime:J

    iput-object p6, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$camera:Landroid/graphics/Camera;

    iput-boolean p7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$horizontal:Z

    iput p8, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    iput p9, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2008
    .local v12, "now":J
    iget-wide v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$durationMs:J

    iget-wide v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$startTime:J

    sub-long v5, v12, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-double v1, v3

    .line 2010
    .local v1, "currentMs":D
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mCameraEnabled:Z
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$400(Lcom/aviary/android/feather/widget/AdjustImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2011
    const-wide/16 v3, 0x0

    const-wide v5, -0x3f99800000000000L    # -180.0

    iget-wide v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$durationMs:J

    long-to-double v7, v7

    div-double v7, v1, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v9, v3

    .line 2013
    .local v9, "degrees":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 2014
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$horizontal:Z

    if-eqz v0, :cond_1

    .line 2015
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$camera:Landroid/graphics/Camera;

    invoke-virtual {v0, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 2019
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$camera:Landroid/graphics/Camera;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$500(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 2020
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 2021
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$500(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    neg-float v3, v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    neg-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2022
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$500(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    iget v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2030
    .end local v9    # "degrees":F
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 2032
    iget-wide v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$durationMs:J

    long-to-double v3, v3

    cmpg-double v0, v1, v3

    if-gez v0, :cond_4

    .line 2033
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2058
    :cond_0
    :goto_2
    return-void

    .line 2017
    .restart local v9    # "degrees":F
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$camera:Landroid/graphics/Camera;

    invoke-virtual {v0, v9}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0

    .line 2025
    .end local v9    # "degrees":F
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$000(Lcom/aviary/android/feather/widget/AdjustImageView;)Lit/sephiroth/android/library/imagezoom/easing/Easing;

    move-result-object v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    iget-wide v7, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$durationMs:J

    long-to-double v7, v7

    invoke-interface/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v10

    .line 2026
    .local v10, "new_scale":D
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$horizontal:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$500(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    double-to-float v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1

    .line 2027
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$500(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    double-to-float v4, v10

    iget v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1

    .line 2036
    .end local v10    # "new_scale":D
    :cond_4
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$horizontal:Z

    if-eqz v0, :cond_5

    .line 2037
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v4, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_HORIZONTAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v4, v4, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    xor-int/2addr v3, v4

    iput v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    .line 2038
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$600(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2045
    :goto_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$700(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-wide v3, v3, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    neg-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    iget v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2046
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v4, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mRotateMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$700(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->getRotationFromMatrix(Landroid/graphics/Matrix;)D
    invoke-static {v3, v4}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$800(Lcom/aviary/android/feather/widget/AdjustImageView;Landroid/graphics/Matrix;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/aviary/android/feather/library/graphics/Point2D;->angle360(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRotation:D

    .line 2047
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$500(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2049
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->invalidate()V

    .line 2050
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->printDetails()V

    .line 2052
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mRunning:Z

    .line 2054
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->isReset:Z

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # invokes: Lcom/aviary/android/feather/widget/AdjustImageView;->onReset()V
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$200(Lcom/aviary/android/feather/widget/AdjustImageView;)V

    goto/16 :goto_2

    .line 2040
    :cond_5
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    sget-object v4, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_VERTICAL:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v4, v4, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    xor-int/2addr v3, v4

    iput v3, v0, Lcom/aviary/android/feather/widget/AdjustImageView;->mFlipType:I

    .line 2041
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->this$0:Lcom/aviary/android/feather/widget/AdjustImageView;

    # getter for: Lcom/aviary/android/feather/widget/AdjustImageView;->mDrawMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AdjustImageView;->access$600(Lcom/aviary/android/feather/widget/AdjustImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centerx:F

    iget v6, p0, Lcom/aviary/android/feather/widget/AdjustImageView$7;->val$centery:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_3
.end method
