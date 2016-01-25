.class Lcom/aviary/android/feather/widget/EffectThumbLayout$3;
.super Ljava/lang/Object;
.source "EffectThumbLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/EffectThumbLayout;->animateView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

.field final synthetic val$durationMs:I

.field final synthetic val$easing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

.field final synthetic val$endHeight:F

.field final synthetic val$isClosing:Z

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/EffectThumbLayout;IJLit/sephiroth/android/library/imagezoom/easing/Easing;FZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/EffectThumbLayout;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    iput p2, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$durationMs:I

    iput-wide p3, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$startTime:J

    iput-object p5, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    iput p6, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$endHeight:F

    iput-boolean p7, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$isClosing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 164
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    # getter for: Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->access$000(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 167
    .local v12, "now":J
    iget v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$durationMs:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$startTime:J

    sub-long v2, v12, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v9, v0

    .line 168
    .local v9, "currentMs":F
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$easing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    float-to-double v1, v9

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$endHeight:F

    float-to-double v5, v5

    iget v7, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$durationMs:I

    int-to-double v7, v7

    invoke-interface/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v0

    double-to-float v11, v0

    .line 170
    .local v11, "newHeight":F
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$isClosing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$endHeight:F

    sub-float/2addr v0, v11

    float-to-int v10, v0

    .line 172
    .local v10, "height":I
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    # getter for: Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->access$100(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 173
    .local v14, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 175
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    # getter for: Lcom/aviary/android/feather/widget/EffectThumbLayout;->mImageView:Landroid/view/View;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->access$100(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$durationMs:I

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->invalidate()V

    .line 190
    .end local v9    # "currentMs":F
    .end local v10    # "height":I
    .end local v11    # "newHeight":F
    .end local v12    # "now":J
    .end local v14    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 170
    .restart local v9    # "currentMs":F
    .restart local v11    # "newHeight":F
    .restart local v12    # "now":J
    :cond_1
    float-to-int v10, v11

    goto :goto_0

    .line 183
    .restart local v10    # "height":I
    .restart local v14    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->val$isClosing:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    # setter for: Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z
    invoke-static {v1, v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->access$202(Lcom/aviary/android/feather/widget/EffectThumbLayout;Z)Z

    .line 184
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    # getter for: Lcom/aviary/android/feather/widget/EffectThumbLayout;->mOpened:Z
    invoke-static {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->access$200(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    # getter for: Lcom/aviary/android/feather/widget/EffectThumbLayout;->mHiddenView:Landroid/view/View;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->access$000(Lcom/aviary/android/feather/widget/EffectThumbLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/EffectThumbLayout$3;->this$0:Lcom/aviary/android/feather/widget/EffectThumbLayout;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/EffectThumbLayout;->postInvalidate()V

    goto :goto_1

    .line 183
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
