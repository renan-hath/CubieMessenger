.class Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalVariableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HorizontalVariableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 2562
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private onItemClick(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 2603
    iget-object v10, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$5(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Landroid/widget/OverScroller;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWasFlinging:Z
    invoke-static {v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$6(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2624
    :cond_0
    :goto_0
    return v9

    .line 2605
    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2606
    .local v8, "viewRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v7

    .line 2608
    .local v7, "total":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v7, :cond_2

    .line 2624
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 2609
    :cond_2
    iget-object v10, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v10, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2610
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2611
    .local v3, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2612
    .local v5, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2613
    .local v6, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2614
    .local v0, "bottom":I
    add-int v10, v3, v5

    invoke-virtual {v8, v3, v6, v10, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2615
    iget-object v10, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I
    invoke-static {v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 2617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2619
    iget-object v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I
    invoke-static {v9}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$8(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int v4, v9, v2

    .line 2620
    .local v4, "position":I
    iget-object v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # invokes: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->itemClick(Landroid/view/View;I)V
    invoke-static {v9, v1, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$9(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Landroid/view/View;I)V

    goto :goto_2

    .line 2608
    .end local v4    # "position":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2566
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2576
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 2581
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2586
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # invokes: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->longPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$4(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Landroid/view/MotionEvent;)V

    .line 2587
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 2591
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2595
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2599
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2571
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;->onItemClick(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
