.class public Lcom/aviary/android/feather/library/services/drag/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# instance fields
.field mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/services/DragControllerService;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    invoke-virtual {v0, p1, p2}, Lcom/aviary/android/feather/library/services/DragControllerService;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/services/DragControllerService;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/services/DragControllerService;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDragController(Lcom/aviary/android/feather/library/services/DragControllerService;)V
    .locals 0
    .param p1, "controller"    # Lcom/aviary/android/feather/library/services/DragControllerService;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/drag/DragLayer;->mDragController:Lcom/aviary/android/feather/library/services/DragControllerService;

    .line 33
    return-void
.end method
