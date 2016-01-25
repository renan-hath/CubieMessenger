.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    const-string/jumbo v2, "ImageViewTouchBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDoubleTap. double tap enabled? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v4, v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapEnabled:Z

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mUserScaled:Z

    .line 225
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    .line 226
    .local v0, "scale":F
    move v1, v0

    .line 227
    .local v1, "targetScale":F
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxScale()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDoubleTapPost(FF)F

    move-result v1

    .line 228
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxScale()F

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 229
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v2, v1, v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FFFF)V

    .line 230
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 233
    .end local v0    # "scale":F
    .end local v1    # "targetScale":F
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    # getter for: Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;
    invoke-static {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->access$1(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    # getter for: Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;
    invoke-static {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->access$1(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;

    move-result-object v2

    invoke-interface {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;->onDoubleTap()V

    .line 237
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 278
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollEnabled:Z

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 242
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setPressed(Z)V

    .line 245
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->performLongClick()Z

    .line 248
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollEnabled:Z

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    # getter for: Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mSingleTapListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;
    invoke-static {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->access$0(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    # getter for: Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mSingleTapListener:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;
    invoke-static {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->access$0(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;

    move-result-object v0

    invoke-interface {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;->onSingleTapConfirmed()V

    .line 217
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
