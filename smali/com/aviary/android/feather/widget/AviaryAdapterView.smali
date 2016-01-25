.class public abstract Lcom/aviary/android/feather/widget/AviaryAdapterView;
.super Landroid/view/ViewGroup;
.source "AviaryAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;,
        Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;,
        Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterContextMenuInfo;,
        Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;,
        Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemLongClickListener;,
        Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I

.field mInLayout:Z

.field mItemCount:I

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<TT;>.com/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    .line 35
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    .line 37
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    .line 43
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mInLayout:Z

    .line 48
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    .line 49
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    .line 50
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    .line 51
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    .line 57
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedPosition:I

    .line 58
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedRowId:J

    .line 62
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mBlockLayoutRequests:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    .line 35
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    .line 37
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    .line 43
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mInLayout:Z

    .line 48
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    .line 49
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    .line 50
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    .line 51
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    .line 57
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedPosition:I

    .line 58
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedRowId:J

    .line 62
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mBlockLayoutRequests:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    .line 35
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    .line 37
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    .line 43
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mInLayout:Z

    .line 48
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    .line 49
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    .line 50
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    .line 51
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    .line 57
    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedPosition:I

    .line 58
    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedRowId:J

    .line 62
    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mBlockLayoutRequests:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryAdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/AviaryAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryAdapterView;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 474
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 476
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 478
    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 p1, 0x0

    .line 309
    :cond_0
    if-eqz p1, :cond_3

    .line 310
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->setVisibility(I)V

    .line 321
    :goto_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->onLayout(ZIIII)V

    .line 328
    :cond_1
    :goto_1
    return-void

    .line 315
    :cond_2
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_4
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 151
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AviaryAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 156
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AviaryAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 166
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AviaryAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 161
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AviaryAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 483
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 291
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 292
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 296
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 297
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 298
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 299
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->updateEmptyStatus(Z)V

    .line 301
    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    .line 291
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    .line 292
    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    .line 296
    goto :goto_2

    :cond_8
    move v3, v5

    .line 297
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 7

    .prologue
    .line 550
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const-string/jumbo v1, "View"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkSelectionChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedPosition:I

    if-ne v0, v3, :cond_0

    iget-wide v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    iget-wide v5, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 552
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->selectionChanged(II)V

    .line 553
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedPosition:I

    .line 554
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldSelectedRowId:J

    .line 556
    :cond_2
    return-void

    .line 550
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 463
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 465
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v1, 0x1

    .line 468
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 354
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 349
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 559
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    .line 561
    .local v2, "count":I
    if-nez v2, :cond_1

    .line 562
    const/4 v14, -0x1

    .line 634
    :cond_0
    :goto_0
    return v14

    .line 565
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    .line 566
    .local v8, "idToMatch":J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncPosition:I

    .line 569
    .local v14, "seed":I
    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 570
    const/4 v14, -0x1

    goto :goto_0

    .line 574
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 575
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 582
    .local v3, "endTime":J
    move v5, v14

    .line 585
    .local v5, "first":I
    move v10, v14

    .line 588
    .local v10, "last":I
    const/4 v11, 0x0

    .line 598
    .local v11, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 599
    .local v1, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v1, :cond_5

    .line 600
    const/4 v14, -0x1

    goto :goto_0

    .line 618
    .local v6, "hitFirst":Z
    .local v7, "hitLast":Z
    .local v12, "rowId":J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 620
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 621
    move v14, v10

    .line 623
    const/4 v11, 0x0

    .line 603
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 604
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 605
    .restart local v12    # "rowId":J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 610
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 611
    .restart local v7    # "hitLast":Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 613
    .restart local v6    # "hitFirst":Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 634
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 610
    .restart local v12    # "rowId":J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 611
    .restart local v7    # "hitLast":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 624
    .restart local v6    # "hitFirst":Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 626
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 627
    move v14, v5

    .line 629
    const/4 v11, 0x1

    goto :goto_1
.end method

