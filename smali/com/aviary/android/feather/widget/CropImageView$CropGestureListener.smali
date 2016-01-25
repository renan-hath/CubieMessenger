.class Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CropGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/CropImageView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/CropImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 282
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mDoubleTapEnabled:Z
    invoke-static {v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$400(Lcom/aviary/android/feather/widget/CropImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    const/4 v3, 0x0

    # setter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v2, v3}, Lcom/aviary/android/feather/widget/CropImageView;->access$102(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Lcom/aviary/android/feather/widget/HighlightView;

    .line 285
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getScale()F

    move-result v0

    .line 286
    .local v0, "scale":F
    move v1, v0

    .line 287
    .local v1, "targetScale":F
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/CropImageView;->getMaxScale()F

    move-result v3

    # invokes: Lcom/aviary/android/feather/widget/CropImageView;->onDoubleTapPost(FF)F
    invoke-static {v2, v0, v3}, Lcom/aviary/android/feather/widget/CropImageView;->access$500(Lcom/aviary/android/feather/widget/CropImageView;FF)F

    move-result v1

    .line 288
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getMaxScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    # invokes: Lcom/aviary/android/feather/widget/CropImageView;->zoomTo(FFFF)V
    invoke-static {v2, v1, v3, v4, v5}, Lcom/aviary/android/feather/widget/CropImageView;->access$600(Lcom/aviary/android/feather/widget/CropImageView;FFFF)V

    .line 290
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->invalidate()V

    .line 292
    .end local v0    # "scale":F
    .end local v1    # "targetScale":F
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    const/4 v3, 0x0

    # setter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v2, v3}, Lcom/aviary/android/feather/widget/CropImageView;->access$102(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Lcom/aviary/android/feather/widget/HighlightView;

    .line 244
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$000(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v1

    .line 246
    .local v1, "hv":Lcom/aviary/android/feather/widget/HighlightView;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/widget/HighlightView;->getHit(FF)I

    move-result v0

    .line 249
    .local v0, "edge":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # setter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I
    invoke-static {v2, v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$202(Lcom/aviary/android/feather/widget/CropImageView;I)I

    .line 251
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # setter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v2, v1}, Lcom/aviary/android/feather/widget/CropImageView;->access$102(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Lcom/aviary/android/feather/widget/HighlightView;

    .line 252
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$100(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v3

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->Move:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/aviary/android/feather/widget/HighlightView;->setMode(Lcom/aviary/android/feather/widget/HighlightView$Mode;)V

    .line 254
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->postInvalidate()V

    .line 257
    .end local v0    # "edge":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 252
    .restart local v0    # "edge":I
    :cond_1
    sget-object v2, Lcom/aviary/android/feather/widget/HighlightView$Mode;->Grow:Lcom/aviary/android/feather/widget/HighlightView$Mode;

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v3}, Lcom/aviary/android/feather/widget/CropImageView;->access$900(Lcom/aviary/android/feather/widget/CropImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v3}, Lcom/aviary/android/feather/widget/CropImageView;->access$100(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v3

    if-nez v3, :cond_0

    .line 325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 326
    .local v0, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 328
    .local v1, "diffY":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    div-float v3, v0, v4

    div-float v4, v1, v4

    const-wide v5, 0x4072c00000000000L    # 300.0

    # invokes: Lcom/aviary/android/feather/widget/CropImageView;->scrollBy(FFD)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/aviary/android/feather/widget/CropImageView;->access$1000(Lcom/aviary/android/feather/widget/CropImageView;FFD)V

    .line 330
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->invalidate()V

    .line 332
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 297
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$700(Lcom/aviary/android/feather/widget/CropImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$100(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$200(Lcom/aviary/android/feather/widget/CropImageView;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 302
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$100(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v0

    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I
    invoke-static {v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$200(Lcom/aviary/android/feather/widget/CropImageView;)I

    move-result v2

    neg-float v3, p3

    neg-float v4, p4

    invoke-virtual {v0, v2, v3, v4}, Lcom/aviary/android/feather/widget/HighlightView;->handleMotion(IFF)V

    .line 304
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$200(Lcom/aviary/android/feather/widget/CropImageView;)I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    .line 305
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$100(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/HighlightView;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/CropImageView;->invalidate(Landroid/graphics/Rect;)V

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$100(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v2

    # invokes: Lcom/aviary/android/feather/widget/CropImageView;->ensureVisible(Lcom/aviary/android/feather/widget/HighlightView;)Z
    invoke-static {v0, v2}, Lcom/aviary/android/feather/widget/CropImageView;->access$800(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Z

    move v0, v1

    .line 311
    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/CropImageView;->postInvalidate()V

    goto :goto_1

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/widget/CropImageView;->scrollBy(FF)V

    .line 314
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/CropImageView;->invalidate()V

    move v0, v1

    .line 315
    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    const/4 v1, 0x0

    # setter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v0, v1}, Lcom/aviary/android/feather/widget/CropImageView;->access$102(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Lcom/aviary/android/feather/widget/HighlightView;

    .line 264
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    const/4 v1, 0x0

    # setter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v0, v1}, Lcom/aviary/android/feather/widget/CropImageView;->access$102(Lcom/aviary/android/feather/widget/CropImageView;Lcom/aviary/android/feather/widget/HighlightView;)Lcom/aviary/android/feather/widget/HighlightView;

    .line 271
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightView:Lcom/aviary/android/feather/widget/HighlightView;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$000(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mMotionEdge:I
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$200(Lcom/aviary/android/feather/widget/CropImageView;)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightSingleTapUpListener:Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$300(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$CropGestureListener;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    # getter for: Lcom/aviary/android/feather/widget/CropImageView;->mHighlightSingleTapUpListener:Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/CropImageView;->access$300(Lcom/aviary/android/feather/widget/CropImageView;)Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;->onSingleTapUpConfirmed()V

    .line 277
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
