.class Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;
.super Ljava/lang/Object;
.source "ImageViewTiltiShiftTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field private volatile initialized:Z

.field private mFadeoutEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

.field private startAlpha:I

.field private startAlpha2:I

.field private startTime:J

.field final synthetic this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    new-instance v0, Lit/sephiroth/android/library/imagezoom/easing/Linear;

    invoke-direct {v0}, Lit/sephiroth/android/library/imagezoom/easing/Linear;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->mFadeoutEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->initialized:Z

    .line 888
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 895
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->initialized:Z

    if-nez v1, :cond_0

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startTime:J

    .line 897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    iget v1, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlpha:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startAlpha:I

    .line 898
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    iget v1, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlpha:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startAlpha2:I

    .line 899
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->initialized:Z

    .line 902
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 903
    .local v11, "now":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    iget v1, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutDuration:I

    int-to-long v4, v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startTime:J

    sub-long v6, v11, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-double v2, v4

    .line 905
    .local v2, "currentMs":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->mFadeoutEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startAlpha:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    iget v8, v8, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutDuration:I

    int-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v13

    .line 906
    .local v13, "value1":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->mFadeoutEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startAlpha2:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    iget v8, v8, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutDuration:I

    int-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v15

    .line 908
    .local v15, "value2":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startAlpha:I

    double-to-int v5, v13

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mPaintAlpha:I

    .line 909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->startAlpha2:I

    double-to-int v5, v15

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mBackPaintAlpha:I

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    .line 912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    iget v1, v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->mFadeOutDuration:I

    int-to-double v4, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 914
    .local v10, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    .end local v2    # "currentMs":D
    .end local v10    # "handler":Landroid/os/Handler;
    .end local v11    # "now":J
    .end local v13    # "value1":D
    .end local v15    # "value2":D
    :cond_1
    :goto_0
    return-void

    .line 916
    .restart local v2    # "currentMs":D
    .restart local v11    # "now":J
    .restart local v13    # "value1":D
    .restart local v15    # "value2":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$FadeOutRunnable;->this$0:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->invalidate()V

    goto :goto_0
.end method
