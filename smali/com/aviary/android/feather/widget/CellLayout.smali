.class public Lcom/aviary/android/feather/widget/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/CellLayout$CellInfo;,
        Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mAxisCells:I

.field private mAxisRows:I

.field private mBottomPadding:I

.field private mCellHeight:I

.field public final mCellInfo:Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

.field private mCellPaddingH:I

.field private mCellPaddingV:I

.field private mCellWidth:I

.field mCellXY:[I

.field private mEndPadding:I

.field private mHeightGap:I

.field private mLastDownOnOccupiedCell:Z

.field private mLayoutDirection:I

.field mOccupied:[[Z

.field private mStartPadding:I

.field private mTopPadding:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v1, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellInfo:Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    .line 53
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellXY:[I

    .line 55
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 92
    sget-object v1, Lcom/aviary/android/feather/R$styleable;->AviaryCellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellPaddingH:I

    .line 95
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellPaddingV:I

    .line 97
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mStartPadding:I

    .line 98
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mEndPadding:I

    .line 99
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mTopPadding:I

    .line 100
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mBottomPadding:I

    .line 101
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mLayoutDirection:I

    .line 103
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    .line 104
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/CellLayout;->resetCells()V

    .line 108
    return-void
.end method

.method private findVacantCell(IIII)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanH"    # I
    .param p4, "spanV"    # I

    .prologue
    const/4 v1, 0x1

    .line 272
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge p2, v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, p1

    aget-boolean v2, v2, p2

    if-nez v2, :cond_2

    .line 277
    const/4 v0, 0x1

    .line 279
    .local v0, "result":Z
    if-le p3, v1, :cond_0

    .line 280
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p3, -0x1

    invoke-direct {p0, v2, p2, v3, v1}, Lcom/aviary/android/feather/widget/CellLayout;->findVacantCell(IIII)Z

    move-result v0

    .line 285
    :goto_0
    if-le p4, v1, :cond_1

    .line 286
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p4, -0x1

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/aviary/android/feather/widget/CellLayout;->findVacantCell(IIII)Z

    move-result v2

    and-int/2addr v0, v2

    .line 291
    :goto_1
    if-eqz v0, :cond_2

    .line 296
    .end local v0    # "result":Z
    :goto_2
    return v1

    .line 282
    .restart local v0    # "result":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    and-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private resetCells()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mLayoutDirection:I

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    iget v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    iget v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, 0x1

    .line 185
    move-object v0, p3

    check-cast v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;

    .line 186
    .local v0, "cellParams":Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    iput-boolean v3, v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->regenerateId:Z

    .line 188
    iget v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mLayoutDirection:I

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    iget v2, v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellX:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellY:I

    aput-boolean v3, v1, v2

    .line 193
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    iget v2, v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellY:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellX:I

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 158
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CellLayout;->getChildCount()I

    move-result v1

    .line 159
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 160
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/widget/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 580
    instance-of v0, p1, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;

    return v0
.end method

.method public findVacantCell()Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0, v0}, Lcom/aviary/android/feather/widget/CellLayout;->findVacantCell(II)Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public findVacantCell(II)Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    .locals 4
    .param p1, "spanH"    # I
    .param p2, "spanV"    # I

    .prologue
    const/4 v0, 0x0

    .line 215
    iget v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    if-le p1, v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    iget v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    if-gt p2, v3, :cond_0

    .line 222
    iget v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mLayoutDirection:I

    if-nez v3, :cond_4

    .line 224
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 225
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_2
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 226
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/aviary/android/feather/widget/CellLayout;->findVacantCell(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    new-instance v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;-><init>()V

    .line 228
    .local v0, "info":Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    iput v1, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->cellX:I

    .line 229
    iput v2, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->cellY:I

    .line 230
    iput p1, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->spanH:I

    .line 231
    iput p2, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->spanV:I

    .line 232
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellInfo:Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    iget v3, v3, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->screen:I

    iput v3, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->screen:I

    goto :goto_0

    .line 225
    .end local v0    # "info":Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 224
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "y":I
    :goto_3
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 240
    const/4 v1, 0x0

    .restart local v1    # "x":I
    :goto_4
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v2

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 241
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/aviary/android/feather/widget/CellLayout;->findVacantCell(IIII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 242
    new-instance v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;-><init>()V

    .line 243
    .restart local v0    # "info":Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    iput v1, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->cellX:I

    .line 244
    iput v2, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->cellY:I

    .line 245
    iput p1, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->spanH:I

    .line 246
    iput p2, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->spanV:I

    .line 247
    iget-object v3, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellInfo:Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    iget v3, v3, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->screen:I

    iput v3, v0, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->screen:I

    goto :goto_0

    .line 240
    .end local v0    # "info":Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 239
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 575
    new-instance v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 585
    new-instance v0, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mBottomPadding:I

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellWidth:I

    return v0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mStartPadding:I

    return v0
.end method

.method public getRightPadding()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mEndPadding:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mTopPadding:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 312
    iget-object v1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mCellInfo:Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->screen:I

    .line 313
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 318
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CellLayout;->getChildCount()I

    move-result v3

    .line 503
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 504
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 507
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;

    .line 508
    .local v5, "lp":Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    iget v1, v5, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->x:I

    .line 509
    .local v1, "childLeft":I
    iget v2, v5, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->y:I

    .line 510
    .local v2, "childTop":I
    iget v6, v5, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v1

    iget v7, v5, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->height:I

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 503
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "lp":Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 444
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 445
    .local v26, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 447
    .local v25, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 448
    .local v18, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 450
    .local v17, "height":I
    if-eqz v26, :cond_0

    if-nez v18, :cond_1

    .line 451
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    add-int/lit8 v20, v4, -0x1

    .line 455
    .local v20, "numHGaps":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    add-int/lit8 v21, v4, -0x1

    .line 457
    .local v21, "numVGaps":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellPaddingH:I

    mul-int v22, v20, v4

    .line 458
    .local v22, "totalHGap":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellPaddingV:I

    mul-int v23, v21, v4

    .line 460
    .local v23, "totalVGap":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mStartPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/CellLayout;->mEndPadding:I

    add-int/2addr v4, v5

    sub-int v11, v25, v4

    .line 461
    .local v11, "availableWidth":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mTopPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/CellLayout;->mBottomPadding:I

    add-int/2addr v4, v5

    sub-int v10, v17, v4

    .line 463
    .local v10, "availableHeight":I
    sub-int v4, v11, v22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellWidth:I

    .line 464
    sub-int v4, v10, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellHeight:I

    .line 466
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mHeightGap:I

    .line 467
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mWidthGap:I

    .line 469
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    mul-int/2addr v4, v5

    sub-int v24, v10, v4

    .line 471
    .local v24, "vTotalSpace":I
    :try_start_0
    div-int v4, v24, v21

    move-object/from16 v0, p0

    iput v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mHeightGap:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    mul-int/2addr v4, v5

    sub-int v16, v11, v4

    .line 475
    .local v16, "hTotalSpace":I
    if-lez v20, :cond_2

    .line 476
    div-int v4, v16, v20

    move-object/from16 v0, p0

    iput v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mWidthGap:I

    .line 479
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CellLayout;->getChildCount()I

    move-result v15

    .line 481
    .local v15, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v15, :cond_4

    .line 482
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 483
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;

    .line 485
    .local v3, "lp":Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/widget/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/aviary/android/feather/widget/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/aviary/android/feather/widget/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/aviary/android/feather/widget/CellLayout;->mStartPadding:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/aviary/android/feather/widget/CellLayout;->mTopPadding:I

    invoke-virtual/range {v3 .. v9}, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 487
    iget-boolean v4, v3, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->regenerateId:Z

    if-eqz v4, :cond_3

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/CellLayout;->getId()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    iget v5, v3, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget v5, v3, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    invoke-virtual {v12, v4}, Landroid/view/View;->setId(I)V

    .line 489
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->regenerateId:Z

    .line 492
    :cond_3
    iget v4, v3, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 493
    .local v13, "childWidthMeasureSpec":I
    iget v4, v3, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 494
    .local v14, "childheightMeasureSpec":I
    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 481
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 496
    .end local v3    # "lp":Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childWidthMeasureSpec":I
    .end local v14    # "childheightMeasureSpec":I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/CellLayout;->setMeasuredDimension(II)V

    .line 497
    return-void

    .line 472
    .end local v15    # "count":I
    .end local v16    # "hTotalSpace":I
    .end local v19    # "i":I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/CellLayout;->resetCells()V

    .line 151
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 302
    if-eqz p1, :cond_0

    .line 303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 307
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 322
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/widget/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 518
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CellLayout;->getChildCount()I

    move-result v0

    .line 519
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 520
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/widget/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 521
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 522
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 529
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 533
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 536
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_0
    return-void
.end method

.method public setNumCols(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 128
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    if-eq v0, p1, :cond_0

    .line 129
    iput p1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisCells:I

    .line 130
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/CellLayout;->resetCells()V

    .line 132
    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    if-eq p1, v0, :cond_0

    .line 142
    iput p1, p0, Lcom/aviary/android/feather/widget/CellLayout;->mAxisRows:I

    .line 143
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/CellLayout;->resetCells()V

    .line 145
    :cond_0
    return-void
.end method
