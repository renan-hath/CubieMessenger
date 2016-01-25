.class public Lcom/liquable/nemo/widget/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/Workspace$SavedState;,
        Lcom/liquable/nemo/widget/Workspace$OnScrollListener;,
        Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final MIN_LENGTH_FOR_FLING:I = 0x64

.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Workspace"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mCurrentScreen:I

.field private final mDefaultScreen:I

.field private mDeferredNotify:Z

.field private mDeferredScreenChange:I

.field private mDeferredScreenChangeFast:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:I

.field private mFirstLayout:Z

.field private mHasLaidOut:Z

.field private mIgnoreChildFocusRequests:Z

.field private mIsVerbose:Z

.field private mLocked:Z

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOnScreenChangeListener:Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

.field private mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

.field private mPagingTouchSlop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v2, p0, Lcom/liquable/nemo/widget/Workspace;->mFirstLayout:Z

    .line 85
    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mHasLaidOut:Z

    .line 88
    iput v1, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    .line 111
    iput v0, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    .line 112
    iput-boolean v2, p0, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    .line 121
    iput v1, p0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    .line 129
    iput v1, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChange:I

    .line 131
    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChangeFast:Z

    .line 133
    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredNotify:Z

    .line 137
    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    .line 151
    iput v0, p0, Lcom/liquable/nemo/widget/Workspace;->mDefaultScreen:I

    .line 152
    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    .line 154
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 155
    invoke-direct {p0}, Lcom/liquable/nemo/widget/Workspace;->initWorkspace()V

    .line 157
    const-string/jumbo v0, "Workspace"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    .line 158
    return-void
.end method

