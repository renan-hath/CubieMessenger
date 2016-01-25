.class public Lcom/aviary/android/feather/widget/AviaryWorkspace;
.super Landroid/view/ViewGroup;
.source "AviaryWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryWorkspace$WorkspaceDataSetObserver;,
        Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;,
        Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z

.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field private mActivePointerId:I

.field protected mAdapter:Landroid/widget/Adapter;

.field private mAllowChildSelection:Z

.field private mAllowLongPress:Z

.field private mCacheEnabled:Z

.field private mCurrentScreen:I

.field protected mDataChanged:Z

.field private mDefaultScreen:I

.field private mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

.field protected mFirstPosition:I

.field private mHeightMeasureSpec:I

.field private mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

.field protected mItemCount:I

.field protected mItemTypeCount:I

.field private mLastMotionX:F

.field private mLastMotionX2:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field protected mObserver:Landroid/database/DataSetObserver;

.field private mOldSelectedChild:Landroid/view/View;

.field private mOldSelectedPosition:I

.field private mOnPageChangeListener:Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;

.field private mOverScrollMode:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPreviousScreen:I

.field private mRecycleBin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothingTime:F

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 104
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->SMOOTHING_CONSTANT:F

    .line 112
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->LOG_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->initWorkspace(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPreviousScreen:I

    .line 62
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDefaultScreen:I

    .line 66
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .line 68
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    .line 70
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedPosition:I

    .line 86
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    .line 88
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowLongPress:Z

    .line 96
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    .line 128
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    .line 130
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemTypeCount:I

    .line 144
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowChildSelection:Z

    .line 146
    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCacheEnabled:Z

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->initWorkspace(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/AviaryWorkspace;)Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryWorkspace;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOnPageChangeListener:Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/AviaryWorkspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryWorkspace;

    .prologue
    .line 51
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/widget/AviaryWorkspace;)Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryWorkspace;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1228
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1231
    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 722
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingTop:I

    return v0
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .param p1, "toLeft"    # Z

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildCount()I

    move-result v5

    .line 411
    .local v5, "numChildren":I
    const/4 v6, 0x0

    .line 412
    .local v6, "start":I
    const/4 v1, 0x0

    .line 415
    .local v1, "count":I
    if-eqz p1, :cond_3

    .line 416
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {p0, v9}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenScrollPositionX(I)I

    move-result v9

    add-int v2, v8, v9

    .line 417
    .local v2, "galleryLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 418
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-le v8, v2, :cond_2

    .line 442
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "galleryLeft":I
    :cond_0
    invoke-virtual {p0, v6, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->detachViewsFromParent(II)V

    .line 444
    if-eqz p1, :cond_1

    if-lez v1, :cond_1

    .line 445
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    .line 448
    :cond_1
    return-void

    .line 422
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "galleryLeft":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 423
    iget-object v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    add-int/2addr v9, v4

    invoke-interface {v8, v9}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v7

    .line 424
    .local v7, "viewType":I
    iget-object v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Queue;

    invoke-interface {v8, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "galleryLeft":I
    .end local v4    # "i":I
    .end local v7    # "viewType":I
    :cond_3
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getTotalWidth()I

    move-result v8

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenScrollPositionX(I)I

    move-result v9

    add-int v3, v8, v9

    .line 429
    .local v3, "galleryRight":I
    add-int/lit8 v4, v5, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_0

    .line 430
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v8, v3, :cond_0

    .line 434
    move v6, v4

    .line 435
    add-int/lit8 v1, v1, 0x1

    .line 436
    iget-object v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    add-int/2addr v9, v4

    invoke-interface {v8, v9}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v7

    .line 437
    .restart local v7    # "viewType":I
    iget-object v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Queue;

    invoke-interface {v8, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private drawEdges(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 452
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_3

    .line 454
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v2

    .line 455
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 457
    .local v0, "height":I
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 460
    .local v1, "restoreCount":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 461
    neg-int v3, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 462
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 463
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->postInvalidate()V

    .line 466
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 469
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 472
    .restart local v1    # "restoreCount":I
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 473
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    int-to-float v5, v2

    add-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 476
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->postInvalidate()V

    .line 479
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 482
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "width":I
    :cond_3
    return-void
.end method

.method private emptyRecycler()V
    .locals 3

    .prologue
    .line 814
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 815
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 817
    .local v0, "recycler":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 819
    .end local v0    # "recycler":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 821
    :cond_1
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 762
    const/4 v3, 0x0

    .line 763
    .local v3, "itemSpacing":I
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenScrollPositionX(I)I

    move-result v2

    .line 766
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 770
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 771
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 772
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 779
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 780
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 783
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    .line 786
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 787
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 775
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 776
    .restart local v0    # "curPosition":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingRight:I

    sub-int v1, v5, v6

    .restart local v1    # "curRightEdge":I
    goto :goto_0

    .line 789
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 9

    .prologue
    .line 734
    const/4 v3, 0x0

    .line 735
    .local v3, "itemSpacing":I
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenScrollPositionX(I)I

    move-result v2

    .line 736
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildCount()I

    move-result v4

    .line 737
    .local v4, "numChildren":I
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    .line 740
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 744
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 745
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    add-int v1, v7, v4

    .line 746
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 752
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 753
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    sub-int v7, v1, v7

    const/4 v8, 0x1

    invoke-direct {p0, v1, v7, v0, v8}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 756
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 757
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    .line 749
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    .restart local v0    # "curLeftEdge":I
    goto :goto_0

    .line 759
    :cond_1
    return-void
.end method

.method private getScreenScrollPositionX(I)I
    .locals 1
    .param p1, "screen"    # I

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getTotalWidth()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private getTotalWidth()I
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v0

    return v0
.end method

.method private handleDataChanged()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 556
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    if-lez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setNextSelectedPositionInt(I)V

    .line 563
    :goto_0
    return-void

    .line 559
    :cond_0
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .line 560
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPreviousScreen:I

    .line 561
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setNextSelectedPositionInt(I)V

    goto :goto_0
.end method

.method private initWorkspace(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 173
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    sget-object v4, Lcom/aviary/android/feather/R$styleable;->AviaryWorkspace:[I

    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDefaultScreen:I

    .line 175
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 176
    .local v2, "overscrollMode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setHapticFeedbackEnabled(Z)V

    .line 180
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 181
    new-instance v4, Landroid/widget/Scroller;

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v4, p1, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    .line 182
    const/4 v4, -0x1

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPreviousScreen:I

    .line 184
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 185
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchSlop:I

    .line 186
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mMaximumVelocity:I

    .line 188
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingTop()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingTop:I

    .line 189
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingBottom()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingBottom:I

    .line 190
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingLeft()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    .line 191
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getPaddingRight()I

    move-result v4

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingRight:I

    .line 193
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setOverScroll(I)V

    .line 194
    return-void
.end method

.method private layoutChildren()V
    .locals 15

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getTotalPages()I

    move-result v9

    .line 689
    .local v9, "total":I
    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    .line 691
    .local v11, "x":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 692
    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 694
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 691
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 699
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v12, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mHeightMeasureSpec:I

    iget v13, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingTop:I

    iget v14, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingBottom:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v12, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 700
    .local v2, "childHeightSpec":I
    iget v12, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mWidthMeasureSpec:I

    iget v13, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    iget v14, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingRight:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v12, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 703
    .local v6, "childWidthSpec":I
    invoke-virtual {v0, v6, v2}, Landroid/view/View;->measure(II)V

    .line 709
    const/4 v12, 0x1

    invoke-direct {p0, v0, v12}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->calculateTop(Landroid/view/View;Z)I

    move-result v5

    .line 710
    .local v5, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v1, v5, v12

    .line 712
    .local v1, "childBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 713
    .local v10, "width":I
    move v3, v11

    .line 714
    .local v3, "childLeft":I
    add-int v4, v3, v10

    .line 716
    .local v4, "childRight":I
    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 717
    move v11, v4

    goto :goto_1

    .line 719
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v2    # "childHeightSpec":I
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    .end local v5    # "childTop":I
    .end local v6    # "childWidthSpec":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "width":I
    :cond_1
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 622
    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v2

    .line 624
    .local v2, "viewType":I
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 625
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 626
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, p1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 627
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 637
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "viewType":I
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 633
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 636
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 637
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private onFinishedAnimation(I)V
    .locals 10
    .param p1, "newScreen"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 352
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .line 354
    .local v2, "previousScreen":I
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-le p1, v7, :cond_7

    move v3, v5

    .line 355
    .local v3, "toLeft":Z
    :goto_0
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-ge p1, v7, :cond_8

    move v4, v5

    .line 356
    .local v4, "toRight":Z
    :goto_1
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-eq p1, v7, :cond_9

    move v0, v5

    .line 358
    .local v0, "changed":Z
    :goto_2
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .line 359
    iget-object v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    invoke-virtual {v7, v8, v9}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->setLevel(II)V

    .line 360
    :cond_0
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setNextSelectedPositionInt(I)V

    .line 362
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->fillToGalleryRight()V

    .line 363
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->fillToGalleryLeft()V

    .line 365
    if-eqz v3, :cond_a

    .line 366
    invoke-direct {p0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->detachOffScreenChildren(Z)V

    .line 371
    :cond_1
    :goto_3
    if-nez v0, :cond_2

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    if-eq v7, v5, :cond_2

    .line 373
    :cond_2
    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 376
    iget-boolean v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowChildSelection:Z

    if-eqz v7, :cond_4

    .line 378
    iget-object v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedChild:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 379
    iget-object v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedChild:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setSelected(Z)V

    .line 380
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedChild:Landroid/view/View;

    .line 383
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 384
    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedChild:Landroid/view/View;

    .line 386
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->clearChildrenCache()V

    .line 392
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOnPageChangeListener:Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPreviousScreen:I

    if-eq p1, v5, :cond_6

    .line 393
    new-instance v5, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;

    invoke-direct {v5, p0, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace$1;-><init>(Lcom/aviary/android/feather/widget/AviaryWorkspace;I)V

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->post(Ljava/lang/Runnable;)Z

    .line 404
    :cond_6
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    invoke-direct {p0, v5, v6}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->postUpdateIndicator(II)V

    .line 406
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPreviousScreen:I

    .line 407
    return-void

    .end local v0    # "changed":Z
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "toLeft":Z
    .end local v4    # "toRight":Z
    :cond_7
    move v3, v6

    .line 354
    goto :goto_0

    .restart local v3    # "toLeft":Z
    :cond_8
    move v4, v6

    .line 355
    goto :goto_1

    .restart local v4    # "toRight":Z
    :cond_9
    move v0, v6

    .line 356
    goto :goto_2

    .line 367
    .restart local v0    # "changed":Z
    :cond_a
    if-eqz v4, :cond_1

    .line 368
    invoke-direct {p0, v6}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->detachOffScreenChildren(Z)V

    goto :goto_3
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1007
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1008
    .local v1, "pointerId":I
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1012
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1013
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    .line 1014
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX2:F

    .line 1015
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionY:F

    .line 1016
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    .line 1017
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1018
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1021
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1012
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postUpdateIndicator(II)V
    .locals 2
    .param p1, "screen"    # I
    .param p2, "count"    # I

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/aviary/android/feather/widget/AviaryWorkspace$2;-><init>(Lcom/aviary/android/feather/widget/AviaryWorkspace;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1291
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1238
    :cond_0
    return-void
.end method

.method private setNextSelectedPositionInt(I)V
    .locals 0
    .param p1, "screen"    # I

    .prologue
    .line 824
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    .line 825
    return-void
.end method

.method private setSelectedPositionInt(I)V
    .locals 0
    .param p1, "screen"    # I

    .prologue
    .line 828
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .line 829
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 645
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 649
    :cond_0
    if-eqz p4, :cond_2

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 651
    iget-boolean v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowChildSelection:Z

    if-eqz v8, :cond_1

    .line 660
    :cond_1
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mHeightMeasureSpec:I

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingTop:I

    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 661
    .local v1, "childHeightSpec":I
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mWidthMeasureSpec:I

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 664
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 670
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 671
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 673
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 674
    .local v7, "width":I
    if-eqz p4, :cond_3

    .line 675
    move v2, p3

    .line 676
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 682
    .local v3, "childRight":I
    :goto_1
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 684
    return-void

    .line 649
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 678
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_3
    sub-int v2, p3, v7

    .line 679
    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_1
.end method

.method private snapToScreen(IIZ)V
    .locals 11
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1246
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1248
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->enableChildrenCache(II)V

    .line 1249
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setNextSelectedPositionInt(I)V

    .line 1251
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1252
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1253
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1256
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1257
    .local v9, "screenDelta":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 1258
    .local v8, "newX":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 1259
    .local v3, "delta":I
    add-int/lit8 v0, v9, 0x1

    mul-int/lit8 v5, v0, 0x64

    .line 1261
    .local v5, "duration":I
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1265
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1266
    if-lez p2, :cond_3

    .line 1267
    int-to-float v0, v5

    int-to-float v1, v5

    int-to-float v4, p2

    const v10, 0x451c4000    # 2500.0f

    div-float/2addr v4, v10

    div-float/2addr v1, v4

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 1272
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1274
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getOverScroll()I

    move-result v7

    .line 1276
    .local v7, "mode":I
    if-eqz v3, :cond_2

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 1277
    invoke-virtual {p0, p1, v3, p2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->edgeReached(III)V

    .line 1280
    :cond_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->invalidate()V

    .line 1281
    return-void

    .line 1269
    .end local v7    # "mode":I
    :cond_3
    add-int/lit8 v5, v5, 0x64

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 895
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 899
    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_2

    .line 900
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 901
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_1

    .line 903
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 915
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 906
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 907
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 908
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 260
    instance-of v0, p1, Lcom/aviary/android/feather/widget/CellLayout;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 268
    instance-of v0, p1, Lcom/aviary/android/feather/widget/CellLayout;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 272
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 276
    instance-of v0, p1, Lcom/aviary/android/feather/widget/CellLayout;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 280
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 252
    instance-of v0, p1, Lcom/aviary/android/feather/widget/CellLayout;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 256
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 284
    instance-of v0, p1, Lcom/aviary/android/feather/widget/CellLayout;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    return-void
.end method

.method checkSelectionChanged()V
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 613
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedPosition:I

    .line 615
    :cond_0
    return-void
.end method

.method public clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1068
    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCacheEnabled:Z

    if-nez v3, :cond_1

    .line 1076
    :cond_0
    return-void

    .line 1070
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildCount()I

    move-result v0

    .line 1071
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1072
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/CellLayout;

    .line 1073
    .local v2, "layout":Lcom/aviary/android/feather/widget/CellLayout;
    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/widget/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1074
    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/widget/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x4e6e6b28    # 1.0E9f

    .line 324
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 326
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 327
    .local v2, "mScrollX":F
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v6, v8

    iput v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mSmoothingTime:F

    .line 328
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    int-to-float v3, v6

    .line 329
    .local v3, "mScrollY":F
    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->scrollTo(II)V

    .line 330
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->postInvalidate()V

    .line 346
    .end local v2    # "mScrollX":F
    .end local v3    # "mScrollY":F
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 332
    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 333
    .local v5, "which":I
    invoke-direct {p0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->onFinishedAnimation(I)V

    goto :goto_0

    .line 334
    .end local v5    # "which":I
    :cond_2
    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v6, v6

    div-float v4, v6, v8

    .line 336
    .local v4, "now":F
    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mSmoothingTime:F

    sub-float v6, v4, v6

    sget v7, Lcom/aviary/android/feather/widget/AviaryWorkspace;->SMOOTHING_CONSTANT:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 337
    .local v1, "e":F
    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float v0, v6, v7

    .line 338
    .local v0, "dx":F
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v0, v1

    add-float v2, v6, v7

    .line 339
    .restart local v2    # "mScrollX":F
    float-to-int v6, v2

    invoke-virtual {p0, v6, v9}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->scrollTo(II)V

    .line 340
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mSmoothingTime:F

    .line 342
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_3

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->postInvalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 486
    const/4 v5, 0x0

    .line 487
    .local v5, "restore":Z
    const/4 v6, 0x0

    .line 489
    .local v6, "restoreCount":I
    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    if-ge v10, v9, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-ltz v10, :cond_0

    .line 492
    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    if-eq v10, v9, :cond_4

    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    move v3, v9

    .line 494
    .local v3, "fastDraw":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 496
    :try_start_0
    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getDrawingTime()J

    move-result-wide v11

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    if-le v10, v9, :cond_3

    .line 523
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->drawEdges(Landroid/graphics/Canvas;)V

    .line 526
    :cond_3
    if-eqz v5, :cond_0

    .line 527
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 492
    .end local v3    # "fastDraw":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 497
    .restart local v3    # "fastDraw":Z
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 501
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_5
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getDrawingTime()J

    move-result-wide v0

    .line 502
    .local v0, "drawingTime":J
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getTotalWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 503
    .local v8, "scrollPos":F
    float-to-int v4, v8

    .line 504
    .local v4, "leftScreen":I
    add-int/lit8 v7, v4, 0x1

    .line 505
    .local v7, "rightScreen":I
    if-ltz v4, :cond_6

    .line 507
    :try_start_1
    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    sub-int v10, v4, v10

    invoke-virtual {p0, v10}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 512
    :cond_6
    :goto_3
    int-to-float v10, v4

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    if-ge v7, v10, :cond_2

    .line 514
    :try_start_2
    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 515
    :catch_1
    move-exception v2

    .line 516
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 508
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 509
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 866
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(I)V

    .line 877
    :goto_0
    return v0

    .line 871
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getCurrentScreen()I

    move-result v1

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(I)V

    goto :goto_0

    .line 877
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method edgeReached(III)V
    .locals 1
    .param p1, "whichscreen"    # I
    .param p2, "delta"    # I
    .param p3, "vel"    # I

    .prologue
    .line 1295
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1296
    :cond_0
    if-gez p2, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1302
    :cond_1
    :goto_0
    return-void

    .line 1299
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0
.end method

.method public enableChildrenCache(II)V
    .locals 6
    .param p1, "fromScreen"    # I
    .param p2, "toScreen"    # I

    .prologue
    const/4 v5, 0x1

    .line 1046
    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCacheEnabled:Z

    if-nez v4, :cond_1

    .line 1064
    :cond_0
    return-void

    .line 1048
    :cond_1
    if-le p1, p2, :cond_2

    .line 1049
    move v3, p1

    .line 1050
    .local v3, "temp":I
    move p1, p2

    .line 1051
    move p2, v3

    .line 1054
    .end local v3    # "temp":I
    :cond_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildCount()I

    move-result v0

    .line 1056
    .local v0, "count":I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1057
    add-int/lit8 v4, v0, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1059
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 1060
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/CellLayout;

    .line 1061
    .local v2, "layout":Lcom/aviary/android/feather/widget/CellLayout;
    invoke-virtual {v2, v5}, Lcom/aviary/android/feather/widget/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1062
    invoke-virtual {v2, v5}, Lcom/aviary/android/feather/widget/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1025
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1026
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1028
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1029
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1039
    :cond_0
    return-void

    .line 1032
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1035
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1036
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1037
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 793
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    return v0
.end method

.method public getOverScroll()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOverScrollMode:I

    return v0
.end method

.method public getScreenAt(I)Landroid/view/View;
    .locals 1
    .param p1, "screen"    # I

    .prologue
    .line 1489
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPages()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 533
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 534
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 922
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    move v9, v10

    .line 1002
    :cond_0
    :goto_0
    return v9

    .line 926
    :cond_1
    const/4 v11, 0x2

    if-ne v0, v11, :cond_2

    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    if-nez v11, :cond_0

    .line 930
    :cond_2
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 932
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 1002
    :cond_3
    :goto_1
    :pswitch_0
    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    if-nez v11, :cond_0

    move v9, v10

    goto :goto_0

    .line 938
    :pswitch_1
    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 940
    .local v1, "pointerIndex":I
    if-ltz v1, :cond_0

    .line 945
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 946
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 947
    .local v6, "y":F
    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    sub-float v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v4, v11

    .line 948
    .local v4, "xDiff":I
    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    .line 950
    .local v7, "yDiff":I
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchSlop:I

    .line 951
    .local v2, "touchSlop":I
    if-le v4, v2, :cond_5

    move v5, v9

    .line 952
    .local v5, "xMoved":Z
    :goto_2
    if-le v7, v2, :cond_6

    move v8, v9

    .line 953
    .local v8, "yMoved":Z
    :goto_3
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX2:F

    .line 955
    if-nez v5, :cond_4

    if-eqz v8, :cond_3

    .line 957
    :cond_4
    if-eqz v5, :cond_3

    .line 959
    iput v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    .line 960
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    .line 961
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 962
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    long-to-float v11, v11

    const v12, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v11, v12

    iput v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mSmoothingTime:F

    .line 963
    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->enableChildrenCache(II)V

    goto :goto_1

    .end local v5    # "xMoved":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v10

    .line 951
    goto :goto_2

    .restart local v5    # "xMoved":Z
    :cond_6
    move v8, v10

    .line 952
    goto :goto_3

    .line 971
    .end local v1    # "pointerIndex":I
    .end local v2    # "touchSlop":I
    .end local v3    # "x":F
    .end local v4    # "xDiff":I
    .end local v5    # "xMoved":Z
    .end local v6    # "y":F
    .end local v7    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 972
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 974
    .restart local v6    # "y":F
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    .line 975
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX2:F

    .line 976
    iput v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionY:F

    .line 977
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    .line 978
    iput-boolean v9, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowLongPress:Z

    .line 980
    iget-object v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v10

    :goto_4
    iput v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    goto :goto_1

    :cond_7
    move v11, v9

    goto :goto_4

    .line 987
    .end local v3    # "x":F
    .end local v6    # "y":F
    :pswitch_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->clearChildrenCache()V

    .line 988
    iput v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    .line 989
    const/4 v11, -0x1

    iput v11, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    .line 990
    iput-boolean v10, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowLongPress:Z

    .line 991
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 995
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 568
    if-nez p1, :cond_0

    iget-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->handleDataChanged()V

    .line 572
    :cond_1
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    if-ge v5, v9, :cond_3

    .line 608
    :cond_2
    :goto_0
    return-void

    .line 576
    :cond_3
    sub-int v4, p4, p2

    .line 578
    .local v4, "width":I
    iget-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDataChanged:Z

    if-eqz v5, :cond_4

    .line 579
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-le v5, v6, :cond_7

    .line 580
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    mul-int/2addr v5, v4

    invoke-virtual {p0, v5, v8}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->scrollTo(II)V

    .line 586
    :cond_4
    :goto_1
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    if-le v5, v6, :cond_5

    .line 587
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    invoke-direct {p0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setSelectedPositionInt(I)V

    .line 590
    :cond_5
    iget-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDataChanged:Z

    if-eqz v5, :cond_6

    .line 591
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDefaultScreen:I

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    .line 592
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    .line 593
    .local v0, "childrenLeft":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingLeft:I

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPaddingRight:I

    add-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 594
    .local v1, "childrenWidth":I
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    invoke-direct {p0, v5, v8, v8, v9}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 595
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 596
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 597
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->fillToGalleryRight()V

    .line 598
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->fillToGalleryLeft()V

    .line 599
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->checkSelectionChanged()V

    .line 602
    .end local v0    # "childrenLeft":I
    .end local v1    # "childrenWidth":I
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "selectedOffset":I
    :cond_6
    iput-boolean v8, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDataChanged:Z

    .line 603
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    invoke-direct {p0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setNextSelectedPositionInt(I)V

    .line 605
    if-eqz p1, :cond_2

    iget-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDataChanged:Z

    if-nez v5, :cond_2

    .line 606
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->layoutChildren()V

    goto :goto_0

    .line 582
    :cond_7
    invoke-virtual {p0, v8, v8}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->scrollTo(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 538
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 540
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mWidthMeasureSpec:I

    .line 541
    iput p2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mHeightMeasureSpec:I

    .line 543
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 544
    .local v1, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 546
    .local v0, "heightMode":I
    if-eq v1, v2, :cond_0

    .line 550
    :cond_0
    if-eq v0, v2, :cond_1

    .line 553
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 845
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 860
    :cond_0
    :goto_0
    return v5

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    if-eq v2, v4, :cond_2

    .line 850
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mNextScreen:I

    .line 855
    .local v1, "focusableScreen":I
    :goto_1
    if-eq v1, v4, :cond_0

    .line 856
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 852
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "focusableScreen":I
    :cond_2
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .restart local v1    # "focusableScreen":I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1313
    move-object v0, p1

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;

    .line 1314
    .local v0, "savedState":Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1315
    iget v1, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1316
    iget v1, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->currentScreen:I

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .line 1318
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1306
    new-instance v0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1307
    .local v0, "state":Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iput v1, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->currentScreen:I

    .line 1308
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1087
    .local v3, "action":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1091
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(I)V

    .line 1092
    const/16 v17, 0x0

    .line 1223
    :goto_0
    return v17

    .line 1095
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1097
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1223
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 1103
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1108
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    .line 1109
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX2:F

    .line 1110
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->enableChildrenCache(II)V

    goto :goto_1

    .line 1116
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1119
    .local v9, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1120
    .local v16, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v6, v17, v16

    .line 1121
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX2:F

    move/from16 v17, v0

    sub-float v7, v17, v16

    .line 1122
    .local v7, "deltaX2":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOverScrollMode:I

    .line 1124
    .local v8, "mode":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    .line 1126
    const/16 v17, 0x0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_5

    .line 1127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 1128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28    # 1.0E9f

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mSmoothingTime:F

    .line 1130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_4

    if-eqz v8, :cond_4

    .line 1131
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    cmpg-float v17, v7, v17

    if-gez v17, :cond_4

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v6, v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1142
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->invalidate()V

    goto/16 :goto_1

    .line 1144
    :cond_5
    const/16 v17, 0x0

    cmpl-float v17, v6, v17

    if-lez v17, :cond_7

    .line 1145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenScrollPositionX(I)I

    move-result v12

    .line 1146
    .local v12, "totalWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenScrollPositionX(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    move/from16 v18, v0

    sub-float v4, v17, v18

    .line 1147
    .local v4, "availableToScroll":F
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28    # 1.0E9f

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mSmoothingTime:F

    .line 1149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    move/from16 v17, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v4, v17

    if-gtz v17, :cond_6

    if-eqz v8, :cond_6

    .line 1152
    int-to-float v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v17, 0x0

    cmpl-float v17, v7, v17

    if-lez v17, :cond_6

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v6, v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v17

    if-nez v17, :cond_6

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1162
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->invalidate()V

    goto/16 :goto_1

    .line 1165
    .end local v4    # "availableToScroll":F
    .end local v12    # "totalWidth":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1170
    .end local v6    # "deltaX":F
    .end local v7    # "deltaX2":F
    .end local v8    # "mode":I
    .end local v9    # "pointerIndex":I
    .end local v16    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1172
    .local v13, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1175
    .local v14, "velocityX":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v10

    .line 1176
    .local v10, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    add-int v17, v17, v18

    div-int v15, v17, v10

    .line 1177
    .local v15, "whichScreen":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 1179
    .local v11, "scrolledPos":F
    const/16 v17, 0x258

    move/from16 v0, v17

    if-le v14, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 1182
    int-to-float v0, v15

    move/from16 v17, v0

    cmpg-float v17, v11, v17

    if-gez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v5, v17, -0x1

    .line 1183
    .local v5, "bound":I
    :goto_2
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(IIZ)V

    .line 1193
    .end local v5    # "bound":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1198
    .end local v10    # "screenWidth":I
    .end local v11    # "scrolledPos":F
    .end local v13    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v14    # "velocityX":I
    .end local v15    # "whichScreen":I
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    .line 1199
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1182
    .restart local v10    # "screenWidth":I
    .restart local v11    # "scrolledPos":F
    .restart local v13    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v14    # "velocityX":I
    .restart local v15    # "whichScreen":I
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    goto :goto_2

    .line 1184
    :cond_a
    const/16 v17, -0x258

    move/from16 v0, v17

    if-ge v14, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 1187
    int-to-float v0, v15

    move/from16 v17, v0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v5, v17, 0x1

    .line 1188
    .restart local v5    # "bound":I
    :goto_4
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(IIZ)V

    goto :goto_3

    .line 1187
    .end local v5    # "bound":I
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    goto :goto_4

    .line 1190
    :cond_c
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(IIZ)V

    goto :goto_3

    .line 1203
    .end local v10    # "screenWidth":I
    .end local v11    # "scrolledPos":F
    .end local v13    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v14    # "velocityX":I
    .end local v15    # "whichScreen":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v10

    .line 1205
    .restart local v10    # "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScrollX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    add-int v17, v17, v18

    div-int v15, v17, v10

    .line 1206
    .restart local v15    # "whichScreen":I
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(IIZ)V

    .line 1208
    .end local v10    # "screenWidth":I
    .end local v15    # "whichScreen":I
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchState:I

    .line 1209
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mActivePointerId:I

    .line 1210
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->releaseVelocityTracker()V

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto/16 :goto_1

    .line 1219
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1097
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mFirstPosition:I

    add-int v0, v1, v2

    .line 835
    .local v0, "screen":I
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    :cond_0
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(I)V

    .line 837
    const/4 v1, 0x1

    .line 839
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 798
    :goto_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 799
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 800
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->detachViewFromParent(Landroid/view/View;)V

    .line 801
    invoke-virtual {p0, v0, v3}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_0

    .line 804
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->emptyRecycler()V

    .line 806
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOldSelectedPosition:I

    .line 807
    invoke-direct {p0, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setSelectedPositionInt(I)V

    .line 808
    invoke-direct {p0, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setNextSelectedPositionInt(I)V

    .line 809
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mPreviousScreen:I

    .line 810
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->postInvalidate()V

    .line 811
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 316
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 317
    int-to-float v0, p1

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mTouchX:F

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mSmoothingTime:F

    .line 319
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    .line 229
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->resetList()V

    .line 231
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 232
    new-instance v1, Lcom/aviary/android/feather/widget/AviaryWorkspace$WorkspaceDataSetObserver;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace$WorkspaceDataSetObserver;-><init>(Lcom/aviary/android/feather/widget/AviaryWorkspace;)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mObserver:Landroid/database/DataSetObserver;

    .line 233
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAdapter:Landroid/widget/Adapter;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 234
    invoke-interface {p1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemTypeCount:I

    .line 235
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemTypeCount:I

    if-ge v0, v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mRecycleBin:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    .line 246
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mDataChanged:Z

    .line 247
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->requestLayout()V

    .line 248
    return-void
.end method

.method public setAllowChildSelection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowChildSelection:Z

    .line 215
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .param p1, "allowLongPress"    # Z

    .prologue
    .line 1370
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mAllowLongPress:Z

    .line 1371
    return-void
.end method

.method public setCacheEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1079
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCacheEnabled:Z

    .line 1080
    return-void
.end method

.method setCurrentScreen(I)V
    .locals 4
    .param p1, "currentScreen"    # I

    .prologue
    const/4 v3, 0x0

    .line 303
    sget-boolean v0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 304
    const-string/jumbo v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 308
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    .line 309
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->setLevel(II)V

    .line 310
    :cond_2
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->scrollTo(II)V

    .line 311
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->invalidate()V

    .line 312
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 885
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    :cond_0
    return-void
.end method

.method public setIndicator(Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;)V
    .locals 3
    .param p1, "indicator"    # Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    .line 1384
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mCurrentScreen:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mItemCount:I

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->setLevel(II)V

    .line 1385
    return-void
.end method

.method public setOnPageChangeListener(Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOnPageChangeListener:Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;

    .line 156
    return-void
.end method

.method public setOverScroll(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 200
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 206
    :cond_0
    :goto_0
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mOverScrollMode:I

    .line 207
    return-void

    .line 203
    :cond_1
    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 204
    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_0
.end method

.method snapToScreen(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    .line 1241
    invoke-direct {p0, p1, v0, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->snapToScreen(IIZ)V

    .line 1242
    return-void
.end method
