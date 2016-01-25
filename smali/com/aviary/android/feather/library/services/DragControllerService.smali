.class public Lcom/aviary/android/feather/library/services/DragControllerService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "DragControllerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;,
        Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

.field private mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/library/services/drag/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

.field private mListener:Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/aviary/android/feather/library/services/DragControllerService;->DRAG_ACTION_MOVE:I

    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/aviary/android/feather/library/services/DragControllerService;->DRAG_ACTION_COPY:I

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mRectTemp:Landroid/graphics/Rect;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mCoordinatesTemp:[I

    .line 55
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDropTargets:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "val"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 494
    if-ge p0, p1, :cond_0

    .line 499
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 496
    .restart local p1    # "min":I
    :cond_0
    if-lt p0, p2, :cond_1

    .line 497
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 499
    goto :goto_0
.end method

.method private drop(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 446
    iget-object v8, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mCoordinatesTemp:[I

    .line 447
    .local v8, "coordinates":[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2, v8}, Lcom/aviary/android/feather/library/services/DragControllerService;->findDropTarget(II[I)Lcom/aviary/android/feather/library/services/drag/DropTarget;

    move-result-object v0

    .line 449
    .local v0, "dropTarget":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    if-eqz v0, :cond_1

    .line 450
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->onDragExit(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V

    .line 451
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->acceptDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    aget v2, v8, v10

    aget v3, v8, v9

    iget v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->onDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0    # "dropTarget":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v9

    .line 460
    :goto_0
    return v1

    .line 456
    .restart local v0    # "dropTarget":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0    # "dropTarget":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    invoke-interface {v1, v0, v10}, Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v9

    .line 457
    goto :goto_0

    .restart local v0    # "dropTarget":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    :cond_1
    move v1, v10

    .line 460
    goto :goto_0
.end method

.method private endDrag()V
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mOriginator:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mOriginator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_0
    const/4 v0, 0x1

    .line 312
    .local v0, "animate":Z
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mListener:Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mListener:Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;->onDragEnd()Z

    move-result v0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/services/drag/DragView;->remove(Z)V

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    .line 322
    .end local v0    # "animate":Z
    :cond_2
    return-void
.end method

.method private findDropTarget(II[I)Lcom/aviary/android/feather/library/services/drag/DropTarget;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 464
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mRectTemp:Landroid/graphics/Rect;

    .line 466
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDropTargets:Ljava/util/ArrayList;

    .line 467
    .local v1, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/services/drag/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 468
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 479
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 469
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/library/services/drag/DropTarget;

    .line 470
    .local v4, "target":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    invoke-interface {v4, v3}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 471
    invoke-interface {v4, p3}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->getLocationOnScreen([I)V

    .line 472
    aget v5, p3, v8

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    aget v6, p3, v9

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 473
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    aget v5, p3, v8

    sub-int v5, p1, v5

    aput v5, p3, v8

    .line 475
    aget v5, p3, v9

    sub-int v5, p2, v5

    aput v5, p3, v9

    goto :goto_1

    .line 468
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 252
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 255
    .local v3, "willNotCache":Z
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 260
    .local v2, "color":I
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 262
    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 269
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 272
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 276
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 277
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 488
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "activate"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getDragLayer()Lcom/aviary/android/feather/library/services/drag/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/services/drag/DragLayer;->setDragController(Lcom/aviary/android/feather/library/services/DragControllerService;)V

    .line 129
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getDragLayer()Lcom/aviary/android/feather/library/services/drag/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/drag/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    .line 130
    return-void
.end method

.method public active()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addDropTarget(Lcom/aviary/android/feather/library/services/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/aviary/android/feather/library/services/drag/DropTarget;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public cancelDrag()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->endDrag()V

    .line 301
    return-void
.end method

.method public deactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "deactivate"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getDragLayer()Lcom/aviary/android/feather/library/services/drag/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/library/services/drag/DragLayer;->setDragController(Lcom/aviary/android/feather/library/services/DragControllerService;)V

    .line 135
    iput-object v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    .line 136
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->isDragging()Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->deactivate()V

    .line 531
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 532
    iput-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mListener:Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

    .line 533
    iput-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    .line 534
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->active()Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    :goto_0
    return v3

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 333
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->recordScreenSize()V

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v3, v5}, Lcom/aviary/android/feather/library/services/DragControllerService;->clamp(III)I

    move-result v1

    .line 338
    .local v1, "screenX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v3, v5}, Lcom/aviary/android/feather/library/services/DragControllerService;->clamp(III)I

    move-result v2

    .line 340
    .local v2, "screenY":I
    packed-switch v0, :pswitch_data_0

    .line 363
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->isDragging()Z

    move-result v3

    goto :goto_0

    .line 346
    :pswitch_1
    int-to-float v3, v1

    iput v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownX:F

    .line 347
    int-to-float v3, v2

    iput v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownY:F

    .line 348
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

    goto :goto_1

    .line 352
    :pswitch_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/aviary/android/feather/library/services/DragControllerService;->drop(FF)Z

    .line 355
    :cond_2
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->endDrag()V

    goto :goto_1

    .line 359
    :pswitch_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->cancelDrag()V

    goto :goto_1

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->isDragging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 442
    :goto_0
    return v1

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 387
    .local v9, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2, v3}, Lcom/aviary/android/feather/library/services/DragControllerService;->clamp(III)I

    move-result v11

    .line 388
    .local v11, "screenX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, v3}, Lcom/aviary/android/feather/library/services/DragControllerService;->clamp(III)I

    move-result v12

    .line 390
    .local v12, "screenY":I
    packed-switch v9, :pswitch_data_0

    .line 442
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 393
    :pswitch_0
    int-to-float v1, v11

    iput v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownX:F

    .line 394
    int-to-float v1, v12

    iput v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownY:F

    goto :goto_1

    .line 399
    :pswitch_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/library/services/drag/DragView;->move(II)V

    .line 402
    iget-object v10, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mCoordinatesTemp:[I

    .line 403
    .local v10, "coordinates":[I
    invoke-direct {p0, v11, v12, v10}, Lcom/aviary/android/feather/library/services/DragControllerService;->findDropTarget(II[I)Lcom/aviary/android/feather/library/services/drag/DropTarget;

    move-result-object v0

    .line 404
    .local v0, "dropTarget":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    if-eqz v0, :cond_5

    .line 405
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    iget v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->acceptDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)Z

    move-result v13

    .line 406
    .local v13, "valid":Z
    if-nez v13, :cond_1

    .line 407
    const/4 v0, 0x0

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

    if-ne v1, v0, :cond_3

    .line 411
    if-eqz v0, :cond_2

    .line 412
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    iget v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->onDragOver(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V

    .line 428
    .end local v13    # "valid":Z
    :cond_2
    :goto_2
    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

    goto :goto_1

    .line 415
    .restart local v13    # "valid":Z
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

    if-eqz v1, :cond_4

    .line 416
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v8, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->onDragExit(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V

    .line 419
    :cond_4
    if-eqz v0, :cond_2

    .line 420
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    iget v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->onDragEnter(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V

    goto :goto_2

    .line 424
    .end local v13    # "valid":Z
    :cond_5
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

    if-eqz v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mLastDropTarget:Lcom/aviary/android/feather/library/services/drag/DropTarget;

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v8, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/aviary/android/feather/library/services/drag/DropTarget;->onDragExit(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V

    goto :goto_2

    .line 432
    .end local v0    # "dropTarget":Lcom/aviary/android/feather/library/services/drag/DropTarget;
    .end local v10    # "coordinates":[I
    :pswitch_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 433
    int-to-float v1, v11

    int-to-float v2, v12

    invoke-direct {p0, v1, v2}, Lcom/aviary/android/feather/library/services/DragControllerService;->drop(FF)Z

    .line 435
    :cond_6
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->endDrag()V

    goto/16 :goto_1

    .line 439
    :pswitch_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->cancelDrag()V

    goto/16 :goto_1

    .line 390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/aviary/android/feather/library/services/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/aviary/android/feather/library/services/drag/DropTarget;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public setDragListener(Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mListener:Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

    .line 512
    return-void
.end method

.method public setMoveTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMoveTarget:Landroid/view/View;

    .line 371
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IIIIIILcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;IZ)Z
    .locals 12
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "screenX"    # I
    .param p3, "screenY"    # I
    .param p4, "textureLeft"    # I
    .param p5, "textureTop"    # I
    .param p6, "textureWidth"    # I
    .param p7, "textureHeight"    # I
    .param p8, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p9, "dragInfo"    # Ljava/lang/Object;
    .param p10, "dragAction"    # I
    .param p11, "animate"    # Z

    .prologue
    .line 208
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "window token is null. drag will not start!"

    aput-object v8, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 210
    const/4 v3, 0x0

    .line 240
    :goto_0
    return v3

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 219
    :cond_2
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 221
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mListener:Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

    if-eqz v3, :cond_3

    .line 222
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mListener:Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-interface {v3, v0, v1, v2}, Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;->onDragStart(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;I)V

    .line 225
    :cond_3
    iget v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownX:F

    float-to-int v3, v3

    sub-int v6, v3, p2

    .line 226
    .local v6, "registrationX":I
    iget v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownY:F

    float-to-int v3, v3

    sub-int v7, v3, p3

    .line 228
    .local v7, "registrationY":I
    iget v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownX:F

    int-to-float v4, p2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetX:F

    .line 229
    iget v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownY:F

    int-to-float v4, p3

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mTouchOffsetY:F

    .line 231
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragSource:Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;

    .line 232
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragInfo:Ljava/lang/Object;

    .line 234
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x23

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 238
    :cond_4
    new-instance v3, Lcom/aviary/android/feather/library/services/drag/DragView;

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/aviary/android/feather/library/services/drag/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    iput-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    .line 239
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mDragView:Lcom/aviary/android/feather/library/services/drag/DragView;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mWindowToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownX:F

    float-to-int v5, v5

    iget v8, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mMotionDownY:F

    float-to-int v8, v8

    move/from16 v0, p11

    invoke-virtual {v3, v4, v5, v8, v0}, Lcom/aviary/android/feather/library/services/drag/DragView;->show(Landroid/os/IBinder;IIZ)V

    .line 240
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;IZ)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p6, "dragInfo"    # Ljava/lang/Object;
    .param p7, "dragAction"    # I
    .param p8, "animate"    # Z

    .prologue
    .line 160
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mOriginator:Landroid/view/View;

    .line 162
    if-nez p2, :cond_1

    .line 163
    const/4 v14, 0x0

    .line 177
    :cond_0
    :goto_0
    return v14

    .line 166
    :cond_1
    iget-object v13, p0, Lcom/aviary/android/feather/library/services/DragControllerService;->mCoordinatesTemp:[I

    .line 167
    .local v13, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 168
    const/4 v1, 0x0

    aget v1, v13, v1

    add-int v3, v1, p3

    .line 169
    .local v3, "screenX":I
    const/4 v1, 0x1

    aget v1, v13, v1

    add-int v4, v1, p4

    .line 171
    .local v4, "screenY":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Lcom/aviary/android/feather/library/services/DragControllerService;->startDrag(Landroid/graphics/Bitmap;IIIIIILcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;IZ)Z

    move-result v14

    .line 173
    .local v14, "result":Z
    sget v1, Lcom/aviary/android/feather/library/services/DragControllerService;->DRAG_ACTION_MOVE:I

    move/from16 v0, p7

    if-ne v0, v1, :cond_0

    if-eqz v14, :cond_0

    .line 174
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;IZ)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p3, "dragInfo"    # Ljava/lang/Object;
    .param p4, "dragAction"    # I
    .param p5, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/DragControllerService;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "b":Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 156
    invoke-virtual/range {v0 .. v8}, Lcom/aviary/android/feather/library/services/DragControllerService;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method
