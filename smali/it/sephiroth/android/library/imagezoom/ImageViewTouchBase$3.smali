.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field private final synthetic val$deltaScale:F

.field private final synthetic val$destX:F

.field private final synthetic val$destY:F

.field private final synthetic val$durationMs:F

.field private final synthetic val$oldScale:F

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    iput-wide p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$startTime:J

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$deltaScale:F

    iput p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$oldScale:F

    iput p7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destX:F

    iput p8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destY:F

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 927
    .local v11, "now":J
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    iget-wide v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$startTime:J

    sub-long v1, v11, v1

    long-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 928
    .local v9, "currentMs":F
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    float-to-double v1, v9

    const-wide/16 v3, 0x0

    iget v5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$deltaScale:F

    float-to-double v5, v5

    iget v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    float-to-double v7, v7

    invoke-interface/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v0

    double-to-float v10, v0

    .line 929
    .local v10, "newScale":F
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$oldScale:F

    add-float/2addr v1, v10

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destX:F

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$destY:F

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 930
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    .line 931
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 936
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoomAnimationCompleted(F)V

    .line 934
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0, v13, v13}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0
.end method