.method private initWorkspace()V
    .locals 3

    .prologue
    .line 363
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 364
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    .line 366
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 367
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchSlop:I

    .line 368
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/widget/Workspace;->mMaximumVelocity:I

    .line 370
    const-string/jumbo v1, "getScaledPagingTouchSlop"

    iget v2, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchSlop:I

    mul-int/lit8 v2, v2, 0x2

    .line 372
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 370
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/ReflectionUtils;->callWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/widget/Workspace;->mPagingTouchSlop:I

    .line 373
    return-void
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
    .line 164
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 165
    .local v0, "focusableSourceScreen":Landroid/view/View;
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 166
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_3

    .line 169
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 170
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 178
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 181
    :cond_2
    return-void

    .line 172
    :cond_3
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 173
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 174
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public addViewToBack(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method public addViewToFront(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/widget/Workspace;->addView(Landroid/view/View;I)V

    .line 190
    return-void
.end method

.method allowLongPress()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 201
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/widget/Workspace;->scrollTo(II)V

    .line 203
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreenFraction()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/widget/Workspace$OnScrollListener;->onScroll(F)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->postInvalidate()V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    if-eq v0, v3, :cond_1

    .line 209
    const/4 v0, 0x0

    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->handleScreenChangeCompletion(I)V

    .line 210
    iput v3, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 216
    const/4 v5, 0x0

    .line 217
    .local v5, "restore":Z
    const/4 v6, 0x0

    .line 224
    .local v6, "restoreCount":I
    iget v8, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    if-eq v8, v7, :cond_1

    iget v8, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    move v3, v7

    .line 226
    .local v3, "fastDraw":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 227
    iget v7, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 228
    iget v7, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/liquable/nemo/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 249
    :cond_0
    :goto_1
    return-void

    .line 224
    .end local v3    # "fastDraw":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 231
    .restart local v3    # "fastDraw":Z
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getDrawingTime()J

    move-result-wide v1

    .line 233
    .local v1, "drawingTime":J
    iget v8, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    if-ltz v8, :cond_3

    iget v8, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    iget v8, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    iget v9, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    sub-int/2addr v8, v9

    .line 234
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v7, :cond_3

    .line 235
    iget v7, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/liquable/nemo/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 236
    iget v7, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/liquable/nemo/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v0

    .line 240
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_0

    .line 241
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/liquable/nemo/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 253
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    .line 264
    :goto_0
    return v0

    .line 258
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 276
    iget v3, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 280
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 281
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 291
    :cond_0
    return-void

    .line 284
    :cond_1
    if-eq v2, p0, :cond_0

    .line 287
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 288
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 289
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    return v0
.end method

.method getCurrentScreenFraction()F
    .locals 4

    .prologue
    .line 309
    iget-boolean v2, p0, Lcom/liquable/nemo/widget/Workspace;->mHasLaidOut:Z

    if-nez v2, :cond_0

    .line 310
    iget v2, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    int-to-float v2, v2

    .line 314
    :goto_0
    return v2

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollX()I

    move-result v1

    .line 313
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getWidth()I

    move-result v0

    .line 314
    .local v0, "screenWidth":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method getScreenAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getScreenCount()I
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v0

    .line 329
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 330
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 332
    .end local v0    # "childCount":I
    :cond_0
    return v0
.end method

.method getScrollWidth()I
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getWidth()I

    move-result v0

    .line 337
    .local v0, "w":I
    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_0
    return v0
.end method

.method handleScreenChangeCompletion(I)V
    .locals 8
    .param p1, "currentScreen"    # I

    .prologue
    const/4 v7, 0x1

    .line 344
    iput p1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    .line 345
    iget v2, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "screen":Landroid/view/View;
    :try_start_0
    const-string/jumbo v2, "dispatchDisplayHint"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 348
    invoke-static {v1, v2, v3, v4}, Lcom/liquable/nemo/util/ReflectionUtils;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    iget v2, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2, v7}, Lcom/liquable/nemo/widget/Workspace;->notifyScreenChangeListener(IZ)V

    .line 357
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "Workspace"

    const-string/jumbo v3, "Caught NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public lockCurrentScreen()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    .line 380
    return-void
.end method

.method public markViewSelected(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    .line 384
    return-void
.end method

.method notifyScreenChangeListener(IZ)V
    .locals 2
    .param p1, "whichScreen"    # I
    .param p2, "changeComplete"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScreenChangeListener:Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

    if-eqz v0, :cond_0

    .line 388
    if-eqz p2, :cond_2

    .line 389
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScreenChangeListener:Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;->onScreenChanged(Landroid/view/View;I)V

    .line 394
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreenFraction()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/widget/Workspace$OnScrollListener;->onScroll(F)V

    .line 397
    :cond_1
    return-void

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScreenChangeListener:Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;->onScreenChanging(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    iget-object v11, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_0

    .line 408
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 410
    :cond_0
    iget-object v11, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 417
    .local v0, "action":I
    iget-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    if-eqz v11, :cond_1

    .line 418
    const-string/jumbo v11, "Workspace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onInterceptTouchEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    and-int/lit16 v11, v0, 0xff

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 421
    iget-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    if-eqz v11, :cond_2

    .line 422
    const-string/jumbo v11, "Workspace"

    const-string/jumbo v12, "Intercepting touch events"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    const/4 v2, 0x1

    .line 509
    :cond_3
    :goto_0
    return v2

    .line 427
    :cond_4
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 505
    :cond_5
    :goto_1
    :pswitch_0
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    if-eqz v11, :cond_c

    const/4 v2, 0x1

    .line 506
    .local v2, "intercept":Z
    :goto_2
    iget-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    if-eqz v11, :cond_3

    .line 507
    const-string/jumbo v11, "Workspace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Intercepting touch events: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    .end local v2    # "intercept":Z
    :pswitch_1
    iget-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    if-nez v11, :cond_5

    .line 437
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    invoke-static {p1, v11}, Lcom/liquable/nemo/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 438
    .local v3, "pointerIndex":I
    invoke-static {p1, v3}, Lcom/liquable/nemo/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 439
    .local v4, "x":F
    invoke-static {p1, v3}, Lcom/liquable/nemo/util/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 440
    .local v8, "y":F
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v5, v11

    .line 441
    .local v5, "xDiff":I
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionY:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v9, v11

    .line 443
    .local v9, "yDiff":I
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mPagingTouchSlop:I

    if-le v5, v11, :cond_8

    const/4 v7, 0x1

    .line 444
    .local v7, "xPaged":Z
    :goto_3
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchSlop:I

    if-le v5, v11, :cond_9

    const/4 v6, 0x1

    .line 445
    .local v6, "xMoved":Z
    :goto_4
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchSlop:I

    if-le v9, v11, :cond_a

    const/4 v10, 0x1

    .line 447
    .local v10, "yMoved":Z
    :goto_5
    if-nez v6, :cond_6

    if-eqz v10, :cond_5

    .line 448
    :cond_6
    if-eqz v7, :cond_7

    .line 450
    const/4 v11, 0x1

    iput v11, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    .line 453
    :cond_7
    iget-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    if-eqz v11, :cond_5

    .line 454
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    .line 458
    iget v11, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 459
    .local v1, "currentScreen":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 460
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .line 443
    .end local v1    # "currentScreen":Landroid/view/View;
    .end local v6    # "xMoved":Z
    .end local v7    # "xPaged":Z
    .end local v10    # "yMoved":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 444
    .restart local v7    # "xPaged":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 445
    .restart local v6    # "xMoved":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 468
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":I
    .end local v6    # "xMoved":Z
    .end local v7    # "xPaged":Z
    .end local v8    # "y":F
    .end local v9    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 469
    .restart local v4    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 471
    .restart local v8    # "y":F
    iput v4, p0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    .line 472
    iput v8, p0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionY:F

    .line 473
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollX()I

    move-result v11

    iput v11, p0, Lcom/liquable/nemo/widget/Workspace;->mDownScrollX:I

    .line 474
    const/4 v11, 0x0

    invoke-static {p1, v11}, Lcom/liquable/nemo/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    iput v11, p0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    .line 475
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    .line 481
    iget-object v11, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    :goto_6
    iput v11, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x1

    goto :goto_6

    .line 488
    .end local v4    # "x":F
    .end local v8    # "y":F
    :pswitch_3
    const/4 v11, 0x0

    iput v11, p0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    .line 489
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    .line 490
    const/4 v11, -0x1

    iput v11, p0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    .line 491
    iget-object v11, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_5

    .line 492
    iget-object v11, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 493
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 498
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 505
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 427
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
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 518
    const/4 v1, 0x0

    .line 520
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v3

    .line 521
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 522
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 525
    .local v2, "childWidth":I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 526
    add-int/2addr v1, v2

    .line 521
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/liquable/nemo/widget/Workspace;->mHasLaidOut:Z

    .line 531
    iget v5, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChange:I

    if-ltz v5, :cond_2

    .line 532
    iget v5, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChange:I

    iget-boolean v6, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChangeFast:Z

    iget-boolean v7, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredNotify:Z

    invoke-virtual {p0, v5, v6, v7}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(IZZ)V

    .line 533
    const/4 v5, -0x1

    iput v5, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChange:I

    .line 534
    iput-boolean v8, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChangeFast:Z

    .line 536
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 540
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 543
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v0

    .line 544
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 545
    iget-object v3, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v6, :cond_0

    .line 547
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 544
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 553
    :cond_1
    iget-boolean v3, p0, Lcom/liquable/nemo/widget/Workspace;->mFirstLayout:Z

    if-eqz v3, :cond_3

    .line 554
    invoke-virtual {p0, v5}, Lcom/liquable/nemo/widget/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 555
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 556
    .local v2, "width":I
    iget-object v3, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 557
    iget-object v3, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 559
    :cond_2
    iget v3, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    mul-int/2addr v3, v2

    invoke-virtual {p0, v3, v5}, Lcom/liquable/nemo/widget/Workspace;->scrollTo(II)V

    .line 560
    invoke-virtual {p0, v6}, Lcom/liquable/nemo/widget/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 561
    iput-boolean v5, p0, Lcom/liquable/nemo/widget/Workspace;->mFirstLayout:Z

    .line 563
    .end local v2    # "width":I
    :cond_3
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 569
    iget v2, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 570
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    .line 574
    .local v0, "focusableScreen":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 575
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 578
    :goto_1
    return v2

    .line 572
    .end local v0    # "focusableScreen":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    .restart local v0    # "focusableScreen":I
    goto :goto_0

    .line 578
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v3, 0x1

    .line 583
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/widget/Workspace$SavedState;

    .line 584
    .local v0, "savedState":Lcom/liquable/nemo/widget/Workspace$SavedState;
    invoke-virtual {v0}, Lcom/liquable/nemo/widget/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 585
    iget v1, v0, Lcom/liquable/nemo/widget/Workspace$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 586
    iget v1, v0, Lcom/liquable/nemo/widget/Workspace$SavedState;->currentScreen:I

    invoke-virtual {p0, v1, v3, v3}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(IZZ)V

    .line 588
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Lcom/liquable/nemo/widget/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/widget/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 593
    .local v0, "state":Lcom/liquable/nemo/widget/Workspace$SavedState;
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/liquable/nemo/widget/Workspace$SavedState;->currentScreen:I

    .line 594
    return-object v0
.end method

.method onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 599
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Lcom/liquable/nemo/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 600
    .local v1, "pointerId":I
    iget v3, p0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 604
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 605
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Lcom/liquable/nemo/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    .line 606
    invoke-static {p1, v0}, Lcom/liquable/nemo/util/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    .line 607
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/liquable/nemo/widget/Workspace;->mDownScrollX:I

    .line 608
    invoke-static {p1, v0}, Lcom/liquable/nemo/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    .line 609
    iget-object v3, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 610
    iget-object v3, p0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 613
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 604
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 618
    const-string/jumbo v22, "Workspace"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onTouchEvent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 622
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 624
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 628
    .local v3, "action":I
    and-int/lit16 v0, v3, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 757
    :cond_2
    :goto_0
    :pswitch_0
    const/16 v22, 0x1

    return v22

    .line 632
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->isFinished()Z

    move-result v22

    if-nez v22, :cond_3

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->abortAnimation()V

    .line 637
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mDownMotionY:F

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mDownScrollX:I

    .line 640
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    goto :goto_0

    .line 644
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 645
    const-string/jumbo v22, "Workspace"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mTouchState="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 651
    .local v10, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/liquable/nemo/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 653
    .local v15, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 654
    .local v8, "lastChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->getWidth()I

    move-result v23

    sub-int v9, v22, v23

    .line 655
    .local v9, "maxScrollX":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mDownScrollX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    sub-float v23, v23, v15

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/widget/Workspace;->scrollTo(II)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreenFraction()F

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/liquable/nemo/widget/Workspace$OnScrollListener;->onScroll(F)V

    goto/16 :goto_0

    .line 660
    .end local v8    # "lastChild":Landroid/view/View;
    .end local v9    # "maxScrollX":I
    .end local v10    # "pointerIndex":I
    .end local v15    # "x":F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 661
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 670
    .restart local v10    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/liquable/nemo/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 671
    .restart local v15    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/liquable/nemo/util/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 672
    .local v19, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 673
    .local v16, "xDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionY:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 675
    .local v20, "yDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mPagingTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    const/16 v18, 0x1

    .line 676
    .local v18, "xPaged":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    const/16 v17, 0x1

    .line 677
    .local v17, "xMoved":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    const/16 v21, 0x1

    .line 679
    .local v21, "yMoved":Z
    :goto_3
    if-nez v17, :cond_6

    if-eqz v21, :cond_2

    .line 680
    :cond_6
    if-eqz v18, :cond_7

    .line 682
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    .line 685
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 686
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/widget/Workspace;->mAllowLongPress:Z

    .line 690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v6

    .line 691
    .local v6, "currentScreen":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 692
    invoke-virtual {v6}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_0

    .line 675
    .end local v6    # "currentScreen":Landroid/view/View;
    .end local v17    # "xMoved":Z
    .end local v18    # "xPaged":Z
    .end local v21    # "yMoved":Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_1

    .line 676
    .restart local v18    # "xPaged":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_2

    .line 677
    .restart local v17    # "xMoved":Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_3

    .line 700
    .end local v10    # "pointerIndex":I
    .end local v15    # "x":F
    .end local v16    # "xDiff":I
    .end local v17    # "xMoved":Z
    .end local v18    # "xPaged":Z
    .end local v19    # "y":F
    .end local v20    # "yDiff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 701
    move-object/from16 v0, p0

    iget v4, v0, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    .line 702
    .local v4, "activePointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/liquable/nemo/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 703
    .restart local v10    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/liquable/nemo/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 704
    .restart local v15    # "x":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 705
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 708
    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 709
    .local v13, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v22, v15

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v23, 0x42c80000    # 100.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_c

    const/4 v7, 0x1

    .line 711
    .local v7, "isFling":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreenFraction()F

    move-result v11

    .line 712
    .local v11, "scrolledPos":F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 714
    .local v14, "whichScreen":I
    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 715
    const-string/jumbo v22, "Workspace"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isFling, whichScreen="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " scrolledPos="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " mCurrentScreen="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " velocityX="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_b
    if-eqz v7, :cond_e

    const/16 v22, 0x1f4

    move/from16 v0, v22

    if-le v13, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    if-lez v22, :cond_e

    .line 726
    int-to-float v0, v14

    move/from16 v22, v0

    cmpg-float v22, v11, v22

    if-gtz v22, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    add-int/lit8 v5, v22, -0x1

    .line 727
    .local v5, "bound":I
    :goto_5
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    .line 739
    .end local v4    # "activePointerId":I
    .end local v5    # "bound":I
    .end local v7    # "isFling":Z
    .end local v10    # "pointerIndex":I
    .end local v11    # "scrolledPos":F
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "velocityX":I
    .end local v14    # "whichScreen":I
    .end local v15    # "x":F
    :goto_6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    .line 740
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    .line 744
    :pswitch_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mTouchState:I

    .line 745
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/widget/Workspace;->mActivePointerId:I

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 748
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/liquable/nemo/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 709
    .restart local v4    # "activePointerId":I
    .restart local v10    # "pointerIndex":I
    .restart local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v13    # "velocityX":I
    .restart local v15    # "x":F
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 726
    .restart local v7    # "isFling":Z
    .restart local v11    # "scrolledPos":F
    .restart local v14    # "whichScreen":I
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    goto :goto_5

    .line 728
    :cond_e
    if-eqz v7, :cond_10

    const/16 v22, -0x1f4

    move/from16 v0, v22

    if-ge v13, v0, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 731
    int-to-float v0, v14

    move/from16 v22, v0

    cmpl-float v22, v11, v22

    if-ltz v22, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    add-int/lit8 v5, v22, 0x1

    .line 732
    .restart local v5    # "bound":I
    :goto_7
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    goto :goto_6

    .line 731
    .end local v5    # "bound":I
    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    goto :goto_7

    .line 734
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->snapToDestination()V

    goto :goto_6

    .line 737
    .end local v4    # "activePointerId":I
    .end local v7    # "isFling":Z
    .end local v10    # "pointerIndex":I
    .end local v11    # "scrolledPos":F
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "velocityX":I
    .end local v14    # "whichScreen":I
    .end local v15    # "x":F
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/widget/Workspace;->performClick()Z

    goto/16 :goto_6

    .line 753
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/liquable/nemo/widget/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 628
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

.method public removeViewFromBack()V
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->removeViewAt(I)V

    .line 762
    return-void
.end method

.method public removeViewFromFront()V
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->removeViewAt(I)V

    .line 767
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 771
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 772
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 773
    .local v0, "screen":I
    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 774
    div-int/lit8 v0, v0, 0x2

    .line 776
    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    .line 779
    :cond_1
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 785
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 786
    .local v0, "screen":I
    iget-boolean v2, p0, Lcom/liquable/nemo/widget/Workspace;->mIgnoreChildFocusRequests:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    const-string/jumbo v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring child focus request: request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    :goto_0
    return v1

    .line 790
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 791
    :cond_2
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    .line 792
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    if-eqz v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 807
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 810
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    if-lez v0, :cond_0

    .line 811
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 826
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 829
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 830
    iget v0, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    if-eqz v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 841
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 2
    .param p1, "screenIndex"    # I

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    .line 850
    return-void
.end method

.method public setCurrentScreenNow(I)V
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 858
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/widget/Workspace;->setCurrentScreenNow(IZ)V

    .line 859
    return-void
.end method

.method public setCurrentScreenNow(IZ)V
    .locals 2
    .param p1, "screenIndex"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(IZZ)V

    .line 863
    return-void
.end method

.method public setIgnoreChildFocusRequests(Z)V
    .locals 0
    .param p1, "mIgnoreChildFocusRequests"    # Z

    .prologue
    .line 869
    iput-boolean p1, p0, Lcom/liquable/nemo/widget/Workspace;->mIgnoreChildFocusRequests:Z

    .line 870
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v0

    .line 881
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 882
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_0
    return-void
.end method

.method public setOnScreenChangeListener(Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;)V
    .locals 1
    .param p1, "screenChangeListener"    # Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

    .prologue
    .line 894
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/widget/Workspace;->setOnScreenChangeListener(Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;Z)V

    .line 895
    return-void
.end method

.method public setOnScreenChangeListener(Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;Z)V
    .locals 3
    .param p1, "screenChangeListener"    # Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;
    .param p2, "notifyImmediately"    # Z

    .prologue
    .line 908
    iput-object p1, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScreenChangeListener:Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

    .line 909
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScreenChangeListener:Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 910
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScreenChangeListener:Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;

    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/widget/Workspace$OnScreenChangeListener;->onScreenChanged(Landroid/view/View;I)V

    .line 912
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/liquable/nemo/widget/Workspace$OnScrollListener;Z)V
    .locals 2
    .param p1, "scrollListener"    # Lcom/liquable/nemo/widget/Workspace$OnScrollListener;
    .param p2, "notifyImmediately"    # Z

    .prologue
    .line 925
    iput-object p1, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    .line 926
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 927
    iget-object v0, p0, Lcom/liquable/nemo/widget/Workspace;->mOnScrollListener:Lcom/liquable/nemo/widget/Workspace$OnScrollListener;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getCurrentScreenFraction()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/widget/Workspace$OnScrollListener;->onScroll(F)V

    .line 929
    :cond_0
    return-void
.end method

.method public setSeparator(I)V
    .locals 8
    .param p1, "resId"    # I

    .prologue
    .line 935
    iget-object v6, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    .line 937
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 938
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v3

    .line 939
    .local v3, "num":I
    add-int/lit8 v0, v3, -0x2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 940
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->removeViewAt(I)V

    .line 939
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->requestLayout()V

    .line 970
    .end local v0    # "i":I
    .end local v3    # "num":I
    :cond_1
    :goto_1
    return-void

    .line 943
    :cond_2
    if-eqz p1, :cond_1

    .line 945
    iget-object v6, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    .line 947
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v4

    .line 948
    .local v4, "numsep":I
    const/4 v1, 0x1

    .line 949
    .local v1, "insertIndex":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 950
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 951
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 952
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 955
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    invoke-virtual {p0, v5, v1}, Lcom/liquable/nemo/widget/Workspace;->addView(Landroid/view/View;I)V

    .line 957
    add-int/lit8 v1, v1, 0x2

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 959
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->requestLayout()V

    goto :goto_1

    .line 962
    .end local v0    # "i":I
    .end local v1    # "insertIndex":I
    .end local v4    # "numsep":I
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 963
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getChildCount()I

    move-result v3

    .line 964
    .restart local v3    # "num":I
    add-int/lit8 v0, v3, -0x2

    .restart local v0    # "i":I
    :goto_3
    if-lez v0, :cond_5

    .line 965
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 967
    :cond_5
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->requestLayout()V

    goto :goto_1
.end method

.method snapToDestination()V
    .locals 4

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollWidth()I

    move-result v0

    .line 974
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 976
    .local v1, "whichScreen":I
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(I)V

    .line 977
    return-void
.end method

.method snapToScreen(I)V
    .locals 2
    .param p1, "whichScreen"    # I

    .prologue
    .line 980
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/liquable/nemo/widget/Workspace;->snapToScreen(IZZ)V

    .line 981
    return-void
.end method

.method snapToScreen(IZZ)V
    .locals 14
    .param p1, "whichScreen"    # I
    .param p2, "fast"    # Z
    .param p3, "notify"    # Z

    .prologue
    .line 984
    iget-boolean v1, p0, Lcom/liquable/nemo/widget/Workspace;->mHasLaidOut:Z

    if-nez v1, :cond_0

    .line 985
    iput p1, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChange:I

    .line 986
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredScreenChangeFast:Z

    .line 987
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mDeferredNotify:Z

    .line 1058
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-boolean v1, p0, Lcom/liquable/nemo/widget/Workspace;->mIsVerbose:Z

    if-eqz v1, :cond_1

    .line 992
    const-string/jumbo v1, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Snapping to screen: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 997
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 999
    .local v11, "screenDelta":I
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    if-ne v1, p1, :cond_3

    :cond_2
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    if-eq v1, p1, :cond_a

    :cond_3
    const/4 v10, 0x1

    .line 1001
    .local v10, "screenChanging":Z
    :goto_1
    iput p1, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    .line 1003
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 1004
    .local v7, "focusedChild":Landroid/view/View;
    if-eqz v7, :cond_4

    if-eqz v11, :cond_4

    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v7, v1, :cond_4

    .line 1016
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollWidth()I

    move-result v1

    mul-int v8, p1, v1

    .line 1017
    .local v8, "newX":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->getScrollX()I

    move-result v2

    .line 1018
    .local v2, "sX":I
    sub-int v4, v8, v2

    .line 1019
    .local v4, "delta":I
    mul-int/lit16 v6, v11, 0x12c

    .line 1020
    .local v6, "duration":I
    invoke-virtual {p0, v6}, Lcom/liquable/nemo/widget/Workspace;->awakenScrollBars(I)Z

    .line 1021
    if-nez v6, :cond_5

    .line 1022
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1024
    :cond_5
    if-eqz p2, :cond_6

    .line 1025
    const/4 v6, 0x0

    .line 1028
    :cond_6
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    iget v3, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    if-eq v1, v3, :cond_7

    .line 1030
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v9

    .line 1031
    .local v9, "screenAt":Landroid/view/View;
    if-eqz v9, :cond_b

    .line 1032
    const-string/jumbo v1, "dispatchDisplayHint"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x4

    .line 1035
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    .line 1032
    invoke-static {v9, v1, v3, v5}, Lcom/liquable/nemo/util/ReflectionUtils;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    .end local v9    # "screenAt":Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1051
    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1053
    :cond_8
    iget-object v1, p0, Lcom/liquable/nemo/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1054
    if-eqz v10, :cond_9

    if-eqz p3, :cond_9

    .line 1055
    iget v1, p0, Lcom/liquable/nemo/widget/Workspace;->mNextScreen:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/liquable/nemo/widget/Workspace;->notifyScreenChangeListener(IZ)V

    .line 1057
    :cond_9
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Workspace;->invalidate()V

    goto/16 :goto_0

    .line 999
    .end local v2    # "sX":I
    .end local v4    # "delta":I
    .end local v6    # "duration":I
    .end local v7    # "focusedChild":Landroid/view/View;
    .end local v8    # "newX":I
    .end local v10    # "screenChanging":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_1

    .line 1037
    .restart local v2    # "sX":I
    .restart local v4    # "delta":I
    .restart local v6    # "duration":I
    .restart local v7    # "focusedChild":Landroid/view/View;
    .restart local v8    # "newX":I
    .restart local v9    # "screenAt":Landroid/view/View;
    .restart local v10    # "screenChanging":Z
    :cond_b
    const-string/jumbo v1, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screen at index was null. mCurrentScreen = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/liquable/nemo/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public unlockCurrentScreen()V
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Workspace;->mLocked:Z

    .line 1066
    return-void
.end method
