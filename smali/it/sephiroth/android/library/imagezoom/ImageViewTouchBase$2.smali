.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FFD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field old_x:D

.field old_y:D

.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field private final synthetic val$durationMs:D

.field private final synthetic val$dx:D

.field private final synthetic val$dy:D

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-wide p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    iput-wide p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    iput-wide p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dx:D

    iput-wide p8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dy:D

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-wide v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:D

    .line 886
    iput-wide v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 891
    .local v11, "now":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    sub-long v6, v11, v6

    long-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 892
    .local v2, "currentMs":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dx:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v13

    .line 893
    .local v13, "x":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$dy:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v15

    .line 894
    .local v15, "y":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:D

    sub-double v4, v13, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:D

    sub-double v6, v15, v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    .line 895
    move-object/from16 v0, p0

    iput-wide v13, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_x:D

    .line 896
    move-object/from16 v0, p0

    iput-wide v15, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->old_y:D

    .line 897
    move-object/from16 v0, p0

    iget-wide v4, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->val$durationMs:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 898
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v4, v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v10

    .line 901
    .local v10, "centerRect":Landroid/graphics/RectF;
    iget v1, v10, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget v1, v10, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v4, v10, Landroid/graphics/RectF;->left:F

    iget v5, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    goto :goto_0
.end method
