.class public Lcom/liquable/nemo/staggerd/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$SelectionBoundsAdjuster;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterContextMenuInfo;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT_AUTO:I = -0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_REST:I = 0x6

.field private static final TOUCH_MODE_TAP:I = 0x4


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBeginClick:Z

.field private final mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mColCount:I

.field private mColCountSetting:I

.field private final mColMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColWidth:I

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDataChanged:Z

.field mDrawSelectorOnTop:Z

.field private mFastChildLayout:Z

.field private mFirstAdapterId:J

.field private mFirstPosition:I

.field private final mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mIsChildViewEnabled:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemTops:[I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaximumVelocity:I

.field private mMinColWidth:I

.field private mMotionPosition:I

.field private mNumCols:I

.field private final mObserver:Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;

.field mOnItemClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;

.field private mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;

.field private mPopulating:Z

.field private final mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

.field private mRestoreOffsets:[I

.field private final mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private final mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderY:F

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 812
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 816
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 819
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 668
    iput v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCountSetting:I

    .line 670
    iput v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 672
    iput v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMinColWidth:I

    .line 680
    new-instance v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    .line 681
    new-instance v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mObserver:Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;

    .line 722
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 730
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    .line 734
    iput-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 741
    iput-boolean v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 751
    iput v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionLeftPadding:I

    .line 756
    iput v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionTopPadding:I

    .line 761
    iput v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionRightPadding:I

    .line 766
    iput v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionBottomPadding:I

    .line 776
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 781
    const/4 v2, -0x1

    iput v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    .line 808
    new-instance v2, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    .line 821
    if-eqz p2, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/R$styleable;->StaggeredGridView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 823
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 824
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 825
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    .line 831
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 832
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchSlop:I

    .line 833
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMaximumVelocity:I

    .line 834
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFlingVelocity:I

    .line 835
    invoke-static {p1}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->from(Landroid/content/Context;)Lcom/liquable/nemo/staggerd/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    .line 837
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 838
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 839
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setWillNotDraw(Z)V

    .line 840
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setClipToPadding(Z)V

    .line 841
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setFocusableInTouchMode(Z)V

    .line 843
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->useDefaultSelector()V

    .line 846
    :cond_0
    return-void

    .line 827
    .end local v1    # "vc":Landroid/view/ViewConfiguration;
    :cond_1
    iput v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 828
    iput-boolean v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDrawSelectorOnTop:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/staggerd/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/staggerd/StaggeredGridView;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstAdapterId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$1502(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;)Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p1, "x1"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mHasStableIds:Z

    return v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->recycleAllViews()V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    return-object v0
.end method

.method private clearAllState()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 863
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeAllViews()V

    .line 866
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->resetStateForGridTop()V

    .line 869
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->clear()V

    .line 871
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 872
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    .line 873
    return-void
.end method

.method private final contentFits()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 906
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I

    if-eq v4, v5, :cond_1

    .line 921
    :cond_0
    :goto_0
    return v3

    .line 910
    :cond_1
    const v2, 0x7fffffff

    .line 911
    .local v2, "topmost":I
    const/high16 v0, -0x80000000

    .line 912
    .local v0, "bottommost":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-ge v1, v4, :cond_4

    .line 913
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v1

    if-ge v4, v2, :cond_2

    .line 914
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    aget v2, v4, v1

    .line 916
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    aget v4, v4, v1

    if-le v4, v0, :cond_3

    .line 917
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    aget v0, v4, v1

    .line 912
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 921
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingTop()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private displayMapping()V
    .locals 7

    .prologue
    .line 958
    const-string/jumbo v4, "DISPLAY"

    const-string/jumbo v5, "MAP ****************"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 962
    .local v0, "col":I
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 963
    .local v2, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "COL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 966
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 967
    const-string/jumbo v6, " , "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 969
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_0
    const-string/jumbo v5, "DISPLAY"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    .line 972
    goto :goto_0

    .line 973
    .end local v2    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const-string/jumbo v4, "DISPLAY"

    const-string/jumbo v5, "MAP END ****************"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBeginClick:Z

    if-eqz v1, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1013
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1014
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1016
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getFirstChildAtColumn(I)Landroid/view/View;
    .locals 6
    .param p1, "column"    # I

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 1359
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-ge v2, v4, :cond_2

    .line 1360
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1361
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1363
    .local v3, "left":I
    if-eqz v0, :cond_1

    .line 1365
    const/4 v1, 0x0

    .line 1368
    .local v1, "col":I
    :goto_1
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColWidth:I

    iget v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 1369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1372
    :cond_0
    if-ne v1, p1, :cond_1

    .line 1380
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "col":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    :goto_2
    return-object v0

    .line 1359
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "left":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1380
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1538
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    return v0
.end method

.method private populate(Z)V
    .locals 7
    .param p1, "clearData"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2237
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    .line 2290
    :cond_0
    :goto_0
    return-void

    .line 2241
    :cond_1
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 2242
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v6

    .line 2243
    .local v0, "colCount":I
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-eq v0, v4, :cond_2

    .line 2244
    iput v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 2248
    .end local v0    # "colCount":I
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 2251
    .restart local v0    # "colCount":I
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-eq v4, v6, :cond_3

    .line 2252
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-ge v1, v4, :cond_3

    .line 2254
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2258
    .end local v1    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    array-length v4, v4

    if-eq v4, v0, :cond_5

    .line 2259
    :cond_4
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    .line 2260
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    .line 2262
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2263
    iget-boolean v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    if-eqz v4, :cond_7

    .line 2264
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeAllViewsInLayout()V

    .line 2270
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingTop()I

    move-result v3

    .line 2271
    .local v3, "top":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_a

    .line 2272
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    aget v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    add-int v2, v3, v4

    .line 2273
    .local v2, "offset":I
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    if-nez v2, :cond_9

    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v1

    :goto_5
    aput v4, v6, v1

    .line 2274
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    aget v2, v6, v1

    .end local v2    # "offset":I
    :cond_6
    aput v2, v4, v1

    .line 2271
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2266
    .end local v1    # "i":I
    .end local v3    # "top":I
    :cond_7
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeAllViews()V

    goto :goto_2

    .restart local v1    # "i":I
    .restart local v3    # "top":I
    :cond_8
    move v4, v5

    .line 2272
    goto :goto_4

    .restart local v2    # "offset":I
    :cond_9
    move v4, v2

    .line 2273
    goto :goto_5

    .line 2277
    .end local v2    # "offset":I
    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPopulating:Z

    .line 2279
    iget-boolean v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->layoutChildren(Z)V

    .line 2280
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->fillDown(II)I

    .line 2281
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->fillUp(II)I

    .line 2282
    iput-boolean v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPopulating:Z

    .line 2283
    iput-boolean v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    .line 2285
    if-eqz p1, :cond_0

    .line 2286
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v4, :cond_0

    .line 2287
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    goto/16 :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2297
    return-void
.end method

.method private recycleAllViews()V
    .locals 3

    .prologue
    .line 2322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2323
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2326
    :cond_0
    iget-boolean v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    if-eqz v1, :cond_1

    .line 2327
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeAllViewsInLayout()V

    .line 2331
    :goto_1
    return-void

    .line 2329
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeAllViews()V

    goto :goto_1
.end method

.method private recycleOffscreenViews()V
    .locals 20

    .prologue
    .line 2339
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHeight()I

    move-result v12

    .line 2340
    .local v12, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v6, v0

    .line 2341
    .local v6, "clearAbove":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v17, v0

    add-int v7, v12, v17

    .line 2342
    .local v7, "clearBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v17

    add-int/lit8 v13, v17, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_0

    .line 2343
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2344
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v7, :cond_4

    .line 2359
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v17

    if-lez v17, :cond_1

    .line 2360
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2361
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    if-lt v0, v6, :cond_6

    .line 2377
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v5

    .line 2378
    .local v5, "childCount":I
    if-lez v5, :cond_b

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    const/high16 v18, -0x80000000

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 2383
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_9

    .line 2384
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2385
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 2386
    .local v14, "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 2387
    .local v16, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2388
    .local v3, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .line 2390
    .local v15, "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    iget v0, v14, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    iget v0, v14, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->span:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v10, v17, v18

    .line 2391
    .local v10, "colEnd":I
    iget v8, v14, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    .local v8, "col":I
    :goto_3
    if-ge v8, v10, :cond_8

    .line 2392
    iget v0, v14, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v17

    sub-int v11, v16, v17

    .line 2393
    .local v11, "colTop":I
    iget v0, v14, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v17

    add-int v9, v3, v17

    .line 2394
    .local v9, "colBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    .line 2395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aput v11, v17, v8

    .line 2397
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    move/from16 v0, v17

    if-le v9, v0, :cond_3

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    aput v9, v17, v8

    .line 2391
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2350
    .end local v3    # "bottom":I
    .end local v5    # "childCount":I
    .end local v8    # "col":I
    .end local v9    # "colBottom":I
    .end local v10    # "colEnd":I
    .end local v11    # "colTop":I
    .end local v14    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .end local v15    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .end local v16    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2351
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeViewsInLayout(II)V

    .line 2356
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2342
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_0

    .line 2353
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeViewAt(I)V

    goto :goto_4

    .line 2367
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 2368
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeViewsInLayout(II)V

    .line 2373
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    goto/16 :goto_1

    .line 2370
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeViewAt(I)V

    goto :goto_5

    .line 2383
    .restart local v3    # "bottom":I
    .restart local v5    # "childCount":I
    .restart local v8    # "col":I
    .restart local v10    # "colEnd":I
    .restart local v14    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .restart local v15    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .restart local v16    # "top":I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 2403
    .end local v3    # "bottom":I
    .end local v4    # "child":Landroid/view/View;
    .end local v8    # "col":I
    .end local v10    # "colEnd":I
    .end local v14    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .end local v15    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .end local v16    # "top":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "col":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v8

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v8

    .line 2403
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2411
    .end local v8    # "col":I
    :cond_b
    return-void
.end method

.method private resetStateForGridTop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2425
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 2426
    .local v0, "colCount":I
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 2427
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    .line 2428
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    .line 2430
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingTop()I

    move-result v1

    .line 2431
    .local v1, "top":I
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2432
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2435
    iput v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    .line 2436
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_2

    .line 2437
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 2439
    :cond_2
    return-void
.end method

.method private trackMotionScroll(IZ)Z
    .locals 11
    .param p1, "deltaY"    # I
    .param p2, "allowOverScroll"    # Z

    .prologue
    .line 2617
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->contentFits()Z

    move-result v2

    .line 2618
    .local v2, "contentFits":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2622
    .local v0, "allowOverhang":I
    if-nez v2, :cond_6

    .line 2625
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPopulating:Z

    .line 2626
    if-lez p1, :cond_4

    .line 2627
    iget v9, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->fillUp(II)I

    move-result v9

    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    add-int v7, v9, v10

    .line 2628
    .local v7, "overhang":I
    const/4 v8, 0x1

    .line 2633
    .local v8, "up":Z
    :goto_0
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2634
    .local v4, "movedBy":I
    if-eqz v8, :cond_5

    move v9, v4

    :goto_1
    invoke-virtual {p0, v9}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->offsetChildren(I)V

    .line 2635
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->recycleOffscreenViews()V

    .line 2636
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPopulating:Z

    .line 2637
    sub-int v6, v0, v7

    .line 2643
    .end local v7    # "overhang":I
    .end local v8    # "up":Z
    .local v6, "overScrolledBy":I
    :goto_2
    if-eqz p2, :cond_1

    .line 2644
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    .line 2646
    .local v5, "overScrollMode":I
    if-eqz v5, :cond_0

    const/4 v9, 0x1

    if-ne v5, v9, :cond_1

    if-nez v2, :cond_1

    .line 2647
    :cond_0
    if-lez v6, :cond_1

    .line 2648
    if-lez p1, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2649
    .local v3, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v3, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2650
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidate()V

    .line 2655
    .end local v3    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v5    # "overScrollMode":I
    :cond_1
    iget v9, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 2656
    iget v9, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    sub-int v1, v9, v10

    .line 2657
    .local v1, "childIndex":I
    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 2658
    const/4 v9, -0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 2664
    .end local v1    # "childIndex":I
    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    if-eqz v4, :cond_9

    :cond_3
    const/4 v9, 0x1

    :goto_5
    return v9

    .line 2630
    .end local v4    # "movedBy":I
    .end local v6    # "overScrolledBy":I
    :cond_4
    iget v9, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->fillDown(II)I

    move-result v9

    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    add-int v7, v9, v10

    .line 2631
    .restart local v7    # "overhang":I
    const/4 v8, 0x0

    .restart local v8    # "up":Z
    goto :goto_0

    .line 2634
    .restart local v4    # "movedBy":I
    :cond_5
    neg-int v9, v4

    goto :goto_1

    .line 2639
    .end local v4    # "movedBy":I
    .end local v7    # "overhang":I
    .end local v8    # "up":Z
    :cond_6
    move v6, v0

    .line 2640
    .restart local v6    # "overScrolledBy":I
    const/4 v4, 0x0

    .restart local v4    # "movedBy":I
    goto :goto_2

    .line 2648
    .restart local v5    # "overScrollMode":I
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_3

    .line 2661
    .end local v5    # "overScrollMode":I
    :cond_8
    iget-object v9, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_4

    .line 2664
    :cond_9
    const/4 v9, 0x0

    goto :goto_5
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2678
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2679
    return-void
.end method


# virtual methods
.method public beginFastChildLayout()V
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFastChildLayout:Z

    .line 850
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 854
    instance-of v0, p1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 877
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-virtual {v6}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 878
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-virtual {v6}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->getCurrY()I

    move-result v4

    .line 879
    .local v4, "y":I
    int-to-float v6, v4

    iget v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 880
    .local v0, "dy":I
    int-to-float v6, v4

    iput v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    .line 881
    invoke-direct {p0, v0, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x1

    .line 883
    .local v3, "stopped":Z
    :goto_0
    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-virtual {v6}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 884
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->postInvalidate()V

    .line 903
    .end local v0    # "dy":I
    .end local v3    # "stopped":Z
    .end local v4    # "y":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "dy":I
    .restart local v4    # "y":I
    :cond_1
    move v3, v5

    .line 881
    goto :goto_0

    .line 886
    .restart local v3    # "stopped":Z
    :cond_2
    if-eqz v3, :cond_4

    .line 887
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 888
    .local v2, "overScrollMode":I
    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    .line 890
    if-lez v0, :cond_5

    .line 891
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 895
    .local v1, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_2
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-virtual {v6}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 896
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->postInvalidate()V

    .line 898
    .end local v1    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_3
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-virtual {v6}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->abortAnimation()V

    .line 900
    .end local v2    # "overScrollMode":I
    :cond_4
    iput v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto :goto_1

    .line 893
    .restart local v2    # "overScrollMode":I
    :cond_5
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .restart local v1    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    goto :goto_2
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 937
    new-instance v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 943
    .local v0, "drawSelectorOnTop":Z
    if-nez v0, :cond_0

    .line 944
    invoke-direct {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 947
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 949
    if-eqz v0, :cond_1

    .line 950
    invoke-direct {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 952
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 978
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 980
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, "needsInvalidate":Z
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 983
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 984
    const/4 v0, 0x1

    .line 986
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 987
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 988
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWidth()I

    move-result v2

    .line 989
    .local v2, "width":I
    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 990
    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 991
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 992
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 993
    const/4 v0, 0x1

    .line 996
    .end local v1    # "restoreCount":I
    .end local v2    # "width":I
    :cond_1
    if-eqz v0, :cond_2

    .line 997
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidate()V

    .line 1002
    .end local v0    # "needsInvalidate":Z
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1006
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 1007
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->updateSelectorState()V

    .line 1008
    return-void
.end method

.method public endFastChildLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1019
    iput-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFastChildLayout:Z

    .line 1020
    invoke-direct {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->populate(Z)V

    .line 1021
    return-void
.end method

.method final fillDown(II)I
    .locals 34
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingLeft()I

    move-result v24

    .line 1035
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingRight()I

    move-result v25

    .line 1036
    .local v25, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    .line 1037
    .local v18, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWidth()I

    move-result v32

    sub-int v32, v32, v24

    sub-int v32, v32, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    mul-int v33, v33, v18

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    div-int v10, v32, v33

    .line 1038
    .local v10, "colWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHeight()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingBottom()I

    move-result v33

    sub-int v12, v32, v33

    .line 1039
    .local v12, "gridBottom":I
    add-int v11, v12, p2

    .line 1040
    .local v11, "fillTo":I
    invoke-virtual/range {p0 .. p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getNextColumnDown(I)I

    move-result v23

    .line 1041
    .local v23, "nextCol":I
    move/from16 v26, p1

    .line 1043
    .local v26, "position":I
    :cond_0
    :goto_0
    if-ltz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v23

    move/from16 v0, v32

    if-ge v0, v11, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 1045
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1047
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1051
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 1052
    .local v22, "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    if-nez v22, :cond_1

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->generateDefaultLayoutParams()Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    move-result-object v22

    .line 1054
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 1057
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 1058
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1064
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->span:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1065
    .local v28, "span":I
    mul-int v32, v10, v28

    add-int/lit8 v33, v28, -0x1

    mul-int v33, v33, v18

    add-int v30, v32, v33

    .line 1066
    .local v30, "widthSize":I
    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 1069
    .local v31, "widthSpec":I
    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-le v0, v1, :cond_9

    .line 1070
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getNextRecordDown(II)Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    move-result-object v27

    .line 1076
    .local v27, "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    :goto_2
    const/16 v17, 0x0

    .line 1077
    .local v17, "invalidateAfter":Z
    if-nez v27, :cond_a

    .line 1078
    new-instance v27, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    .line 1079
    .restart local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1080
    move/from16 v0, v23

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->column:I

    .line 1081
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1090
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mHasStableIds:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v15

    .line 1092
    .local v15, "id":J
    move-object/from16 v0, v27

    iput-wide v15, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->id:J

    .line 1093
    move-object/from16 v0, v22

    iput-wide v15, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->id:J

    .line 1096
    .end local v15    # "id":J
    :cond_4
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    .line 1099
    move-object/from16 v0, v22

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, -0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 1100
    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1104
    .local v13, "heightSpec":I
    :goto_4
    move/from16 v0, v31

    invoke-virtual {v4, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1106
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1107
    .local v6, "childHeight":I
    if-nez v17, :cond_5

    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v6, v0, :cond_6

    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v32, v0

    if-lez v32, :cond_6

    .line 1108
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1110
    :cond_6
    move-object/from16 v0, v27

    iput v6, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    .line 1113
    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v20, v32, v23

    .line 1115
    .local v20, "lowest":I
    add-int/lit8 v14, v23, 0x1

    .local v14, "i":I
    :goto_5
    add-int v32, v23, v28

    move/from16 v0, v32

    if-ge v14, v0, :cond_c

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v3, v32, v14

    .line 1117
    .local v3, "bottom":I
    move/from16 v0, v20

    if-le v3, v0, :cond_7

    .line 1118
    move/from16 v20, v3

    .line 1115
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1060
    .end local v3    # "bottom":I
    .end local v6    # "childHeight":I
    .end local v13    # "heightSpec":I
    .end local v14    # "i":I
    .end local v17    # "invalidateAfter":Z
    .end local v20    # "lowest":I
    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .end local v28    # "span":I
    .end local v30    # "widthSize":I
    .end local v31    # "widthSpec":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1073
    .restart local v28    # "span":I
    .restart local v30    # "widthSize":I
    .restart local v31    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .restart local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    goto/16 :goto_2

    .line 1082
    .restart local v17    # "invalidateAfter":Z
    :cond_a
    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v32, v0

    move/from16 v0, v28

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    .line 1083
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1084
    move/from16 v0, v23

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->column:I

    .line 1085
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 1102
    :cond_b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->height:I

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "heightSpec":I
    goto/16 :goto_4

    .line 1121
    .restart local v6    # "childHeight":I
    .restart local v14    # "i":I
    .restart local v20    # "lowest":I
    :cond_c
    move/from16 v29, v20

    .line 1126
    .end local v14    # "i":I
    .end local v20    # "lowest":I
    .local v29, "startFrom":I
    :goto_6
    add-int v9, v29, v18

    .line 1127
    .local v9, "childTop":I
    add-int v5, v9, v6

    .line 1128
    .local v5, "childBottom":I
    add-int v32, v10, v18

    mul-int v32, v32, v23

    add-int v7, v24, v32

    .line 1129
    .local v7, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v8, v7, v32

    .line 1130
    .local v8, "childRight":I
    invoke-virtual {v4, v7, v9, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_d
    :goto_7
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_f

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 1138
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 1139
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1123
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "startFrom":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v29, v32, v23

    .restart local v29    # "startFrom":I
    goto :goto_6

    .line 1143
    .restart local v5    # "childBottom":I
    .restart local v7    # "childLeft":I
    .restart local v8    # "childRight":I
    .restart local v9    # "childTop":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_10
    move/from16 v14, v23

    .restart local v14    # "i":I
    :goto_8
    add-int v32, v23, v28

    move/from16 v0, v32

    if-ge v14, v0, :cond_11

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    sub-int v33, v14, v23

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v33

    add-int v33, v33, v5

    aput v33, v32, v14

    .line 1147
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1151
    :cond_11
    add-int/lit8 v26, v26, 0x1

    .line 1152
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getNextColumnDown(I)I

    move-result v23

    .line 1153
    goto/16 :goto_0

    .line 1155
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childBottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v13    # "heightSpec":I
    .end local v14    # "i":I
    .end local v17    # "invalidateAfter":Z
    .end local v22    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .end local v28    # "span":I
    .end local v29    # "startFrom":I
    .end local v30    # "widthSize":I
    .end local v31    # "widthSpec":I
    :cond_12
    const/16 v21, 0x0

    .line 1156
    .local v21, "lowestView":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_14

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v14

    move/from16 v0, v32

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v21, v32, v14

    .line 1156
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1161
    :cond_14
    sub-int v32, v21, v12

    return v32
.end method

.method final fillUp(II)I
    .locals 35
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1175
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingLeft()I

    move-result v23

    .line 1176
    .local v23, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingRight()I

    move-result v24

    .line 1177
    .local v24, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    .line 1178
    .local v19, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWidth()I

    move-result v33

    sub-int v33, v33, v23

    sub-int v33, v33, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    mul-int v34, v34, v19

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    div-int v9, v33, v34

    .line 1179
    .local v9, "colWidth":I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColWidth:I

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingTop()I

    move-result v11

    .line 1181
    .local v11, "gridTop":I
    sub-int v10, v11, p2

    .line 1182
    .local v10, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getNextColumnUp()I

    move-result v22

    .line 1183
    .local v22, "nextCol":I
    move/from16 v25, p1

    .local v25, "position":I
    move/from16 v26, v25

    .line 1185
    .end local v25    # "position":I
    .local v26, "position":I
    :cond_0
    :goto_0
    if-ltz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v33, v33, v22

    move/from16 v0, v33

    if-le v0, v10, :cond_11

    if-ltz v26, :cond_11

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 1189
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_1

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1191
    move/from16 v22, v15

    .line 1199
    .end local v15    # "i":I
    :cond_1
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1201
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1205
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 1207
    .local v21, "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    if-nez v21, :cond_2

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->generateDefaultLayoutParams()Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    move-result-object v21

    .line 1209
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    .line 1213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    move/from16 v33, v0

    if-eqz v33, :cond_a

    .line 1214
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1220
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->span:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1221
    .local v28, "span":I
    mul-int v33, v9, v28

    add-int/lit8 v34, v28, -0x1

    mul-int v34, v34, v19

    add-int v31, v33, v34

    .line 1222
    .local v31, "widthSize":I
    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    .line 1225
    .local v32, "widthSpec":I
    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-le v0, v1, :cond_b

    .line 1226
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getNextRecordUp(II)Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    move-result-object v27

    .line 1232
    .local v27, "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    :goto_3
    const/16 v18, 0x0

    .line 1233
    .local v18, "invalidateBefore":Z
    if-nez v27, :cond_c

    .line 1234
    new-instance v27, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    .line 1235
    .restart local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1236
    move/from16 v0, v22

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->column:I

    .line 1237
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1246
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mHasStableIds:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    .line 1248
    .local v16, "id":J
    move-wide/from16 v0, v16

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->id:J

    .line 1249
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->id:J

    .line 1252
    .end local v16    # "id":J
    :cond_5
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    .line 1255
    move-object/from16 v0, v21

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->height:I

    move/from16 v33, v0

    const/16 v34, -0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    .line 1256
    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1260
    .local v12, "heightSpec":I
    :goto_5
    move/from16 v0, v32

    invoke-virtual {v3, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1262
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1263
    .local v5, "childHeight":I
    if-nez v18, :cond_6

    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v5, v0, :cond_7

    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v33, v0

    if-lez v33, :cond_7

    .line 1264
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1266
    :cond_7
    move-object/from16 v0, v27

    iput v5, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v20, v33, v22

    .line 1271
    .local v20, "itemTop":I
    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-le v0, v1, :cond_f

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v13, v33, v22

    .line 1273
    .local v13, "highest":I
    add-int/lit8 v15, v22, 0x1

    .restart local v15    # "i":I
    :goto_6
    add-int v33, v22, v28

    move/from16 v0, v33

    if-ge v15, v0, :cond_e

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v30, v33, v15

    .line 1275
    .local v30, "top":I
    move/from16 v0, v30

    if-ge v0, v13, :cond_8

    .line 1276
    move/from16 v13, v30

    .line 1273
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1189
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v12    # "heightSpec":I
    .end local v13    # "highest":I
    .end local v18    # "invalidateBefore":Z
    .end local v20    # "itemTop":I
    .end local v21    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .end local v28    # "span":I
    .end local v30    # "top":I
    .end local v31    # "widthSize":I
    .end local v32    # "widthSpec":I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1216
    .end local v15    # "i":I
    .restart local v3    # "child":Landroid/view/View;
    .restart local v21    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    :cond_a
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1229
    .restart local v28    # "span":I
    .restart local v31    # "widthSize":I
    .restart local v32    # "widthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .restart local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    goto/16 :goto_3

    .line 1238
    .restart local v18    # "invalidateBefore":Z
    :cond_c
    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v33, v0

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 1239
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1240
    move/from16 v0, v22

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->column:I

    .line 1241
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 1258
    :cond_d
    move-object/from16 v0, v21

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->height:I

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12    # "heightSpec":I
    goto/16 :goto_5

    .line 1279
    .restart local v5    # "childHeight":I
    .restart local v13    # "highest":I
    .restart local v15    # "i":I
    .restart local v20    # "itemTop":I
    :cond_e
    move/from16 v29, v13

    .line 1284
    .end local v13    # "highest":I
    .end local v15    # "i":I
    .local v29, "startFrom":I
    :goto_7
    move/from16 v4, v29

    .line 1285
    .local v4, "childBottom":I
    sub-int v8, v4, v5

    .line 1286
    .local v8, "childTop":I
    add-int v33, v9, v19

    mul-int v33, v33, v22

    add-int v6, v23, v33

    .line 1287
    .local v6, "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    add-int v7, v6, v33

    .line 1296
    .local v7, "childRight":I
    invoke-virtual {v3, v6, v8, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1298
    move/from16 v15, v22

    .restart local v15    # "i":I
    :goto_8
    add-int v33, v22, v28

    move/from16 v0, v33

    if-ge v15, v0, :cond_10

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    sub-int v34, v15, v22

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v34

    sub-int v34, v8, v34

    sub-int v34, v34, v19

    aput v34, v33, v15

    .line 1298
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1281
    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v15    # "i":I
    .end local v29    # "startFrom":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v29, v33, v22

    .restart local v29    # "startFrom":I
    goto :goto_7

    .line 1302
    .restart local v4    # "childBottom":I
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    .restart local v8    # "childTop":I
    .restart local v15    # "i":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getNextColumnUp()I

    move-result v22

    .line 1303
    add-int/lit8 v25, v26, -0x1

    .end local v26    # "position":I
    .restart local v25    # "position":I
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    move/from16 v26, v25

    .line 1304
    .end local v25    # "position":I
    .restart local v26    # "position":I
    goto/16 :goto_0

    .line 1306
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v5    # "childHeight":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v12    # "heightSpec":I
    .end local v15    # "i":I
    .end local v18    # "invalidateBefore":Z
    .end local v20    # "itemTop":I
    .end local v21    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .end local v28    # "span":I
    .end local v29    # "startFrom":I
    .end local v31    # "widthSize":I
    .end local v32    # "widthSpec":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHeight()I

    move-result v14

    .line 1308
    .local v14, "highestView":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v15, v0, :cond_12

    .line 1309
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getFirstChildAtColumn(I)Landroid/view/View;

    move-result-object v3

    .line 1311
    .restart local v3    # "child":Landroid/view/View;
    if-nez v3, :cond_13

    .line 1312
    const/4 v14, 0x0

    .line 1325
    .end local v3    # "child":Landroid/view/View;
    :cond_12
    sub-int v33, v11, v14

    return v33

    .line 1315
    .restart local v3    # "child":Landroid/view/View;
    :cond_13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 1316
    .restart local v21    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->span:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    add-int v15, v15, v33

    .line 1318
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v30

    .line 1320
    .restart local v30    # "top":I
    move/from16 v0, v30

    if-ge v0, v14, :cond_14

    .line 1321
    move/from16 v14, v30

    .line 1308
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto :goto_9
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->generateDefaultLayoutParams()Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .locals 2

    .prologue
    .line 1330
    new-instance v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1335
    new-instance v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1340
    new-instance v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 1390
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method final getNextColumnDown(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1398
    const/4 v3, -0x1

    .line 1399
    .local v3, "result":I
    const v4, 0x7fffffff

    .line 1401
    .local v4, "topMost":I
    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 1403
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1404
    iget-object v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    aget v0, v5, v2

    .line 1405
    .local v0, "bottom":I
    if-ge v0, v4, :cond_0

    .line 1406
    move v4, v0

    .line 1407
    move v3, v2

    .line 1403
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1411
    .end local v0    # "bottom":I
    :cond_1
    return v3
.end method

.method final getNextColumnUp()I
    .locals 6

    .prologue
    .line 1419
    const/4 v3, -0x1

    .line 1420
    .local v3, "result":I
    const/high16 v0, -0x80000000

    .line 1422
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 1423
    .local v1, "colCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1424
    iget-object v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    aget v4, v5, v2

    .line 1425
    .local v4, "top":I
    if-le v4, v0, :cond_0

    .line 1426
    move v0, v4

    .line 1427
    move v3, v2

    .line 1423
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1430
    .end local v4    # "top":I
    :cond_1
    return v3
.end method

.method final getNextRecordDown(II)Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    .line 1434
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .line 1435
    .local v4, "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 1436
    new-instance v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    .line 1437
    .restart local v4    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1438
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1446
    :cond_0
    const/4 v6, -0x1

    .line 1447
    .local v6, "targetCol":I
    const v7, 0x7fffffff

    .line 1449
    .local v7, "topMost":I
    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 1450
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v8, v1, p2

    if-gt v2, v8, :cond_5

    .line 1451
    const/high16 v0, -0x80000000

    .line 1452
    .local v0, "bottom":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 1453
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    aget v5, v8, v3

    .line 1454
    .local v5, "singleBottom":I
    if-le v5, v0, :cond_1

    .line 1455
    move v0, v5

    .line 1452
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1439
    .end local v0    # "bottom":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleBottom":I
    .end local v6    # "targetCol":I
    .end local v7    # "topMost":I
    :cond_2
    iget v8, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 1440
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1458
    .restart local v0    # "bottom":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "topMost":I
    :cond_3
    if-ge v0, v7, :cond_4

    .line 1459
    move v7, v0

    .line 1460
    move v6, v2

    .line 1450
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    .end local v0    # "bottom":I
    .end local v3    # "j":I
    :cond_5
    iput v6, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->column:I

    .line 1466
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 1467
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int v8, v7, v8

    invoke-virtual {v4, v2, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    .line 1466
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1470
    :cond_6
    return-object v4
.end method

.method final getNextRecordUp(II)Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    .line 1481
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .line 1482
    .local v4, "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 1483
    new-instance v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    .line 1484
    .restart local v4    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1485
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1493
    :cond_0
    const/4 v6, -0x1

    .line 1494
    .local v6, "targetCol":I
    const/high16 v0, -0x80000000

    .line 1496
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 1497
    .local v1, "colCount":I
    sub-int v2, v1, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1498
    const v7, 0x7fffffff

    .line 1499
    .local v7, "top":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 1500
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    aget v5, v8, v3

    .line 1501
    .local v5, "singleTop":I
    if-ge v5, v7, :cond_1

    .line 1502
    move v7, v5

    .line 1499
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1486
    .end local v0    # "bottomMost":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleTop":I
    .end local v6    # "targetCol":I
    .end local v7    # "top":I
    :cond_2
    iget v8, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 1487
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1505
    .restart local v0    # "bottomMost":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "top":I
    :cond_3
    if-le v7, v0, :cond_4

    .line 1506
    move v0, v7

    .line 1507
    move v6, v2

    .line 1497
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1511
    .end local v3    # "j":I
    .end local v7    # "top":I
    :cond_5
    iput v6, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->column:I

    .line 1513
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 1514
    iget-object v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int/2addr v8, v0

    invoke-virtual {v4, v2, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1517
    :cond_6
    return-object v4
.end method

.method public final getOnItemClickListener()Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemLongClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hideSelector()V
    .locals 2

    .prologue
    .line 1552
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1555
    :cond_0
    return-void
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1559
    .local v0, "beginAt":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1560
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1562
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1563
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 1564
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1567
    const/4 v0, 0x0

    .line 1568
    .local v0, "endAt":I
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 1569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1571
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 1572
    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .locals 1

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1581
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 1582
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1585
    :cond_0
    return-void
.end method

.method final layoutChildren(Z)V
    .locals 33
    .param p1, "queryAdapter"    # Z

    .prologue
    .line 1594
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingLeft()I

    move-result v22

    .line 1595
    .local v22, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingRight()I

    move-result v23

    .line 1596
    .local v23, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v16, v0

    .line 1597
    .local v16, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWidth()I

    move-result v31

    sub-int v31, v31, v22

    sub-int v31, v31, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    mul-int v32, v32, v16

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    div-int v13, v31, v32

    .line 1598
    .local v13, "colWidth":I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColWidth:I

    .line 1599
    const/16 v26, -0x1

    .line 1600
    .local v26, "rebuildLayoutRecordsBefore":I
    const/16 v25, -0x1

    .line 1602
    .local v25, "rebuildLayoutRecordsAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v31, v0

    const/high16 v32, -0x80000000

    invoke-static/range {v31 .. v32}, Ljava/util/Arrays;->fill([II)V

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v7

    .line 1605
    .local v7, "childCount":I
    const/4 v3, 0x0

    .line 1607
    .local v3, "amountRemoved":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v7, :cond_f

    .line 1608
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1609
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 1610
    .local v19, "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v19

    iget v12, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    .line 1611
    .local v12, "col":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    move/from16 v31, v0

    add-int v24, v31, v15

    .line 1612
    .local v24, "position":I
    if-nez p1, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v31

    if-eqz v31, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 1614
    .local v20, "needsLayout":Z
    :goto_1
    if-eqz p1, :cond_6

    .line 1616
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v21

    .line 1617
    .local v21, "newView":Landroid/view/View;
    if-nez v21, :cond_4

    .line 1619
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeViewAt(I)V

    .line 1620
    add-int/lit8 v31, v15, -0x1

    if-ltz v31, :cond_1

    .line 1621
    add-int/lit8 v31, v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1623
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1607
    .end local v21    # "newView":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1612
    .end local v20    # "needsLayout":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 1625
    .restart local v20    # "needsLayout":Z
    .restart local v21    # "newView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, v21

    if-eq v0, v5, :cond_5

    .line 1626
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeViewAt(I)V

    .line 1627
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->addView(Landroid/view/View;I)V

    .line 1628
    move-object/from16 v5, v21

    .line 1630
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    check-cast v19, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 1633
    .end local v21    # "newView":Landroid/view/View;
    .restart local v19    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->span:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1634
    .local v28, "span":I
    mul-int v31, v13, v28

    add-int/lit8 v32, v28, -0x1

    mul-int v32, v32, v16

    add-int v29, v31, v32

    .line 1636
    .local v29, "widthSize":I
    if-eqz v20, :cond_7

    .line 1637
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 1640
    .local v30, "widthSpec":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->height:I

    move/from16 v31, v0

    const/16 v32, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 1641
    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1646
    .local v14, "heightSpec":I
    :goto_3
    move/from16 v0, v30

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 1649
    .end local v14    # "heightSpec":I
    .end local v30    # "widthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v31, v0

    aget v31, v31, v12

    const/high16 v32, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v31, v0

    aget v31, v31, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v32, v0

    add-int v11, v31, v32

    .line 1652
    .local v11, "childTop":I
    :goto_4
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 1653
    move/from16 v18, v11

    .line 1654
    .local v18, "lowest":I
    add-int/lit8 v17, v12, 0x1

    .local v17, "j":I
    :goto_5
    add-int v31, v12, v28

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v31, v0

    aget v31, v31, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    move/from16 v32, v0

    add-int v4, v31, v32

    .line 1656
    .local v4, "bottom":I
    move/from16 v0, v18

    if-le v4, v0, :cond_8

    .line 1657
    move/from16 v18, v4

    .line 1654
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1643
    .end local v4    # "bottom":I
    .end local v11    # "childTop":I
    .end local v17    # "j":I
    .end local v18    # "lowest":I
    .restart local v30    # "widthSpec":I
    :cond_9
    move-object/from16 v0, v19

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->height:I

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightSpec":I
    goto :goto_3

    .line 1650
    .end local v14    # "heightSpec":I
    .end local v30    # "widthSpec":I
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_4

    .line 1660
    .restart local v11    # "childTop":I
    .restart local v17    # "j":I
    .restart local v18    # "lowest":I
    :cond_b
    move/from16 v11, v18

    .line 1662
    .end local v17    # "j":I
    .end local v18    # "lowest":I
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1663
    .local v8, "childHeight":I
    add-int v6, v11, v8

    .line 1664
    .local v6, "childBottom":I
    add-int v31, v13, v16

    mul-int v31, v31, v12

    add-int v9, v22, v31

    .line 1665
    .local v9, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v10, v9, v31

    .line 1666
    .local v10, "childRight":I
    invoke-virtual {v5, v9, v11, v10, v6}, Landroid/view/View;->layout(IIII)V

    .line 1668
    move/from16 v17, v12

    .restart local v17    # "j":I
    :goto_6
    add-int v31, v12, v28

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v31, v0

    aput v6, v31, v17

    .line 1668
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1672
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .line 1673
    .local v27, "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    if-eqz v27, :cond_e

    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v8, :cond_e

    .line 1675
    move-object/from16 v0, v27

    iput v8, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    .line 1676
    move/from16 v26, v24

    .line 1679
    :cond_e
    if-eqz v27, :cond_2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 1681
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1682
    move/from16 v25, v24

    goto/16 :goto_2

    .line 1687
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v8    # "childHeight":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    .end local v12    # "col":I
    .end local v17    # "j":I
    .end local v19    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .end local v20    # "needsLayout":Z
    .end local v24    # "position":I
    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    .end local v28    # "span":I
    .end local v29    # "widthSize":I
    :cond_f
    const/4 v15, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v15, v0, :cond_11

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v31, v0

    aget v31, v31, v15

    const/high16 v32, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    move-object/from16 v32, v0

    aget v32, v32, v15

    aput v32, v31, v15

    .line 1687
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1693
    :cond_11
    if-gez v26, :cond_12

    if-ltz v25, :cond_16

    .line 1694
    :cond_12
    if-ltz v26, :cond_13

    .line 1695
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1697
    :cond_13
    if-ltz v25, :cond_14

    .line 1698
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1700
    :cond_14
    const/4 v15, 0x0

    :goto_8
    sub-int v31, v7, v3

    move/from16 v0, v31

    if-ge v15, v0, :cond_16

    .line 1701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    move/from16 v31, v0

    add-int v24, v31, v15

    .line 1702
    .restart local v24    # "position":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1703
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 1704
    .restart local v19    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .line 1705
    .restart local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    if-nez v27, :cond_15

    .line 1706
    new-instance v27, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;

    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    const/16 v31, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    .line 1707
    .restart local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1709
    :cond_15
    move-object/from16 v0, v19

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->column:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->column:I

    .line 1710
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->height:I

    .line 1711
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->id:J

    .line 1712
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->span:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;->span:I

    .line 1700
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1716
    .end local v5    # "child":Landroid/view/View;
    .end local v19    # "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    .end local v24    # "position":I
    .end local v27    # "rec":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutRecord;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_18

    .line 1717
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1718
    .restart local v5    # "child":Landroid/view/View;
    if-eqz v5, :cond_17

    .line 1719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1729
    .end local v5    # "child":Landroid/view/View;
    :cond_17
    :goto_9
    return-void

    .line 1721
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_19

    .line 1722
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1723
    .restart local v5    # "child":Landroid/view/View;
    if-eqz v5, :cond_17

    .line 1724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_9

    .line 1727
    .end local v5    # "child":Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_9
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "optScrap"    # Landroid/view/View;

    .prologue
    .line 1742
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    invoke-virtual {v6, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v5

    .line 1743
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 1780
    :goto_0
    return-object v6

    .line 1747
    :cond_0
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 1748
    const/4 v5, 0x0

    .line 1749
    const/4 v6, 0x0

    goto :goto_0

    .line 1753
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    iget v1, v6, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->viewType:I

    .line 1755
    .local v1, "optType":I
    :goto_1
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1756
    .local v2, "positionViewType":I
    if-ne v1, v2, :cond_5

    move-object v3, p2

    .line 1759
    .local v3, "scrap":Landroid/view/View;
    :goto_2
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1761
    if-eq v5, v3, :cond_2

    if-eqz v3, :cond_2

    .line 1763
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    invoke-virtual {v6, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1766
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1768
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eq v6, p0, :cond_3

    .line 1769
    if-nez v0, :cond_6

    .line 1770
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->generateDefaultLayoutParams()Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    move-result-object v0

    :cond_3
    :goto_3
    move-object v4, v0

    .line 1776
    check-cast v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 1777
    .local v4, "sglp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    iput p1, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->position:I

    .line 1778
    iput v2, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->viewType:I

    move-object v6, v5

    .line 1780
    goto :goto_0

    .line 1753
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "optType":I
    .end local v2    # "positionViewType":I
    .end local v3    # "scrap":Landroid/view/View;
    .end local v4    # "sglp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    .line 1756
    .restart local v1    # "optType":I
    .restart local v2    # "positionViewType":I
    :cond_5
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    .line 1757
    invoke-virtual {v6, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 1771
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "scrap":Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1772
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    move-result-object v0

    goto :goto_3
.end method

.method final offsetChildren(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 1785
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1786
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1787
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1788
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p1

    .line 1789
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    .line 1790
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, p1

    .line 1787
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1785
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1793
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 1794
    .local v2, "colCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1795
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1796
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1794
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1798
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 1803
    iget-boolean v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1805
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1830
    :cond_0
    :goto_0
    return-object v3

    .line 1811
    :cond_1
    sget-object v4, Lcom/liquable/nemo/staggerd/StaggeredGridView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1816
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1817
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 1818
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 1819
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1820
    move v0, v2

    .line 1826
    :cond_2
    if-ltz v0, :cond_0

    .line 1827
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1818
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1835
    iget-object v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 1837
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v5, v6

    .line 1871
    :goto_0
    return v5

    .line 1839
    :pswitch_1
    iget-object v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 1840
    iget-object v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-virtual {v7}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->abortAnimation()V

    .line 1841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    .line 1842
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mActivePointerId:I

    .line 1843
    const/4 v7, 0x0

    iput v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchRemainderY:F

    .line 1844
    iget v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1846
    iput v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    .line 1852
    :pswitch_2
    iget v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mActivePointerId:I

    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 1853
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 1854
    const-string/jumbo v5, "StaggeredGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "event stream?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1857
    goto :goto_0

    .line 1859
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1860
    .local v4, "y":F
    iget v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchRemainderY:F

    add-float v2, v7, v8

    .line 1861
    .local v2, "dy":F
    float-to-int v1, v2

    .line 1862
    .local v1, "deltaY":I
    int-to-float v7, v1

    sub-float v7, v2, v7

    iput v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchRemainderY:F

    .line 1864
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 1865
    iput v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    .line 1837
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

    .line 1876
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    .line 1877
    invoke-direct {p0, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->populate(Z)V

    .line 1878
    iput-boolean v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mInLayout:Z

    .line 1880
    sub-int v1, p4, p2

    .line 1881
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 1882
    .local v0, "height":I
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1883
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1884
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1889
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1890
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1891
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1892
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1894
    .local v2, "heightSize":I
    if-eq v3, v5, :cond_0

    .line 1895
    const/high16 v3, 0x40000000    # 2.0f

    .line 1897
    :cond_0
    if-eq v1, v5, :cond_1

    .line 1898
    const/high16 v1, 0x40000000    # 2.0f

    .line 1901
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setMeasuredDimension(II)V

    .line 1903
    iget v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCountSetting:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1904
    iget v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v5

    .line 1905
    .local v0, "colCount":I
    iget v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-eq v0, v5, :cond_2

    .line 1906
    iput v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 1909
    .end local v0    # "colCount":I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1913
    move-object v2, p1

    check-cast v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;

    .line 1914
    .local v2, "ss":Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;
    invoke-virtual {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1915
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    .line 1916
    iget v3, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->position:I

    iput v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    .line 1917
    iget-object v3, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->topOffsets:[I

    iput-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I

    .line 1919
    iget-object v1, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 1921
    .local v1, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;>;"
    if-eqz v1, :cond_0

    .line 1922
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1923
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;

    .line 1924
    .local v0, "colMap":Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;->access$2500(Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1928
    .end local v0    # "colMap":Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;
    :cond_0
    iget-wide v3, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->firstId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 1929
    iget-wide v3, v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->firstId:J

    iput-wide v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstAdapterId:J

    .line 1930
    const/4 v3, -0x1

    iput v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    .line 1933
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->requestLayout()V

    .line 1934
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 1938
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .line 1939
    .local v8, "superState":Landroid/os/Parcelable;
    new-instance v7, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;

    invoke-direct {v7, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1940
    .local v7, "ss":Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;
    iget v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    .line 1941
    .local v6, "position":I
    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    iput v10, v7, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->position:I

    .line 1943
    if-ltz v6, :cond_0

    iget-object v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 1944
    iget-object v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->firstId:J

    .line 1947
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_5

    .line 1949
    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    new-array v9, v10, [I

    .line 1951
    .local v9, "topOffsets":[I
    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColWidth:I

    if-lez v10, :cond_3

    .line 1952
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-ge v4, v10, :cond_3

    .line 1953
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1954
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1955
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1956
    .local v5, "left":I
    const/4 v1, 0x0

    .line 1957
    .local v1, "col":I
    const-string/jumbo v10, "mColWidth"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :goto_1
    iget v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColWidth:I

    iget v11, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    mul-int/2addr v10, v1

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    if-le v5, v10, :cond_1

    .line 1961
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1964
    :cond_1
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    aput v10, v9, v1

    .line 1952
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "col":I
    .end local v5    # "left":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1970
    .end local v4    # "i":I
    :cond_3
    iput-object v9, v7, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->topOffsets:[I

    .line 1973
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1974
    .local v3, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;>;"
    iget-object v10, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1975
    .local v2, "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;

    invoke-direct {v11, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1978
    .end local v2    # "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    iput-object v3, v7, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 1980
    .end local v3    # "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/staggerd/StaggeredGridView$ColMap;>;"
    .end local v9    # "topOffsets":[I
    :cond_5
    return-object v7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1986
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v11, v2, 0xff

    .line 1988
    .local v11, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->pointToPosition(II)I

    move-result v20

    .line 1990
    .local v20, "motionPosition":I
    packed-switch v11, :pswitch_data_0

    .line 2168
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1993
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    invoke-virtual {v2}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->abortAnimation()V

    .line 1995
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    .line 1996
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchX:F

    .line 1997
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->pointToPosition(II)I

    move-result v20

    .line 1998
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mActivePointerId:I

    .line 1999
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchRemainderY:F

    .line 2001
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_1

    if-ltz v20, :cond_1

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2004
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    .line 2006
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBeginClick:Z

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 2009
    new-instance v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2012
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2015
    :cond_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    .line 2016
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidate()V

    goto/16 :goto_0

    .line 2021
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v19

    .line 2022
    .local v19, "index":I
    if-gez v19, :cond_2

    .line 2023
    const-string/jumbo v2, "StaggeredGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "event stream?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2028
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 2029
    .local v26, "y":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    sub-float v2, v26, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchRemainderY:F

    add-float v15, v2, v3

    .line 2030
    .local v15, "dy":F
    float-to-int v14, v15

    .line 2031
    .local v14, "deltaY":I
    int-to-float v2, v14

    sub-float v2, v15, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchRemainderY:F

    .line 2033
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 2034
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    .line 2037
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2038
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    .line 2040
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 2046
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    .line 2051
    .end local v14    # "deltaY":I
    .end local v15    # "dy":F
    .end local v19    # "index":I
    .end local v26    # "y":F
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->updateSelectorState()V

    .line 2053
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setPressed(Z)V

    .line 2054
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2055
    .local v21, "motionView":Landroid/view/View;
    if-eqz v21, :cond_5

    .line 2056
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2058
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 2059
    .local v16, "handler":Landroid/os/Handler;
    if-eqz v16, :cond_6

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2063
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_7

    .line 2064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2068
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_0

    .line 2072
    .end local v16    # "handler":Landroid/os/Handler;
    .end local v21    # "motionView":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v24

    .line 2075
    .local v24, "velocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    move/from16 v23, v0

    .line 2077
    .local v23, "prevTouchMode":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 2078
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mScroller:Lcom/liquable/nemo/staggerd/ScrollerCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v24

    float-to-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Lcom/liquable/nemo/staggerd/ScrollerCompat;->fling(IIIIIIII)V

    .line 2080
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLastTouchY:F

    .line 2081
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidate()V

    .line 2086
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2088
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    .line 2093
    :goto_3
    packed-switch v23, :pswitch_data_1

    .line 2162
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBeginClick:Z

    .line 2164
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    .line 2083
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto :goto_2

    .line 2090
    :cond_9
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    .line 2097
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    sub-int v2, v20, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2098
    .local v12, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    .line 2099
    .local v25, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v25, v2

    if-lez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v25, v2

    if-gez v2, :cond_10

    const/16 v18, 0x1

    .line 2100
    .local v18, "inList":Z
    :goto_5
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v18, :cond_14

    .line 2101
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    .line 2102
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2105
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPerformClick:Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;

    if-nez v2, :cond_b

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->invalidate()V

    .line 2107
    new-instance v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPerformClick:Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;

    .line 2110
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPerformClick:Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;

    move-object/from16 v22, v0

    .line 2111
    .local v22, "performClick":Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 2112
    invoke-virtual/range {v22 .. v22}, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->rememberWindowAttachCount()V

    .line 2114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    .line 2115
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 2116
    .local v17, "handlerTouch":Landroid/os/Handler;
    if-eqz v17, :cond_d

    .line 2117
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2121
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2122
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    .line 2124
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->layoutChildren(Z)V

    .line 2125
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 2127
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setPressed(Z)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 2129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 2130
    .local v13, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_e

    instance-of v2, v13, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_e

    .line 2131
    check-cast v13, Landroid/graphics/drawable/TransitionDrawable;

    .end local v13    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2134
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_f

    .line 2135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2137
    :cond_f
    new-instance v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v2, v0, v12, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Landroid/view/View;Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 2148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2153
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2099
    .end local v17    # "handlerTouch":Landroid/os/Handler;
    .end local v18    # "inList":Z
    .end local v22    # "performClick":Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 2117
    .restart local v17    # "handlerTouch":Landroid/os/Handler;
    .restart local v18    # "inList":Z
    .restart local v22    # "performClick":Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    goto/16 :goto_6

    .line 2151
    :cond_12
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto :goto_7

    .line 2154
    .end local v17    # "handlerTouch":Landroid/os/Handler;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2155
    invoke-virtual/range {v22 .. v22}, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->run()V

    .line 2159
    .end local v22    # "performClick":Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;
    :cond_14
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_4

    .line 1990
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2093
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2172
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 2173
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->playSoundEffect(I)V

    .line 2174
    if-eqz p1, :cond_0

    .line 2175
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2177
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;->onItemClick(Lcom/liquable/nemo/staggerd/StaggeredGridView;Landroid/view/View;IJ)V

    move v0, v6

    .line 2181
    :cond_1
    return v0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 2188
    const/4 v6, 0x0

    .line 2189
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemLongClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2190
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemLongClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;->onItemLongClick(Lcom/liquable/nemo/staggerd/StaggeredGridView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2195
    :cond_0
    if-nez v6, :cond_1

    .line 2196
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2197
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2199
    :cond_1
    if-eqz v6, :cond_2

    .line 2200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->performHapticFeedback(I)Z

    .line 2202
    :cond_2
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2216
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2217
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2218
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2219
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2222
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 2223
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 2224
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2225
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2226
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2227
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2228
    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2232
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 2223
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2232
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2300
    if-eq p1, v6, :cond_0

    .line 2301
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorPosition:I

    .line 2304
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2305
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2306
    instance-of v2, p2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2307
    check-cast v2, Lcom/liquable/nemo/staggerd/StaggeredGridView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2310
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->positionSelector(IIII)V

    .line 2312
    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 2313
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2314
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 2315
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2316
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->refreshDrawableState()V

    .line 2319
    :cond_2
    return-void

    .line 2314
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2415
    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFastChildLayout:Z

    if-nez v0, :cond_0

    .line 2416
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2418
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2442
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mObserver:Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2447
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->clearAllState()V

    .line 2448
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2449
    iput-boolean v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z

    .line 2451
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I

    .line 2453
    if-eqz p1, :cond_3

    .line 2454
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mObserver:Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2455
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    .line 2456
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mHasStableIds:Z

    .line 2460
    :goto_1
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->populate(Z)V

    .line 2461
    return-void

    :cond_2
    move v0, v1

    .line 2451
    goto :goto_0

    .line 2458
    :cond_3
    iput-boolean v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mHasStableIds:Z

    goto :goto_1
.end method

.method public setColumnCount(I)V
    .locals 4
    .param p1, "colCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2473
    if-ge p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 2474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Column count must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2476
    :cond_0
    iget v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    if-eq p1, v2, :cond_2

    .line 2477
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I

    .line 2478
    if-eqz v0, :cond_1

    .line 2479
    invoke-direct {p0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->populate(Z)V

    .line 2481
    :cond_1
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_2
    move v0, v1

    .line 2476
    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "mDrawSelectorOnTop"    # Z

    .prologue
    .line 2484
    iput-boolean p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 2485
    return-void
.end method

.method public setItemMargin(I)V
    .locals 3
    .param p1, "marginPixels"    # I

    .prologue
    const/4 v1, 0x0

    .line 2495
    iget v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    if-eq p1, v2, :cond_1

    const/4 v0, 0x1

    .line 2496
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemMargin:I

    .line 2497
    if-eqz v0, :cond_0

    .line 2498
    invoke-direct {p0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->populate(Z)V

    .line 2500
    :cond_0
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_1
    move v0, v1

    .line 2495
    goto :goto_0
.end method

.method public setMinColumnWidth(I)V
    .locals 1
    .param p1, "minColWidth"    # I

    .prologue
    .line 2508
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMinColWidth:I

    .line 2509
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setColumnCount(I)V

    .line 2510
    return-void
.end method

.method public setOnItemClickListener(Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;

    .prologue
    .line 2519
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemClickListener;

    .line 2520
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setLongClickable(Z)V

    .line 2532
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mOnItemLongClickListener:Lcom/liquable/nemo/staggerd/StaggeredGridView$OnItemLongClickListener;

    .line 2533
    return-void
.end method

.method public setSelectionToTop()V
    .locals 1

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->removeAllViews()V

    .line 2544
    invoke-direct {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->resetStateForGridTop()V

    .line 2547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->populate(Z)V

    .line 2548
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2581
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2582
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2551
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2552
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2553
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2556
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2558
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 2570
    :goto_0
    return-void

    .line 2562
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2563
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2564
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionLeftPadding:I

    .line 2565
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionTopPadding:I

    .line 2566
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionRightPadding:I

    .line 2567
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelectionBottomPadding:I

    .line 2568
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2569
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->updateSelectorState()V

    goto :goto_0
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2592
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mBeginClick:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2601
    iget v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2606
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2604
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2601
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateSelectorState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2668
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2669
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2670
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2675
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
