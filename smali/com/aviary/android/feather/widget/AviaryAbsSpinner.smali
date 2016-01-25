.class public abstract Lcom/aviary/android/feather/widget/AviaryAbsSpinner;
.super Lcom/aviary/android/feather/widget/AviaryAdapterView;
.source "AviaryAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/widget/AviaryAdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/Adapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mDefaultPosition:I

.field mHeightMeasureSpec:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field protected final mRecycleBin:Ljava/util/List;
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

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/AviaryAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionLeftPadding:I

    .line 39
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionTopPadding:I

    .line 41
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionRightPadding:I

    .line 43
    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionBottomPadding:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->initAbsSpinner()V

    .line 73
    return-void
.end method

.method private emptyRecycler()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->emptySubRecycler()V

    .line 153
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    :cond_0
    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setFocusable(Z)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setWillNotDraw(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method protected emptySubRecycler()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 315
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract layout(IZZ)V
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 188
    .local v7, "widthMode":I
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingLeft:I

    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionLeftPadding:I

    if-le v9, v11, :cond_6

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v9, v10, Landroid/graphics/Rect;->left:I

    .line 189
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingTop:I

    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionTopPadding:I

    if-le v9, v11, :cond_7

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingTop:I

    :goto_1
    iput v9, v10, Landroid/graphics/Rect;->top:I

    .line 190
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingRight:I

    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionRightPadding:I

    if-le v9, v11, :cond_8

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingRight:I

    :goto_2
    iput v9, v10, Landroid/graphics/Rect;->right:I

    .line 191
    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingBottom:I

    iget v11, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionBottomPadding:I

    if-le v9, v11, :cond_9

    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 193
    iget-boolean v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDataChanged:Z

    if-eqz v9, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->handleDataChanged()V

    .line 197
    :cond_0
    const/4 v2, 0x0

    .line 198
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 199
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 201
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 202
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_4

    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v9}, Landroid/widget/Adapter;->getCount()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 205
    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v9, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v6

    .line 206
    .local v6, "viewType":I
    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 207
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 209
    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    const/4 v10, 0x0

    invoke-interface {v9, v4, v10, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 212
    :cond_1
    if-eqz v5, :cond_2

    .line 214
    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Queue;

    invoke-interface {v9, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 217
    :cond_2
    if-eqz v5, :cond_4

    .line 218
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_3

    .line 219
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mBlockLayoutRequests:Z

    .line 220
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mBlockLayoutRequests:Z

    .line 223
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 225
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v2, v9, v10

    .line 226
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v3, v9, v10

    .line 228
    const/4 v1, 0x0

    .line 232
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewType":I
    :cond_4
    if-eqz v1, :cond_5

    .line 234
    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v2, v9, v10

    .line 235
    if-nez v7, :cond_5

    .line 236
    iget-object v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v3, v9, v10

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 241
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 243
    invoke-static {v2, p2}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->resolveSize(II)I

    move-result v0

    .line 244
    .local v0, "heightSize":I
    invoke-static {v3, p1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->resolveSize(II)I

    move-result v8

    .line 246
    .local v8, "widthSize":I
    invoke-virtual {p0, v8, v0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setMeasuredDimension(II)V

    .line 247
    iput p2, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mHeightMeasureSpec:I

    .line 248
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mWidthMeasureSpec:I

    .line 249
    return-void

    .line 188
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v8    # "widthSize":I
    :cond_6
    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 189
    :cond_7
    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 190
    :cond_8
    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 191
    :cond_9
    iget v9, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x1

    .line 415
    move-object v0, p1

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;

    .line 417
    .local v0, "ss":Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 419
    iget-wide v1, v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 420
    iput-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDataChanged:Z

    .line 421
    iput-boolean v5, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mNeedSync:Z

    .line 422
    iget-wide v1, v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSyncRowId:J

    .line 423
    iget v1, v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSyncPosition:I

    .line 424
    const/4 v1, 0x0

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSyncMode:I

    .line 425
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->requestLayout()V

    .line 427
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 402
    invoke-super {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 403
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 404
    .local v0, "ss":Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->selectedId:J

    .line 405
    iget-wide v2, v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->position:I

    .line 410
    :goto_0
    return-object v0

    .line 408
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 339
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 340
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 341
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 342
    iget-object v2, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildCount()I

    move-result v1

    .line 346
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 347
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 349
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 350
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 355
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 346
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 355
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 7

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildCount()I

    move-result v0

    .line 267
    .local v0, "childCount":I
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mFirstPosition:I

    .line 270
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 272
    .local v4, "v":Landroid/view/View;
    add-int v2, v3, v1

    .line 273
    .local v2, "index":I
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v6, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    .line 274
    .local v5, "viewType":I
    iget-object v6, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "index":I
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "viewType":I
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 324
    invoke-super {p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->requestLayout()V

    .line 326
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 167
    const-string/jumbo v0, "View"

    const-string/jumbo v1, "emptyList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDataChanged:Z

    .line 169
    iput-boolean v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mNeedSync:Z

    .line 171
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->removeAllViewsInLayout()V

    .line 172
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->emptyRecycler()V

    .line 174
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mOldSelectedPosition:I

    .line 175
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mOldSelectedRowId:J

    .line 177
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setSelectedPositionInt(I)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 179
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->invalidate()V

    .line 180
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v1, -0x1

    .line 102
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->emptyRecycler()V

    .line 105
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->resetList()V

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    .line 110
    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mOldSelectedPosition:I

    .line 111
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mOldSelectedRowId:J

    .line 113
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    if-eqz v3, :cond_5

    .line 114
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mOldItemCount:I

    .line 115
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    .line 116
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->checkFocus()V

    .line 118
    new-instance v3, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;-><init>(Lcom/aviary/android/feather/widget/AviaryAdapterView;)V

    iput-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 119
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    iget-object v4, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 122
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDefaultPosition:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDefaultPosition:I

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    if-ge v3, v4, :cond_1

    .line 123
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDefaultPosition:I

    .line 128
    .local v1, "position":I
    :goto_0
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v2

    .line 129
    .local v2, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 130
    iget-object v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mRecycleBin:Ljava/util/List;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    .end local v1    # "position":I
    .end local v2    # "total":I
    :cond_1
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    if-lez v3, :cond_2

    const/4 v1, 0x0

    .restart local v1    # "position":I
    :cond_2
    goto :goto_0

    .line 133
    .restart local v0    # "i":I
    .restart local v2    # "total":I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 136
    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    if-nez v3, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->checkSelectionChanged()V

    .line 148
    .end local v0    # "i":I
    .end local v1    # "position":I
    .end local v2    # "total":I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->requestLayout()V

    .line 149
    return-void

    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->checkFocus()V

    .line 143
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->resetList()V

    .line 145
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setDefaultPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mDefaultPosition:I

    .line 98
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->setPadding(IIII)V

    .line 78
    iput p1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingLeft:I

    .line 79
    iput p4, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingBottom:I

    .line 80
    iput p2, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingTop:I

    .line 81
    iput p3, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mPaddingRight:I

    .line 82
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 293
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 295
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->requestLayout()V

    .line 296
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->postInvalidate()V

    .line 298
    :cond_0
    return-void
.end method

.method public setSelection(IZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "changed"    # Z

    .prologue
    .line 287
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 288
    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setSelectionInt(IZZ)V

    .line 289
    return-void

    .line 287
    .end local v0    # "shouldAnimate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "changed"    # Z

    .prologue
    .line 301
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mBlockLayoutRequests:Z

    .line 303
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 304
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 305
    invoke-virtual {p0, v0, p2, p3}, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->layout(IZZ)V

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryAbsSpinner;->mBlockLayoutRequests:Z

    .line 308
    .end local v0    # "delta":I
    :cond_0
    return-void
.end method
