.class Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/widget/TouchImageView;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/widget/TouchImageView;Lcom/liquable/nemo/widget/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/widget/TouchImageView;
    .param p2, "x1"    # Lcom/liquable/nemo/widget/TouchImageView$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;-><init>(Lcom/liquable/nemo/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v0, v0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v1, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v1, v1, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v2, v2, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    # invokes: Lcom/liquable/nemo/widget/TouchImageView;->scale(FFZF)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/liquable/nemo/widget/TouchImageView;->access$000(Lcom/liquable/nemo/widget/TouchImageView;FFZF)V

    .line 27
    :goto_0
    return v4

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget-object v1, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v1, v1, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v2, v2, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    div-float/2addr v2, v3

    # invokes: Lcom/liquable/nemo/widget/TouchImageView;->scale(FFZF)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/liquable/nemo/widget/TouchImageView;->access$000(Lcom/liquable/nemo/widget/TouchImageView;FFZF)V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    # getter for: Lcom/liquable/nemo/widget/TouchImageView;->touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;
    invoke-static {v0}, Lcom/liquable/nemo/widget/TouchImageView;->access$100(Lcom/liquable/nemo/widget/TouchImageView;)Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    iget v0, v0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    const v1, 0x3f8147ae    # 1.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 36
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    # getter for: Lcom/liquable/nemo/widget/TouchImageView;->touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;
    invoke-static {v0}, Lcom/liquable/nemo/widget/TouchImageView;->access$100(Lcom/liquable/nemo/widget/TouchImageView;)Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;->swipeRight()V

    .line 42
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_1
    const/high16 v0, -0x3c060000    # -500.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    # getter for: Lcom/liquable/nemo/widget/TouchImageView;->touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;
    invoke-static {v0}, Lcom/liquable/nemo/widget/TouchImageView;->access$100(Lcom/liquable/nemo/widget/TouchImageView;)Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;->swipeLeft()V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    # getter for: Lcom/liquable/nemo/widget/TouchImageView;->touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;
    invoke-static {v0}, Lcom/liquable/nemo/widget/TouchImageView;->access$100(Lcom/liquable/nemo/widget/TouchImageView;)Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;->this$0:Lcom/liquable/nemo/widget/TouchImageView;

    # getter for: Lcom/liquable/nemo/widget/TouchImageView;->touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;
    invoke-static {v0}, Lcom/liquable/nemo/widget/TouchImageView;->access$100(Lcom/liquable/nemo/widget/TouchImageView;)Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;->onTap()V

    .line 50
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
