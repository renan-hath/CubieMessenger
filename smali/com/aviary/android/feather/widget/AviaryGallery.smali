.class public Lcom/aviary/android/feather/widget/AviaryGallery;
.super Lcom/aviary/android/feather/widget/AviaryAbsSpinner;
.source "AviaryGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;
.implements Lcom/aviary/android/feather/widget/VibrationWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;,
        Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;,
        Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa


# instance fields
.field private isDown:Z

.field private mAnimationDuration:I

.field private mAutoScrollToCenter:Z

.field private mAutoSelectChild:Z

.field private mCenter:I

.field private mContextMenuInfo:Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterContextMenuInfo;

.field private mDownTouchPosition:I

.field private mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

.field private mLastMotionValue:I

.field private mRealSelectedPosition:I

.field private mReceivedInvokeKeyDown:Z

.field mScrollCompletedNotifier:Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;

.field mScrollScrollNotifier:Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;

.field private final mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mSuppressSelectionChanged:Z

.field private final mTouchSlop:I

.field private final mVibratorHelper:Lcom/aviary/android/feather/widget/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 178
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryGalleryStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    .line 103
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mCenter:I

    .line 114
    const/16 v3, 0x10

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mGravity:I

    .line 125
    iput-boolean v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoScrollToCenter:Z

    .line 136
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mShouldCallbackDuringFling:Z

    .line 139
    iput-boolean v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 142
    iput-boolean v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 196
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    sget-object v3, Lcom/aviary/android/feather/R$styleable;->AviaryGallery:[I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x190

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAnimationDuration:I

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 206
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 208
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 209
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mTouchSlop:I

    .line 211
    new-instance v3, Lcom/aviary/android/feather/widget/ScrollerRunnable;

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAnimationDuration:I

    .line 213
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;-><init>(Lcom/aviary/android/feather/widget/ScrollerRunnable$ScrollableView;IILandroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    .line 215
    new-instance v3, Lcom/aviary/android/feather/widget/VibrationHelper;

    invoke-direct {v3, p1, v8}, Lcom/aviary/android/feather/widget/VibrationHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mVibratorHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/AviaryGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryGallery;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fireOnScrollCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/AviaryGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryGallery;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->dispatchUnpress()V

    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 229
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getMeasuredHeight()I

    move-result v3

    .line 230
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 232
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 234
    .local v2, "childTop":I
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 249
    :goto_2
    return v2

    .line 229
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 230
    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 237
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 238
    goto :goto_2

    .line 240
    :sswitch_1
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 243
    .local v0, "availableSpace":I
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 244
    goto :goto_2

    .line 246
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 12
    .param p1, "toLeft"    # Z

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v7

    .line 285
    .local v7, "numChildren":I
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    .line 286
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .line 287
    .local v8, "start":I
    const/4 v1, 0x0

    .line 289
    .local v1, "count":I
    if-eqz p1, :cond_4

    .line 291
    const/4 v3, 0x0

    .line 292
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 294
    move v6, v5

    .line 295
    .local v6, "n":I
    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    if-ltz v10, :cond_3

    .line 309
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    const/4 v8, 0x0

    .line 334
    .end local v3    # "galleryLeft":I
    :cond_1
    invoke-virtual {p0, v8, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->detachViewsFromParent(II)V

    .line 336
    if-eqz p1, :cond_2

    .line 338
    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    .line 340
    :cond_2
    return-void

    .line 302
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "galleryLeft":I
    .restart local v6    # "n":I
    :cond_3
    move v8, v6

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 305
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    add-int v11, v2, v6

    invoke-interface {v10, v11}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    .line 306
    .local v9, "viewType":I
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRecycleBin:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    .end local v9    # "viewType":I
    :cond_4
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getWidth()I

    move-result v4

    .line 315
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 317
    move v6, v5

    .line 318
    .restart local v6    # "n":I
    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    if-le v10, v4, :cond_1

    .line 325
    move v8, v6

    .line 326
    add-int/lit8 v1, v1, 0x1

    .line 328
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    add-int v11, v2, v6

    invoke-interface {v10, v11}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    .line 329
    .restart local v9    # "viewType":I
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRecycleBin:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 366
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->setPressed(Z)V

    .line 367
    return-void
.end method

.method private dispatchUnpress()V
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 391
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setPressed(Z)V

    .line 392
    return-void
.end method

.method private drawEdges(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 397
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_3

    .line 399
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 402
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 404
    .local v0, "height":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 405
    neg-int v3, v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getWidth()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 407
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->postInvalidate()V

    .line 411
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 413
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 416
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getWidth()I

    move-result v2

    .line 417
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 419
    .restart local v0    # "height":I
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 420
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 421
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 422
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->postInvalidate()V

    .line 426
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 429
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "width":I
    :cond_3
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 433
    const/4 v2, 0x0

    .line 436
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 440
    .local v3, "prevIterationView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 442
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    add-int/lit8 v0, v4, -0x1

    .line 443
    .local v0, "curPosition":I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 452
    .local v1, "curRightEdge":I
    :goto_0
    if-lez v1, :cond_1

    .line 454
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    sub-int v4, v0, v4

    invoke-direct {p0, v0, v4, v1, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 460
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    .line 463
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 464
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 448
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 449
    .restart local v0    # "curPosition":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getLeft()I

    move-result v5

    sub-int v1, v4, v5

    .restart local v1    # "curRightEdge":I
    goto :goto_0

    .line 466
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 7

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getLeft()I

    move-result v6

    sub-int v2, v5, v6

    .line 471
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v3

    .line 474
    .local v3, "numChildren":I
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 478
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 480
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    add-int v1, v5, v3

    .line 481
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 489
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 491
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v0, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 497
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    .line 486
    const/4 v0, 0x0

    .restart local v0    # "curLeftEdge":I
    goto :goto_0

    .line 500
    :cond_1
    return-void
.end method

.method private fireOnScrollCompleted()V
    .locals 6

    .prologue
    .line 504
    const-string/jumbo v0, "View"

    const-string/jumbo v1, "fireOnScrollCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v3

    .line 512
    .local v3, "selection":I
    if-ltz v3, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    if-ge v3, v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 515
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    .line 518
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 515
    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;->onScrollFinished(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method private fireVibration()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mVibratorHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/VibrationHelper;->vibrate(I)V

    .line 547
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mCenter:I

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private isOverScrolled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v3

    .line 755
    :cond_1
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    .line 758
    :cond_2
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 759
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 764
    invoke-static {v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 765
    .local v0, "selectedCenter0":I
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfGallery()I

    move-result v1

    .line 767
    .local v1, "targetCenter":I
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    if-nez v5, :cond_3

    if-le v0, v1, :cond_3

    move v3, v4

    .line 769
    goto :goto_0

    .line 771
    :cond_3
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    if-ge v0, v1, :cond_0

    move v3, v4

    .line 773
    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    .line 886
    .local v1, "viewType":I
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRecycleBin:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "child":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 890
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 892
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2, p1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 893
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/aviary/android/feather/widget/AviaryGallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 897
    :cond_0
    if-nez v0, :cond_1

    .line 899
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 900
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/aviary/android/feather/widget/AviaryGallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 904
    :cond_1
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 906
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRealSelectedPosition:I

    if-ne p1, v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 909
    :cond_2
    return-object v0

    .line 906
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 949
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 947
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 951
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 988
    const-string/jumbo v2, "View"

    const-string/jumbo v3, "onFinishedMovement"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->isDown:Z

    if-eqz v2, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    if-eqz v2, :cond_1

    .line 997
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    .line 998
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    invoke-virtual {p0, v2, v3}, Lcom/aviary/android/feather/widget/AviaryGallery;->selectionChanged(II)V

    .line 1001
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->scrollCompleted()V

    .line 1003
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    if-nez v2, :cond_3

    .line 1006
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1008
    .local v0, "centerChild":Landroid/view/View;
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRealSelectedPosition:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    if-eq v2, v3, :cond_2

    .line 1011
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRealSelectedPosition:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1012
    .local v1, "old":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1014
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1018
    .end local v1    # "old":Landroid/view/View;
    :cond_2
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRealSelectedPosition:I

    .line 1020
    if-eqz v0, :cond_3

    .line 1022
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1026
    .end local v0    # "centerChild":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->invalidate()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 9
    .param p1, "childPosition"    # I

    .prologue
    const/4 v8, 0x0

    .line 1412
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1413
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 1415
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v3

    .line 1418
    .local v3, "selection":I
    if-ltz v3, :cond_0

    .line 1420
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1421
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    .line 1424
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 1421
    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;->onScrollStarted(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V

    .line 1427
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "selection":I
    :cond_0
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfGallery()I

    move-result v0

    invoke-static {v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    sub-int v7, v0, v1

    .line 1428
    .local v7, "distance":I
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    neg-int v1, v7

    invoke-virtual {v0, v8, v1}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingDistance(II)V

    .line 1429
    if-eqz v7, :cond_1

    const/4 v0, 0x1

    .line 1431
    .end local v7    # "distance":I
    :goto_0
    return v0

    .restart local v7    # "distance":I
    :cond_1
    move v0, v8

    .line 1429
    goto :goto_0

    .end local v7    # "distance":I
    :cond_2
    move v0, v8

    .line 1431
    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 1622
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1624
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfGallery()I

    move-result v3

    .line 1632
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 1637
    :cond_2
    const v2, 0x7fffffff

    .line 1638
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .line 1639
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 1642
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1644
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 1646
    move v6, v4

    .line 1659
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 1661
    .local v5, "newPos":I
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 1664
    const/4 v8, 0x0

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1665
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/aviary/android/feather/widget/AviaryGallery;->setSelectedPositionInt(IZ)V

    .line 1666
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->setNextSelectedPositionInt(I)V

    .line 1667
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->checkSelectionChanged()V

    goto :goto_0

    .line 1650
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 1651
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1650
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1652
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    .line 1654
    move v2, v1

    .line 1655
    move v6, v4

    .line 1639
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 1688
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1690
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1695
    :cond_0
    if-eqz p4, :cond_2

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1697
    iget-boolean v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    if-eqz v8, :cond_1

    .line 1699
    if-nez p2, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1703
    :cond_1
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mHeightMeasureSpec:I

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mPaddingTop:I

    iget v10, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1706
    .local v1, "childHeightSpec":I
    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mWidthMeasureSpec:I

    const/4 v9, 0x0

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1714
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1720
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/aviary/android/feather/widget/AviaryGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1721
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 1723
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1724
    .local v7, "width":I
    if-eqz p4, :cond_4

    .line 1726
    move v2, p3

    .line 1727
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 1735
    .local v3, "childRight":I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1736
    return-void

    .line 1695
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

    .line 1699
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1731
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_4
    sub-int v2, p3, v7

    .line 1732
    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_2
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 255
    instance-of v0, p1, Landroid/view/ViewGroup$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryGallery;->drawEdges(Landroid/graphics/Canvas;)V

    .line 351
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-virtual {p1, p0, v1, v1}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 357
    .local v0, "handled":Z
    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 372
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 377
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 382
    const-string/jumbo v0, "View"

    const-string/jumbo v1, "dispatchSetSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method protected fireOnSelected()V
    .locals 6

    .prologue
    .line 525
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fireOnSelected: current: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", next: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", inLayout: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 537
    .local v2, "newSelectedChild":Landroid/view/View;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v3

    .line 538
    .local v3, "position":I
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    .line 541
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 538
    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;->onScroll(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public forceChildLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 551
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mHeightMeasureSpec:I

    .line 552
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 551
    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 554
    .local v0, "childHeightSpec":I
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mWidthMeasureSpec:I

    .line 555
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 554
    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 557
    .local v1, "childWidthSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 558
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 566
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 573
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 579
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAutoSelectChild()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    return v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mContextMenuInfo:Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getCurrentSelectedItemPosition()I
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    if-nez v0, :cond_0

    .line 614
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRealSelectedPosition:I

    .line 616
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    goto :goto_0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    .line 621
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 622
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 624
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 652
    :cond_0
    :goto_1
    return v5

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_1
    move v3, v5

    .line 621
    goto :goto_0

    .line 629
    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_2
    invoke-static {v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v7

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 630
    :goto_2
    add-int v2, v7, v6

    .line 631
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfGallery()I

    move-result v4

    .line 633
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_5

    .line 635
    if-le v2, v4, :cond_0

    .line 650
    :cond_3
    sub-int v0, v4, v2

    .line 652
    .local v0, "centerDifference":I
    if-eqz p1, :cond_6

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 630
    .end local v0    # "centerDifference":I
    .end local v2    # "extremeChildCenter":I
    .end local v4    # "galleryCenter":I
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 643
    .restart local v2    # "extremeChildCenter":I
    .restart local v4    # "galleryCenter":I
    :cond_5
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 652
    .restart local v0    # "centerDifference":I
    :cond_6
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getMaxX()I
    .locals 1

    .prologue
    .line 659
    const v0, 0x7fffffff

    return v0
.end method

.method public getMinX()I
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method getOverScrollDelta(I)I
    .locals 6
    .param p1, "deltaX"    # I

    .prologue
    const/4 v2, 0x0

    .line 679
    if-lez p1, :cond_2

    const/4 v4, 0x1

    .line 680
    .local v4, "motionToLeft":Z
    :goto_0
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    add-int/lit8 v2, v5, -0x1

    .line 682
    .local v2, "extremeItemPosition":I
    :cond_0
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, "extremeChild":Landroid/view/View;
    if-nez v0, :cond_3

    .line 706
    .end local p1    # "deltaX":I
    :cond_1
    :goto_1
    return p1

    .end local v0    # "extremeChild":Landroid/view/View;
    .end local v2    # "extremeItemPosition":I
    .end local v4    # "motionToLeft":Z
    .restart local p1    # "deltaX":I
    :cond_2
    move v4, v2

    .line 679
    goto :goto_0

    .line 689
    .restart local v0    # "extremeChild":Landroid/view/View;
    .restart local v2    # "extremeItemPosition":I
    .restart local v4    # "motionToLeft":Z
    :cond_3
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 690
    .local v1, "extremeChildCenter":I
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfGallery()I

    move-result v3

    .line 692
    .local v3, "galleryCenter":I
    if-eqz v4, :cond_4

    .line 694
    sub-int v5, v1, p1

    if-ge v5, v3, :cond_1

    .line 696
    sub-int p1, v1, v3

    goto :goto_1

    .line 701
    :cond_4
    sub-int v5, v1, p1

    if-le v5, v3, :cond_1

    .line 703
    sub-int p1, v1, v3

    goto :goto_1
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 717
    invoke-super {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getVibrationEnabled()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mVibratorHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/VibrationHelper;->enabled()Z

    move-result v0

    return v0
.end method

.method public invalidateViews()V
    .locals 5

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v1

    .line 729
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 731
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 732
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    add-int/2addr v4, v2

    invoke-interface {v3, v4, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 735
    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    if-nez v3, :cond_0

    .line 737
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRealSelectedPosition:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 729
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 740
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method layout(IZZ)V
    .locals 9
    .param p1, "delta"    # I
    .param p2, "animate"    # Z
    .param p3, "changed"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 795
    if-nez p3, :cond_0

    if-nez p1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->layoutChildren()V

    .line 865
    :goto_0
    return-void

    .line 801
    :cond_0
    const/4 v0, 0x0

    .line 802
    .local v0, "childrenLeft":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 805
    .local v1, "childrenWidth":I
    const-string/jumbo v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layout. delta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", animate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", inLayout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->handleDataChanged()V

    .line 819
    :cond_1
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    if-nez v4, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->resetList()V

    goto :goto_0

    .line 826
    :cond_2
    const-string/jumbo v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mNextSelectedPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mNextSelectedPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_3

    .line 829
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mNextSelectedPosition:I

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mRealSelectedPosition:I

    .line 830
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4, p2}, Lcom/aviary/android/feather/widget/AviaryGallery;->setSelectedPositionInt(IZ)V

    .line 834
    :cond_3
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    .line 836
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_4

    if-nez p3, :cond_4

    if-eqz p1, :cond_5

    .line 838
    :cond_4
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->recycleAllViews()V

    .line 839
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->emptySubRecycler()V

    .line 840
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->removeAllViewsInLayout()V

    .line 843
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    invoke-direct {p0, v4, v7, v7, v8}, Lcom/aviary/android/feather/widget/AviaryGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 846
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 847
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 849
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fillToGalleryRight()V

    .line 850
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fillToGalleryLeft()V

    .line 855
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "selectedOffset":I
    :cond_5
    iput-boolean v7, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDataChanged:Z

    .line 856
    iput-boolean v7, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mNeedSync:Z

    .line 858
    iput-boolean v7, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    .line 859
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryGallery;->setNextSelectedPositionInt(I)V

    .line 860
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->checkSelectionChanged()V

    .line 861
    iput-boolean v8, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    .line 863
    const-string/jumbo v4, "View"

    const-string/jumbo v5, "layout complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->postInvalidate()V

    goto/16 :goto_0
.end method

.method public layoutChildren()V
    .locals 6

    .prologue
    .line 869
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 871
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 872
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->forceChildLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public moveNext()Z
    .locals 2

    .prologue
    .line 914
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 916
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->scrollToChild(I)Z

    .line 917
    const/4 v0, 0x1

    .line 921
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePrevious()Z
    .locals 2

    .prologue
    .line 927
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 929
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->scrollToChild(I)Z

    .line 930
    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->onUp()V

    .line 956
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 961
    invoke-super {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->onDetachedFromWindow()V

    .line 962
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScrollCompletedNotifier:Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 963
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScrollScrollNotifier:Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 964
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 970
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->isDown:Z

    .line 971
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->stop(Z)V

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    .line 974
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    if-ge v1, v2, :cond_0

    .line 976
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 977
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 982
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mIsFirstScroll:Z

    .line 983
    return v3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1036
    iget-boolean v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mShouldCallbackDuringFling:Z

    if-nez v6, :cond_0

    .line 1038
    iput-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    .line 1041
    :cond_0
    neg-float v6, p3

    float-to-int v6, v6

    div-int/lit8 v2, v6, 0x2

    .line 1042
    .local v2, "initialVelocity":I
    if-gez v2, :cond_1

    const v3, 0x7fffffff

    .line 1044
    .local v3, "initialX":I
    :goto_0
    if-gez v2, :cond_2

    const/4 v1, -0x2

    .line 1045
    .local v1, "delta":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->getOverScrollDelta(I)I

    move-result v0

    .line 1047
    .local v0, "clampedDelta":I
    if-ne v1, v0, :cond_3

    .line 1049
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v5, v3, v2}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingVelocity(II)V

    .line 1054
    :goto_2
    return v4

    .end local v0    # "clampedDelta":I
    .end local v1    # "delta":I
    .end local v3    # "initialX":I
    :cond_1
    move v3, v5

    .line 1042
    goto :goto_0

    .line 1044
    .restart local v3    # "initialX":I
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .restart local v0    # "clampedDelta":I
    .restart local v1    # "delta":I
    :cond_3
    move v4, v5

    .line 1054
    goto :goto_2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1063
    invoke-super {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1065
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1067
    .local v0, "current":Landroid/view/View;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1071
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    if-eqz v1, :cond_0

    .line 1073
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1076
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1081
    sparse-switch p1, :sswitch_data_0

    .line 1103
    :goto_0
    const/4 v0, 0x0

    :cond_0
    :goto_1
    return v0

    .line 1085
    :sswitch_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1092
    :sswitch_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1100
    :sswitch_2
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1081
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 1109
    sparse-switch p1, :sswitch_data_0

    .line 1145
    :goto_0
    return v2

    .line 1115
    :sswitch_0
    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v3, :cond_0

    .line 1117
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    if-lez v3, :cond_0

    .line 1120
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int v0, v3, v4

    .line 1121
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1122
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1124
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->dispatchPress(Landroid/view/View;)V

    .line 1125
    new-instance v3, Lcom/aviary/android/feather/widget/AviaryGallery$1;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/widget/AviaryGallery$1;-><init>(Lcom/aviary/android/feather/widget/AviaryGallery;)V

    .line 1133
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    int-to-long v4, v4

    .line 1125
    invoke-virtual {p0, v3, v4, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1135
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    .line 1137
    invoke-interface {v4, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    .line 1135
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1141
    .end local v0    # "selectedIndex":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mReceivedInvokeKeyDown:Z

    .line 1142
    const/4 v2, 0x1

    goto :goto_0

    .line 1109
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 1155
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-super/range {p0 .. p5}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->onLayout(ZIIII)V

    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    .line 1159
    invoke-virtual {p0, v3, v3, p1}, Lcom/aviary/android/feather/widget/AviaryGallery;->layout(IZZ)V

    .line 1160
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    .line 1161
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1166
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1174
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    .line 1187
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v3

    .line 1193
    .local v3, "selection":I
    if-ltz v3, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1196
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    .line 1199
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 1196
    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;->onScrollStarted(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V

    .line 1203
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "selection":I
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_7

    .line 1205
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mTouchSlop:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 1213
    :cond_1
    :goto_0
    float-to-int v7, p3

    .line 1214
    .local v7, "delta":I
    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/widget/AviaryGallery;->getOverScrollDelta(I)I

    move-result v6

    .line 1215
    .local v6, "clampedDelta":I
    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->trackMotionScroll(I)V

    .line 1218
    if-eq v7, v6, :cond_3

    .line 1220
    if-lez v7, :cond_8

    const/4 v9, 0x1

    .line 1223
    .local v9, "toLeft":Z
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1224
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_9

    .line 1226
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    .line 1233
    .local v8, "max_width":F
    :goto_2
    if-nez v9, :cond_a

    .line 1235
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, v7

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1257
    .end local v8    # "max_width":F
    .end local v9    # "toLeft":Z
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1259
    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1261
    :cond_5
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->postInvalidate()V

    .line 1264
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mIsFirstScroll:Z

    .line 1265
    const/4 v0, 0x1

    return v0

    .line 1209
    .end local v6    # "clampedDelta":I
    .end local v7    # "delta":I
    :cond_7
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mTouchSlop:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    goto :goto_0

    .line 1220
    .restart local v6    # "clampedDelta":I
    .restart local v7    # "delta":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 1230
    .restart local v9    # "toLeft":Z
    .restart local v10    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    .restart local v8    # "max_width":F
    goto :goto_2

    .line 1246
    :cond_a
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_b

    .line 1248
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, v7

    div-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1250
    :cond_b
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1271
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1277
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemCount:I

    if-ge v0, v1, :cond_2

    .line 1280
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->scrollToChild(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1283
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1285
    :cond_0
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAdapter:Landroid/widget/Adapter;

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    .line 1287
    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    .line 1285
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/AviaryGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1289
    :cond_1
    const/4 v0, 0x1

    .line 1292
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1298
    invoke-super {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->onSizeChanged(IIII)V

    .line 1300
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mCenter:I

    .line 1302
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1309
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1311
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1312
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1314
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->onUp()V

    .line 1321
    :cond_0
    :goto_0
    return v1

    .line 1316
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->isDown:Z

    .line 1327
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1329
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->scrollIntoSlots()V

    .line 1339
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1342
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1344
    :cond_1
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->dispatchUnpress()V

    .line 1345
    return-void

    .line 1333
    :cond_2
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->isOverScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->scrollIntoSlots()V

    goto :goto_0
.end method

.method scrollCompleted()V
    .locals 2

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    if-eqz v0, :cond_2

    .line 1351
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScrollCompletedNotifier:Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;

    if-nez v0, :cond_1

    .line 1359
    new-instance v0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;-><init>(Lcom/aviary/android/feather/widget/AviaryGallery;Lcom/aviary/android/feather/widget/AviaryGallery$1;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScrollCompletedNotifier:Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScrollCompletedNotifier:Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->post(Ljava/lang/Runnable;)Z

    .line 1368
    :cond_2
    :goto_0
    return-void

    .line 1365
    :cond_3
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fireOnScrollCompleted()V

    goto :goto_0
.end method

.method public scrollIntoSlots()V
    .locals 7

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoScrollToCenter:Z

    if-eqz v4, :cond_3

    .line 1385
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1386
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1391
    invoke-static {v3}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 1392
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getCenterOfGallery()I

    move-result v2

    .line 1393
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 1395
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_2

    .line 1397
    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    const/4 v5, 0x0

    neg-int v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 1401
    :cond_2
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->onFinishedMovement()V

    goto :goto_0

    .line 1406
    .end local v0    # "scrollAmount":I
    .end local v1    # "selectedCenter":I
    .end local v2    # "targetCenter":I
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method selectionChanged(II)V
    .locals 5
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 1441
    const-string/jumbo v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectionChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), inLayout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", suppress selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    if-eqz v2, :cond_1

    if-eq p1, p2, :cond_1

    .line 1453
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1454
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    sub-int v2, p2, v2

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1456
    .local v0, "newSelectedChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1458
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1461
    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    .line 1463
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1467
    .end local v0    # "newSelectedChild":Landroid/view/View;
    .end local v1    # "oldSelectedChild":Landroid/view/View;
    :cond_1
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSuppressSelectionChanged:Z

    if-nez v2, :cond_3

    .line 1470
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    if-eqz v2, :cond_2

    .line 1472
    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mBlockLayoutRequests:Z

    if-eqz v2, :cond_5

    .line 1486
    :cond_2
    :goto_0
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1488
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->sendAccessibilityEvent(I)V

    .line 1492
    :cond_3
    if-eq p1, p2, :cond_4

    iget-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mInLayout:Z

    if-nez v2, :cond_4

    .line 1495
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fireVibration()V

    .line 1497
    :cond_4
    return-void

    .line 1481
    :cond_5
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fireOnSelected()V

    goto :goto_0
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 1501
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAnimationDuration:I

    .line 1502
    return-void
.end method

.method public setAutoScrollToCenter(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1512
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoScrollToCenter:Z

    .line 1513
    return-void
.end method

.method public setAutoSelectChild(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1531
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mAutoSelectChild:Z

    .line 1532
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 1544
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mShouldCallbackDuringFling:Z

    .line 1545
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 1559
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 1560
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1571
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1573
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mGravity:I

    .line 1574
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->requestLayout()V

    .line 1576
    :cond_0
    return-void
.end method

.method public setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V
    .locals 0
    .param p1, "value"    # Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mItemsScrollListener:Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;

    .line 1587
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "overScrollMode"    # I

    .prologue
    .line 1592
    invoke-super {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setOverScrollMode(I)V

    .line 1594
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 1598
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1599
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1604
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_0
.end method

.method setSelectedPositionInt(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1610
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectedPositionInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mSelectedPosition:I

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mOldSelectedPosition:I

    .line 1612
    invoke-super {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setSelectedPositionInt(I)V

    .line 1615
    return-void
.end method

.method public setVibrationEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mVibratorHelper:Lcom/aviary/android/feather/widget/VibrationHelper;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/VibrationHelper;->setEnabled(Z)V

    .line 1742
    return-void
.end method

.method public trackMotionScroll(I)V
    .locals 7
    .param p1, "delta"    # I

    .prologue
    const/4 v4, 0x0

    .line 1747
    if-nez p1, :cond_1

    .line 1822
    :cond_0
    :goto_0
    return-void

    .line 1752
    :cond_1
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getLastFlingX()I

    move-result v5

    sub-int v0, v5, p1

    .line 1755
    .local v0, "deltaX":I
    if-lez p1, :cond_5

    .line 1757
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    .line 1760
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1770
    :goto_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1775
    if-gez v0, :cond_6

    const/4 v3, 0x1

    .line 1777
    .local v3, "toLeft":Z
    :goto_2
    move v1, v0

    .line 1779
    .local v1, "limitedDeltaX":I
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1781
    invoke-virtual {p0, v3, v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    .line 1782
    .local v2, "realDeltaX":I
    if-eq v2, v0, :cond_3

    .line 1784
    if-nez v3, :cond_7

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v5, :cond_7

    .line 1786
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1792
    :cond_2
    :goto_3
    move v1, v2

    .line 1796
    .end local v2    # "realDeltaX":I
    :cond_3
    if-eq v1, v0, :cond_4

    .line 1798
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v5, v4}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->endFling(Z)V

    .line 1799
    if-nez v1, :cond_4

    .line 1801
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->onFinishedMovement()V

    .line 1805
    :cond_4
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->offsetChildrenLeftAndRight(I)V

    .line 1806
    invoke-direct {p0, v3}, Lcom/aviary/android/feather/widget/AviaryGallery;->detachOffScreenChildren(Z)V

    .line 1808
    if-eqz v3, :cond_8

    .line 1811
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fillToGalleryRight()V

    .line 1819
    :goto_4
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->setSelectionToCenterChild()V

    .line 1820
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/aviary/android/feather/widget/AviaryGallery;->onScrollChanged(IIII)V

    .line 1821
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->invalidate()V

    goto :goto_0

    .line 1764
    .end local v1    # "limitedDeltaX":I
    .end local v3    # "toLeft":Z
    :cond_5
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDownTouchPosition:I

    .line 1767
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_6
    move v3, v4

    .line 1775
    goto :goto_2

    .line 1788
    .restart local v1    # "limitedDeltaX":I
    .restart local v2    # "realDeltaX":I
    .restart local v3    # "toLeft":Z
    :cond_7
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v5, :cond_2

    .line 1790
    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v6, p0, Lcom/aviary/android/feather/widget/AviaryGallery;->mScroller:Lcom/aviary/android/feather/widget/ScrollerRunnable;

    invoke-virtual {v6}, Lcom/aviary/android/feather/widget/ScrollerRunnable;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_3

    .line 1816
    .end local v2    # "realDeltaX":I
    :cond_8
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fillToGalleryLeft()V

    goto :goto_4
.end method