.method protected fireOnSelected()V
    .locals 6

    .prologue
    .line 450
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemSelectedListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 453
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 455
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemSelectedListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 457
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemSelectedListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/aviary/android/feather/widget/AviaryAdapterView;)V

    goto :goto_0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 331
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 332
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 336
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 337
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 242
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemLongClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemSelectedListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 214
    move-object v3, p1

    .line 217
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 218
    move-object v3, v4

    goto :goto_0

    .line 220
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 234
    :cond_0
    :goto_1
    return v5

    .line 226
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getChildCount()I

    move-result v0

    .line 227
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 227
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 200
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 201
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 202
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 203
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 205
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 194
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 487
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    .line 488
    .local v0, "count":I
    const/4 v1, 0x0

    .line 490
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 495
    iget-boolean v4, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 498
    iput-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    .line 502
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->findSyncPosition()I

    move-result v2

    .line 503
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 505
    invoke-virtual {p0, v2, v7}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 506
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 508
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->setNextSelectedPositionInt(I)V

    .line 509
    const/4 v1, 0x1

    .line 513
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 515
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 518
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 519
    add-int/lit8 v2, v0, -0x1

    .line 521
    :cond_1
    if-gez v2, :cond_2

    .line 522
    const/4 v2, 0x0

    .line 526
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 527
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 529
    invoke-virtual {p0, v2, v5}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 531
    :cond_3
    if-ltz v3, :cond_4

    .line 532
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->setNextSelectedPositionInt(I)V

    .line 533
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->checkSelectionChanged()V

    .line 534
    const/4 v1, 0x1

    .line 538
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 540
    iput v6, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    .line 541
    iput-wide v8, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    .line 542
    iput v6, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    .line 543
    iput-wide v8, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    .line 544
    iput-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    .line 545
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->checkSelectionChanged()V

    .line 547
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 638
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 408
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 409
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectionNotifier:Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 186
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mLayoutHeight:I

    .line 187
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->playSoundEffect(I)V

    .line 92
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 93
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;->onItemClick(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 96
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 660
    iput-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    .line 661
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncHeight:J

    .line 662
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 664
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 665
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    .line 666
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncPosition:I

    .line 667
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSpecificTop:I

    .line 670
    :cond_0
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncMode:I

    .line 687
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 673
    :cond_2
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 674
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 675
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 676
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    .line 680
    :goto_1
    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncPosition:I

    .line 681
    if-eqz v1, :cond_3

    .line 682
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSpecificTop:I

    .line 684
    :cond_3
    iput v5, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncMode:I

    goto :goto_0

    .line 678
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 181
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AviaryAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 171
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AviaryAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 176
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AviaryAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged(II)V
    .locals 3
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 427
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectionChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemSelectedListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 429
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectionNotifier:Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;-><init>(Lcom/aviary/android/feather/widget/AviaryAdapterView;Lcom/aviary/android/feather/widget/AviaryAdapterView$1;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectionNotifier:Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectionNotifier:Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 444
    :cond_2
    :goto_0
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 445
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->sendAccessibilityEvent(I)V

    .line 447
    :cond_3
    return-void

    .line 439
    :cond_4
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 248
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mEmptyView:Landroid/view/View;

    .line 250
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 251
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 252
    .local v1, "empty":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->updateEmptyStatus(Z)V

    .line 253
    return-void

    .line 251
    .end local v1    # "empty":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 266
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 268
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDesiredFocusableState:Z

    .line 269
    if-nez p1, :cond_1

    .line 270
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 273
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 274
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 266
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 273
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 278
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 279
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 281
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 282
    if-eqz p1, :cond_1

    .line 283
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDesiredFocusableState:Z

    .line 286
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 287
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 279
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 286
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 647
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextSelectedPositionInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    .line 650
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    .line 652
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 653
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncPosition:I

    .line 654
    iget-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSyncRowId:J

    .line 656
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 342
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AviaryAdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;

    .prologue
    .line 82
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;

    .line 83
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemLongClickListener;

    .prologue
    .line 105
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->setLongClickable(Z)V

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemLongClickListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemLongClickListener;

    .line 109
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

    .prologue
    .line 123
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOnItemSelectedListener:Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemSelectedListener;

    .line 124
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 642
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>;"
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    .line 643
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    .line 644
    return-void
.end method

.method public abstract setSelection(I)V
.end method
