.class public Lcom/mobeta/android/dslv/DragSortController;
.super Lcom/mobeta/android/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_LEFT_REMOVE:I = 0x2

.field public static final FLING_RIGHT_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2

.field public static final SLIDE_LEFT_REMOVE:I = 0x4

.field public static final SLIDE_RIGHT_REMOVE:I = 0x3


# instance fields
.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mItemX:I

.field private mItemY:I

.field private mOrigFloatAlpha:F

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 2
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;III)V
    .locals 6
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    .line 97
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V
    .locals 4
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 31
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 49
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 59
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 61
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    .line 71
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    .line 73
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mOrigFloatAlpha:F

    .line 445
    new-instance v0, Lcom/mobeta/android/dslv/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/mobeta/android/dslv/DragSortController$1;-><init>(Lcom/mobeta/android/dslv/DragSortController;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 109
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 110
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 111
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 112
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 113
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    .line 114
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 115
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 116
    invoke-virtual {p0, p4}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveMode(I)V

    .line 117
    invoke-virtual {p0, p3}, Lcom/mobeta/android/dslv/DragSortController;->setDragInitMode(I)V

    .line 118
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getFloatAlpha()F

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mOrigFloatAlpha:F

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/mobeta/android/dslv/DragSortController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mobeta/android/dslv/DragSortController;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mobeta/android/dslv/DragSortController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mobeta/android/dslv/DragSortController;

    .prologue
    .line 22
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/mobeta/android/dslv/DragSortController;)F
    .locals 1
    .param p0, "x0"    # Lcom/mobeta/android/dslv/DragSortController;

    .prologue
    .line 22
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic access$300(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 1
    .param p0, "x0"    # Lcom/mobeta/android/dslv/DragSortController;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object v0
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 330
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 375
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 378
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 379
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    .line 380
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 383
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 7
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 268
    iget-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v5, :cond_0

    .line 269
    iget v3, p3, Landroid/graphics/Point;->x:I

    .line 270
    .local v3, "x":I
    iget v4, p3, Landroid/graphics/Point;->y:I

    .line 272
    .local v4, "y":I
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 273
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v2

    .line 274
    .local v2, "width":I
    div-int/lit8 v1, v2, 0x3

    .line 277
    .local v1, "thirdWidth":I
    if-ge v3, v1, :cond_1

    .line 278
    const/high16 v0, 0x3f800000    # 1.0f

    .line 284
    .local v0, "alpha":F
    :goto_0
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mOrigFloatAlpha:F

    mul-float/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatAlpha(F)V

    .line 300
    .end local v0    # "alpha":F
    .end local v1    # "thirdWidth":I
    .end local v2    # "width":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    :goto_1
    return-void

    .line 279
    .restart local v1    # "thirdWidth":I
    .restart local v2    # "width":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_1
    sub-int v5, v2, v1

    if-ge v3, v5, :cond_2

    .line 280
    sub-int v5, v2, v1

    sub-int/2addr v5, v3

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v0, v5, v6

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 282
    .end local v0    # "alpha":F
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 285
    .end local v0    # "alpha":F
    .end local v1    # "thirdWidth":I
    .end local v2    # "width":I
    :cond_3
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 286
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v2

    .line 287
    .restart local v2    # "width":I
    div-int/lit8 v1, v2, 0x3

    .line 290
    .restart local v1    # "thirdWidth":I
    if-ge v3, v1, :cond_4

    .line 291
    const/4 v0, 0x0

    .line 297
    .restart local v0    # "alpha":F
    :goto_2
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mOrigFloatAlpha:F

    mul-float/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatAlpha(F)V

    goto :goto_1

    .line 292
    .end local v0    # "alpha":F
    :cond_4
    sub-int v5, v2, v1

    if-ge v3, v5, :cond_5

    .line 293
    sub-int v5, v3, v1

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v0, v5, v6

    .restart local v0    # "alpha":F
    goto :goto_2

    .line 295
    .end local v0    # "alpha":F
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto :goto_2
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 416
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 418
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 420
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 390
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-ne v7, v5, :cond_1

    iget-boolean v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-nez v7, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    .line 392
    .local v1, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v3, v7

    .line 393
    .local v3, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 394
    .local v2, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 396
    .local v4, "y2":I
    const/4 v0, 0x0

    .line 397
    .local v0, "start":Z
    iget-boolean v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v7, :cond_2

    .line 398
    const/4 v0, 0x1

    .line 405
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 406
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    .line 410
    .end local v0    # "start":Z
    .end local v1    # "x1":I
    .end local v2    # "x2":I
    .end local v3    # "y1":I
    .end local v4    # "y2":I
    :cond_1
    return v6

    .line 399
    .restart local v0    # "start":Z
    .restart local v1    # "x1":I
    .restart local v2    # "x2":I
    .restart local v3    # "y1":I
    .restart local v4    # "y2":I
    :cond_2
    iget-boolean v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v7, :cond_4

    .line 400
    sub-int v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v7, v8, :cond_3

    move v0, v5

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    .line 401
    :cond_4
    iget-boolean v7, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v7, :cond_0

    .line 402
    sub-int v7, v4, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le v7, v8, :cond_5

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 443
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 432
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    .line 436
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 228
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->isDragEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    :goto_0
    return v6

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 233
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 234
    :cond_1
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 239
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 241
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    goto :goto_0

    .line 245
    :pswitch_2
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v4, :cond_5

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    .line 247
    .local v3, "x":I
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 248
    .local v1, "thirdW":I
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v4

    sub-int v2, v4, v1

    .line 249
    .local v2, "twoThirdW":I
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    if-gt v3, v2, :cond_4

    :cond_3
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    if-ge v3, v1, :cond_5

    .line 251
    :cond_4
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4, v7}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    .line 255
    .end local v1    # "thirdW":I
    .end local v2    # "twoThirdW":I
    .end local v3    # "x":I
    :cond_5
    :pswitch_3
    iput-boolean v6, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 193
    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 183
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    .line 134
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 169
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    .line 158
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 145
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    .line 211
    or-int/lit8 v0, v0, 0xc

    .line 214
    :cond_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    .line 215
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 216
    or-int/lit8 v0, v0, 0x1

    .line 222
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    .line 223
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    return v1

    .line 217
    :cond_2
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 218
    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .line 335
    .local v9, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .line 337
    .local v10, "y":I
    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v11, v9, v10}, Lcom/mobeta/android/dslv/DragSortListView;->pointToPosition(II)I

    move-result v8

    .line 339
    .local v8, "touchPos":I
    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    .line 340
    .local v5, "numHeaders":I
    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    .line 341
    .local v4, "numFooters":I
    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v11}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v0

    .line 346
    .local v0, "count":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    if-lt v8, v5, :cond_0

    sub-int v11, v0, v4

    if-ge v8, v11, :cond_0

    .line 347
    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v12, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v12}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int v12, v8, v12

    invoke-virtual {v11, v12}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 348
    .local v3, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v6, v11

    .line 349
    .local v6, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v7, v11

    .line 352
    .local v7, "rawY":I
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 353
    .local v1, "dragBox":Landroid/view/View;
    const/4 v2, 0x0

    .line 354
    .local v2, "dragHit":Z
    if-eqz v1, :cond_0

    .line 355
    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 357
    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-le v6, v11, :cond_0

    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-le v7, v11, :cond_0

    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    .line 358
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v6, v11, :cond_0

    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    .line 359
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v7, v11, :cond_0

    .line 361
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    iput v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    .line 362
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    .line 369
    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "dragHit":Z
    .end local v3    # "item":Landroid/view/View;
    .end local v6    # "rawX":I
    .end local v7    # "rawY":I
    .end local v8    # "touchPos":I
    :goto_0
    return v8

    .restart local v8    # "touchPos":I
    :cond_0
    const/4 v8, -0x1

    goto :goto_0
.end method
