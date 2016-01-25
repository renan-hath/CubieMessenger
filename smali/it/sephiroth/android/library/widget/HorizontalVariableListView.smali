.class public Lit/sephiroth/android/library/widget/HorizontalVariableListView;
.super Lit/sephiroth/android/library/widget/HorizontalListView;
.source "HorizontalVariableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;,
        Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;,
        Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;,
        Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;,
        Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;
    }
.end annotation


# static fields
.field protected static LOG_ENABLED:Z


# instance fields
.field private mActivePointerId:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mAdapterItemCount:I

.field protected mAlignMode:I

.field private mAnimateChanges:Z

.field private mCanCheckDrag:Z

.field private mChildWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

.field private mCurrentX:I

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDataObserverExtended:Lit/sephiroth/android/library/utils/DataSetObserverExtended;

.field private mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

.field private mDragScrollEnabled:Z

.field private mDragTolerance:I

.field private mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

.field private mForceLayout:Z

.field private mGesture:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHeightMeasureSpec:I

.field private mIsBeingDragged:Z

.field private mIsDragging:Z

.field private mItemDragListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;

.field private mLastMotionX:I

.field private mLayoutChangeListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnLayoutChangeListener;

.field private mLeftEdge:I

.field private mLeftViewIndex:I

.field private mMaxX:I

.field private mMaximumVelocity:I

.field private mMinX:I

.field private mMinimumVelocity:I

.field private mOnItemClicked:Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOriginalDragItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOverScrollMode:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

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

.field private mRightEdge:I

.field private mRightViewIndex:I

.field private mScrollFinishedListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnScrollFinishedListener;

.field private mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mScrollNotifier:Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;

.field private mScroller:Landroid/widget/OverScroller;

.field protected mSelectedPositions:Landroid/util/SparseBooleanArray;

.field private mTestDragX:F

.field private mTestDragY:F

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewTypeTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWasFlinging:Z

.field private mWidthMeasureSpec:I

.field private nullInt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 288
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalListView;-><init>(Landroid/content/Context;)V

    .line 154
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsDragging:Z

    .line 160
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 162
    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 175
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAnimateChanges:Z

    .line 178
    const/16 v0, 0x11

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAlignMode:I

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    .line 190
    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 191
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    .line 200
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    .line 204
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragTolerance:I

    .line 212
    iput v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverScrollMode:I

    .line 220
    sget-object v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Single:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    .line 228
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 236
    new-array v0, v3, [I

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    .line 501
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserverExtended:Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    .line 545
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 2562
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->initScrollView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsDragging:Z

    .line 160
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 162
    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 175
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAnimateChanges:Z

    .line 178
    const/16 v0, 0x11

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAlignMode:I

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    .line 190
    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 191
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    .line 200
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    .line 204
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragTolerance:I

    .line 212
    iput v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverScrollMode:I

    .line 220
    sget-object v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Single:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    .line 228
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 236
    new-array v0, v3, [I

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    .line 501
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserverExtended:Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    .line 545
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 2562
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 294
    invoke-direct {p0, p1, p2, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->initScrollView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsDragging:Z

    .line 160
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 162
    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 175
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAnimateChanges:Z

    .line 178
    const/16 v0, 0x11

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAlignMode:I

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    .line 190
    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 191
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    .line 200
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    .line 204
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragTolerance:I

    .line 212
    iput v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverScrollMode:I

    .line 220
    sget-object v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Single:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    .line 228
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 236
    new-array v0, v3, [I

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    .line 501
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserverExtended:Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    .line 545
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 2562
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$3;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 299
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->initScrollView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 300
    return-void
.end method

.method static synthetic access$10(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V
    .locals 0

    .prologue
    .line 1770
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fireOnScrollChanged()V

    return-void
.end method

.method static synthetic access$11(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    return v0
.end method

.method static synthetic access$12(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    return v0
.end method

.method static synthetic access$13(Lit/sephiroth/android/library/widget/HorizontalVariableListView;ZIIII)V
    .locals 0

    .prologue
    .line 1764
    invoke-direct/range {p0 .. p5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fireOnLayoutChangeListener(ZIIII)V

    return-void
.end method

.method static synthetic access$2(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    return-object v0
.end method

.method static synthetic access$3(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V
    .locals 0

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleDataSetChanged(Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V

    return-void
.end method

.method static synthetic access$4(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1707
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->longPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Landroid/widget/OverScroller;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$6(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Z
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWasFlinging:Z

    return v0
.end method

.method static synthetic access$7(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    return v0
.end method

.method static synthetic access$8(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$9(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 2499
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->itemClick(Landroid/view/View;I)V

    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;IZ)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I
    .param p3, "recycled"    # Z

    .prologue
    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 749
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 750
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 753
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 754
    invoke-virtual {p0, p1, v0, p3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->forceChildLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 755
    return-void
.end method

.method private checkDrag(II)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2164
    iget-boolean v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsDragging:Z

    if-nez v5, :cond_0

    .line 2166
    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragX:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragY:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 2193
    :cond_0
    :goto_0
    return v4

    .line 2168
    :cond_1
    int-to-float v5, p1

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2170
    .local v0, "dx":F
    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragTolerance:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 2171
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragY:F

    .line 2172
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    goto :goto_0

    .line 2174
    :cond_2
    int-to-float v5, p2

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2175
    .local v1, "dy":F
    float-to-double v5, v1

    iget v7, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragTolerance:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 2177
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOriginalDragItem:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    .line 2179
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOriginalDragItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2180
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemIndex(Landroid/view/View;)I

    move-result v2

    .line 2181
    .local v2, "position":I
    if-eqz v3, :cond_3

    const/4 v5, -0x1

    if-le v2, v5, :cond_3

    .line 2182
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2183
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mItemDragListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;

    if-eqz v5, :cond_3

    .line 2184
    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v2

    iget-object v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v2

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fireItemDragStart(Landroid/view/View;IJ)Z

    .line 2185
    const/4 v4, 0x1

    goto :goto_0

    .line 2189
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    goto :goto_0
.end method

.method private createNew(III)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "viewType"    # I
    .param p3, "layoutIndex"    # I

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getIsSelected(I)Z

    move-result v2

    .line 1009
    .local v2, "selected":Z
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1010
    .local v1, "newView":Landroid/view/View;
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1011
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1012
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v0, p3, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->addAndMeasureChild(Landroid/view/View;IZ)V

    .line 1013
    return-object v0

    .line 1012
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private drawEdges(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 360
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_3

    .line 361
    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 362
    .local v2, "scrollX":I
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 364
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 366
    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 367
    neg-int v4, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 368
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 369
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    .line 372
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 374
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 376
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v3

    .line 377
    .local v3, "width":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 379
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 380
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 381
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v0, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 382
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    .line 385
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 388
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method private emptyRecycler()V
    .locals 3

    .prologue
    .line 620
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 621
    :goto_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 625
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 626
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mViewTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 628
    :cond_0
    return-void

    .line 622
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 623
    .local v0, "recycler":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_0
.end method

.method private fillItem(Landroid/view/View;IIII)Landroid/view/View;
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "viewType"    # I
    .param p4, "layoutIndex"    # I
    .param p5, "left"    # I

    .prologue
    .line 989
    if-nez p1, :cond_0

    .line 990
    invoke-direct {p0, p2, p3, p4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->createNew(III)Landroid/view/View;

    move-result-object p1

    .line 994
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 995
    .local v1, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 997
    .local v0, "childHeight":I
    if-gtz v1, :cond_1

    .line 998
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 999
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mViewTypeTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    add-int v2, p5, v1

    invoke-virtual {p0, p1, p5, v2, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->layoutChild(Landroid/view/View;III)V

    .line 1004
    return-object p1
.end method

.method private fillList(I)V
    .locals 5
    .param p1, "positionX"    # I

    .prologue
    .line 864
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 865
    const-string/jumbo v2, "horizontal-variable-list"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fillList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", real: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getScrollX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    const/4 v1, 0x0

    .line 870
    .local v1, "edge":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 871
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 874
    :cond_1
    invoke-direct {p0, p1, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillListRight(II)V

    .line 876
    const/4 v1, 0x0

    .line 877
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_2

    .line 879
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 881
    :cond_2
    invoke-direct {p0, p1, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillListLeft(II)V

    .line 883
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_3

    .line 884
    const-string/jumbo v2, "horizontal-variable-list"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\tviewIndex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_3
    return-void
.end method

.method private fillListLeft(II)V
    .locals 7
    .param p1, "positionX"    # I
    .param p2, "leftEdge"    # I

    .prologue
    const/4 v4, 0x0

    .line 899
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 930
    :goto_0
    return-void

    .line 901
    :cond_0
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 902
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "fillListLeft: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_1
    :goto_1
    sub-int v0, p2, p1

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftEdge:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    if-gez v0, :cond_3

    .line 924
    :cond_2
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    const/4 v2, -0x1

    if-gt v0, v2, :cond_6

    .line 925
    iput p2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    goto :goto_0

    .line 906
    :cond_3
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_4

    .line 907
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "fillListLeft. leftIndex: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 910
    .local v3, "viewType":I
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 911
    .local v6, "childWidth":I
    const/4 v1, 0x0

    .line 913
    .local v1, "child":Landroid/view/View;
    if-gtz v6, :cond_5

    .line 914
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    invoke-direct {p0, v0, v3, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->createNew(III)Landroid/view/View;

    move-result-object v1

    .line 915
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 916
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_5
    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    sub-int v5, p2, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillItem(Landroid/view/View;IIII)Landroid/view/View;

    .line 920
    sub-int/2addr p2, v6

    .line 921
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    goto :goto_1

    .line 928
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "viewType":I
    .end local v6    # "childWidth":I
    :cond_6
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    goto/16 :goto_0
.end method

.method private fillListRight(II)V
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "rightEdge"    # I

    .prologue
    const/4 v10, 0x0

    .line 940
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mForceLayout:Z

    if-nez v0, :cond_1

    move v7, v10

    .line 942
    .local v7, "firstChild":Z
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_2

    .line 985
    :cond_0
    :goto_1
    return-void

    .line 940
    .end local v7    # "firstChild":Z
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 944
    .restart local v7    # "firstChild":Z
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v9

    .line 946
    .local v9, "realWidth":I
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_3

    .line 947
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fillListRight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", edge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_3
    :goto_2
    sub-int v0, p2, p1

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightEdge:I

    if-lt v0, v1, :cond_5

    if-nez v7, :cond_5

    .line 968
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    if-lt v0, v1, :cond_9

    .line 970
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    const/high16 v1, -0x40000000    # -2.0f

    if-le v0, v1, :cond_7

    iget v8, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 972
    .local v8, "leftEdge":I
    :goto_3
    sub-int v0, p2, v8

    if-le v0, v9, :cond_8

    .line 973
    sub-int v0, p2, v9

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 974
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "max x: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 952
    .end local v8    # "leftEdge":I
    :cond_5
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    if-ge v0, v1, :cond_4

    .line 956
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 957
    .local v3, "viewType":I
    const/4 v1, 0x0

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    const/4 v4, -0x1

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillItem(Landroid/view/View;IIII)Landroid/view/View;

    .line 958
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 960
    .local v6, "childWidth":I
    if-eqz v7, :cond_6

    .line 961
    const/4 v7, 0x0

    .line 964
    :cond_6
    add-int/2addr p2, v6

    .line 965
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    goto :goto_2

    .end local v3    # "viewType":I
    .end local v6    # "childWidth":I
    :cond_7
    move v8, v10

    .line 970
    goto :goto_3

    .line 976
    .restart local v8    # "leftEdge":I
    :cond_8
    sub-int v0, p2, v9

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 977
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    sub-int/2addr v0, v1

    if-ge v0, v9, :cond_0

    .line 978
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    goto/16 :goto_1

    .line 983
    .end local v8    # "leftEdge":I
    :cond_9
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    goto/16 :goto_1
.end method

.method private fireItemDragStart(Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1753
    iput-boolean v7, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    .line 1754
    iput-boolean v7, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 1756
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mItemDragListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;->onItemStartDrag(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    iput-boolean v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsDragging:Z

    .line 1758
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->performHapticFeedback(I)Z

    move v0, v6

    .line 1761
    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method private fireLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 1744
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->performHapticFeedback(I)Z

    .line 1746
    const/4 v0, 0x1

    .line 1748
    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private fireOnLayoutChangeListener(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1765
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLayoutChangeListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLayoutChangeListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnLayoutChangeListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HorizontalListView$OnLayoutChangeListener;->onLayoutChange(ZIIII)V

    .line 1768
    :cond_0
    return-void
.end method

.method private fireOnScrollChanged()V
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 1774
    :cond_0
    return-void
.end method

.method private fling(I)V
    .locals 11
    .param p1, "velocityX"    # I

    .prologue
    const/4 v2, 0x0

    .line 1693
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    if-ne v0, v1, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1695
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    .line 1696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWasFlinging:Z

    .line 1698
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->stop()V

    .line 1702
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1703
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto :goto_0
.end method

.method private forceUpdateScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1137
    sget-boolean v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1138
    const-string/jumbo v1, "horizontal-variable-list"

    const-string/jumbo v2, "forceUpdateScroll"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1142
    .local v0, "newScrollX":I
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    if-eq v0, v1, :cond_3

    .line 1143
    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->scrollTo(II)V

    .line 1148
    :goto_0
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    if-le v1, v2, :cond_2

    .line 1149
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->scrollTo(II)V

    .line 1151
    :cond_2
    return-void

    .line 1145
    :cond_3
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {p0, v0, v4, v1, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->onScrollChanged(IIII)V

    goto :goto_0
.end method

.method private getChildAtPosition(FF)I
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1724
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1725
    .local v7, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v6

    .line 1727
    .local v6, "total":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_1

    .line 1740
    const/4 v2, -0x1

    .end local v2    # "i":I
    :cond_0
    return v2

    .line 1728
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1729
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1730
    .local v3, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1731
    .local v4, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1732
    .local v5, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1733
    .local v0, "bottom":I
    invoke-virtual {v7, v3, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1734
    iget v8, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    neg-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1736
    float-to-int v8, p1

    float-to-int v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1727
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getChildBounds(II)Landroid/graphics/Rect;
    .locals 7
    .param p1, "position"    # I
    .param p2, "viewType"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1027
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1028
    .local v2, "childWidth":I
    const/4 v1, 0x0

    .line 1030
    .local v1, "childHeight":I
    if-ne v2, v6, :cond_0

    .line 1032
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1033
    .local v3, "recycledView":Landroid/view/View;
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1034
    .local v0, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v0, v6, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->addAndMeasureChild(Landroid/view/View;IZ)V

    .line 1035
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1036
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1037
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1041
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "recycledView":Landroid/view/View;
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "recycledView":Landroid/view/View;
    :cond_1
    move v4, v5

    .line 1034
    goto :goto_0
.end method

.method private getItemIndex(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1814
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v1

    .line 1815
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1820
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 1816
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_0

    .line 1815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleDataSetChanged(Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V
    .locals 6
    .param p1, "data"    # Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    .prologue
    .line 1046
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v3, :cond_0

    .line 1047
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->stop()V

    .line 1050
    :cond_0
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_1

    .line 1089
    :goto_0
    return-void

    .line 1054
    :cond_1
    monitor-enter p0

    .line 1055
    :try_start_0
    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    .line 1056
    .local v2, "oldCount":I
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    .line 1054
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    sub-int v0, v3, v2

    .line 1061
    .local v0, "delta":I
    iget v3, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    sub-int/2addr v4, v0

    if-ne v3, v4, :cond_4

    const/4 v1, 0x1

    .line 1063
    .local v1, "is_last":Z
    :goto_1
    sget-boolean v3, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1064
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "** delta changes: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "position: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", is_last: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", old count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1066
    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1065
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_2
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->invalidated()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1071
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->clear()V

    .line 1072
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->reset()V

    .line 1088
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->clear()V

    goto :goto_0

    .line 1054
    .end local v0    # "delta":I
    .end local v1    # "is_last":Z
    .end local v2    # "oldCount":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1061
    .restart local v0    # "delta":I
    .restart local v2    # "oldCount":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1074
    .restart local v1    # "is_last":Z
    :cond_5
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->added()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1076
    if-nez v1, :cond_6

    .line 1077
    iget v3, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    invoke-direct {p0, v3, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->moveAllSelections(II)V

    .line 1079
    :cond_6
    iget v3, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    invoke-direct {p0, v3, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleItemAdded(II)V

    goto :goto_2

    .line 1080
    :cond_7
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->removed()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1082
    iget v3, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->moveAllSelections(II)V

    .line 1083
    iget v3, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    iget v4, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->viewType:I

    invoke-direct {p0, v3, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleItemRemoved(II)V

    goto :goto_2

    .line 1084
    :cond_8
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->replaced()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1085
    iget v3, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->position:I

    iget v4, p1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->viewType:I

    invoke-direct {p0, v3, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleItemReplaced(II)V

    goto :goto_2
.end method

.method private handleItemAdded(II)V
    .locals 13
    .param p1, "fromPosition"    # I
    .param p2, "count"    # I

    .prologue
    .line 1421
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1423
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->reset()V

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->isScrolling()Z

    move-result v6

    .line 1429
    .local v6, "animating":Z
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getFirstVisiblePosition()I

    move-result v9

    .line 1430
    .local v9, "first":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getLastVisiblePosition()I

    move-result v11

    .line 1433
    .local v11, "last":I
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 1438
    if-le p1, v11, :cond_3

    .line 1440
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_2

    .line 1441
    const-string/jumbo v0, "horizontal-variable-list"

    const-string/jumbo v1, "after current position"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->forceUpdateScroll()V

    goto :goto_0

    .line 1446
    :cond_3
    if-gt p1, v9, :cond_6

    .line 1448
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_4

    .line 1449
    const-string/jumbo v0, "horizontal-variable-list"

    const-string/jumbo v1, "before current position"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_4
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 1453
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 1454
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1456
    if-nez v6, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAnimateChanges:Z

    if-eqz v0, :cond_0

    .line 1461
    const/4 v12, 0x0

    .line 1462
    .local v12, "totalWidth":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, p2, :cond_5

    .line 1469
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int/2addr v0, v12

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollTo(I)V

    goto :goto_0

    .line 1465
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    add-int v1, p1, v10

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 1466
    .local v3, "viewType":I
    add-int v0, p1, v10

    invoke-direct {p0, v0, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildBounds(II)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1467
    .local v8, "childWidth":I
    add-int/2addr v12, v8

    .line 1462
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1475
    .end local v3    # "viewType":I
    .end local v8    # "childWidth":I
    .end local v10    # "i":I
    .end local v12    # "totalWidth":I
    :cond_6
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_7

    .line 1476
    const-string/jumbo v0, "horizontal-variable-list"

    const-string/jumbo v1, "between visible items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_7
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v7

    .line 1482
    .local v7, "child":Landroid/view/View;
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 1483
    .restart local v3    # "viewType":I
    const/4 v1, 0x0

    sub-int v4, p1, v9

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillItem(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v7

    .line 1484
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1487
    .restart local v8    # "childWidth":I
    add-int/lit8 v10, p1, 0x1

    .line 1488
    .restart local v10    # "i":I
    :goto_2
    add-int/lit8 v0, v11, 0x1

    if-le v10, v0, :cond_9

    .line 1500
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeNonVisibleItems(I[I)V

    .line 1501
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1502
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_8

    .line 1503
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\tremoved children: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_8
    const/4 v0, 0x1

    if-le p2, v0, :cond_b

    .line 1507
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleItemAdded(II)V

    .line 1513
    :goto_3
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1514
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\tminX: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1489
    :cond_9
    invoke-virtual {p0, v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v7

    .line 1490
    if-eqz v7, :cond_a

    .line 1491
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v7, v0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->layoutChild(Landroid/view/View;III)V

    .line 1492
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_a

    .line 1493
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", move child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", now in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1494
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1493
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1509
    :cond_b
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillList(I)V

    goto/16 :goto_3
.end method

.method private handleItemRemoved(II)V
    .locals 15
    .param p1, "position"    # I
    .param p2, "viewType"    # I

    .prologue
    .line 1277
    iget-object v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v11, :cond_0

    .line 1411
    :goto_0
    return-void

    .line 1279
    :cond_0
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_1

    .line 1280
    const-string/jumbo v11, "horizontal-variable-list"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "handleItemRemoved: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_1
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    const/4 v12, 0x1

    if-ge v11, v12, :cond_2

    .line 1284
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->reset()V

    goto :goto_0

    .line 1288
    :cond_2
    if-nez p1, :cond_4

    const/4 v6, 0x1

    .line 1289
    .local v6, "is_first":Z
    :goto_1
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_5

    const/4 v7, 0x1

    .line 1290
    .local v7, "is_last":Z
    :goto_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->isScrolling()Z

    move-result v1

    .line 1291
    .local v1, "animating":Z
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1292
    .local v4, "first":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getLastVisiblePosition()I

    move-result v8

    .line 1297
    .local v8, "last":I
    move/from16 v0, p1

    if-le v0, v8, :cond_6

    .line 1299
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_3

    .line 1300
    const-string/jumbo v11, "horizontal-variable-list"

    const-string/jumbo v12, "position is after"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_3
    const v11, 0x3fffffff    # 1.9999999f

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 1303
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto :goto_0

    .line 1288
    .end local v1    # "animating":Z
    .end local v4    # "first":I
    .end local v6    # "is_first":Z
    .end local v7    # "is_last":Z
    .end local v8    # "last":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1289
    .restart local v6    # "is_first":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 1306
    .restart local v1    # "animating":Z
    .restart local v4    # "first":I
    .restart local v7    # "is_last":Z
    .restart local v8    # "last":I
    :cond_6
    move/from16 v0, p1

    if-ge v0, v4, :cond_9

    .line 1308
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_7

    .line 1309
    const-string/jumbo v11, "horizontal-variable-list"

    const-string/jumbo v12, "position is before"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_7
    invoke-direct/range {p0 .. p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildBounds(II)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1314
    .local v3, "childWidth":I
    const/high16 v11, -0x40000000    # -2.0f

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 1315
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 1316
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1318
    if-nez v1, :cond_8

    iget-boolean v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAnimateChanges:Z

    if-eqz v11, :cond_8

    .line 1319
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v12, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    add-int/2addr v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-direct {p0, v11}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollTo(I)V

    .line 1321
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 1326
    .end local v3    # "childWidth":I
    :cond_9
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_a

    .line 1327
    const-string/jumbo v11, "horizontal-variable-list"

    const-string/jumbo v12, "position in range"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 1332
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    .line 1333
    .local v10, "right":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 1334
    .local v9, "left":I
    sub-int v3, v10, v9

    .line 1337
    .restart local v3    # "childWidth":I
    iget-object v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Queue;

    invoke-interface {v11, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1338
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1340
    if-eqz v7, :cond_f

    .line 1342
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_b

    .line 1343
    const-string/jumbo v11, "horizontal-variable-list"

    const-string/jumbo v12, "position is the last"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_b
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1347
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v11

    sub-int v11, v9, v11

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 1348
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v12, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    if-ge v11, v12, :cond_c

    .line 1349
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 1352
    :cond_c
    if-nez v1, :cond_d

    iget-boolean v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAnimateChanges:Z

    if-nez v11, :cond_e

    .line 1353
    :cond_d
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->forceUpdateScroll()V

    .line 1357
    :goto_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 1355
    :cond_e
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v12, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v13, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int/2addr v13, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-direct {p0, v11}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollTo(I)V

    goto :goto_3

    .line 1360
    :cond_f
    if-eqz v6, :cond_15

    .line 1362
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_10

    .line 1363
    const-string/jumbo v11, "horizontal-variable-list"

    const-string/jumbo v12, "position is the first"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string/jumbo v11, "horizontal-variable-list"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "minx: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", maxx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", current: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_10
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1368
    iput v10, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 1370
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v12, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    if-le v11, v12, :cond_11

    .line 1371
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 1374
    :cond_11
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_12

    .line 1375
    const-string/jumbo v11, "horizontal-variable-list"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "isAnimating: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string/jumbo v11, "horizontal-variable-list"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "minx: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", maxx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", current: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_12
    if-nez v1, :cond_13

    iget-boolean v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAnimateChanges:Z

    if-nez v11, :cond_14

    .line 1381
    :cond_13
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->forceUpdateScroll()V

    .line 1385
    :goto_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 1383
    :cond_14
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v12, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    add-int/2addr v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {p0, v11}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollTo(I)V

    goto :goto_4

    .line 1390
    :cond_15
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_16

    .line 1391
    const-string/jumbo v11, "horizontal-variable-list"

    const-string/jumbo v12, "else"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_16
    move v5, v8

    .local v5, "i":I
    :goto_5
    move/from16 v0, p1

    if-ge v5, v0, :cond_17

    .line 1404
    iget v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1405
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->forceUpdateScroll()V

    .line 1406
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    .line 1410
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 1395
    :cond_17
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 1396
    if-eqz v2, :cond_18

    .line 1397
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {p0, v2, v11, v12, v13}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->layoutChild(Landroid/view/View;III)V

    .line 1398
    sget-boolean v11, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v11, :cond_18

    .line 1399
    const-string/jumbo v11, "horizontal-variable-list"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ", move child: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " at position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", now in: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1400
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1399
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_18
    add-int/lit8 v5, v5, -0x1

    goto :goto_5
.end method

.method private handleItemReplaced(II)V
    .locals 18
    .param p1, "position"    # I
    .param p2, "viewType"    # I

    .prologue
    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 1157
    .local v5, "newViewType":I
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_2

    .line 1158
    const-string/jumbo v2, "horizontal-variable-list"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleItemReplaced: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", viewTypes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getFirstVisiblePosition()I

    move-result v10

    .line 1162
    .local v10, "first":I
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getLastVisiblePosition()I

    move-result v15

    .line 1163
    .local v15, "last":I
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    const/4 v14, 0x1

    .line 1164
    .local v14, "is_last":Z
    :goto_1
    if-nez p1, :cond_6

    const/4 v13, 0x1

    .line 1165
    .local v13, "is_first":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->isScrolling()Z

    move-result v12

    .line 1168
    .local v12, "is_animating":Z
    move/from16 v0, p2

    if-ne v0, v5, :cond_a

    .line 1171
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_3

    .line 1172
    const-string/jumbo v2, "horizontal-variable-list"

    const-string/jumbo v3, "same viewType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_3
    move/from16 v0, p1

    if-lt v0, v10, :cond_4

    move/from16 v0, p1

    if-le v0, v15, :cond_7

    .line 1177
    :cond_4
    const/high16 v2, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    iput v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 1178
    const v2, 0x3fffffff    # 1.9999999f

    move-object/from16 v0, p0

    iput v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 1179
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1180
    const-string/jumbo v2, "horizontal-variable-list"

    const-string/jumbo v3, "position is before or after"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1163
    .end local v12    # "is_animating":Z
    .end local v13    # "is_first":Z
    .end local v14    # "is_last":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 1164
    .restart local v14    # "is_last":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .line 1183
    .restart local v12    # "is_animating":Z
    .restart local v13    # "is_first":Z
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v8

    .line 1184
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1190
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1193
    if-eqz v14, :cond_8

    const/4 v6, -0x1

    .line 1196
    .local v6, "layoutIndex":I
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillItem(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v8

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 1193
    .end local v6    # "layoutIndex":I
    :cond_8
    if-eqz v13, :cond_9

    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    sub-int v6, p1, v10

    goto :goto_3

    .line 1204
    .end local v8    # "child":Landroid/view/View;
    :cond_a
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_b

    .line 1205
    const-string/jumbo v2, "horizontal-variable-list"

    const-string/jumbo v3, "viewTypes are different"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_b
    move/from16 v0, p1

    if-le v0, v15, :cond_c

    .line 1210
    const v2, 0x3fffffff    # 1.9999999f

    move-object/from16 v0, p0

    iput v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    goto/16 :goto_0

    .line 1213
    :cond_c
    move/from16 v0, p1

    if-ge v0, v10, :cond_f

    .line 1215
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_d

    .line 1216
    const-string/jumbo v2, "horizontal-variable-list"

    const-string/jumbo v3, "position is before"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_d
    const/high16 v2, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    iput v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 1220
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 1221
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1223
    if-nez v12, :cond_e

    .line 1226
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 1230
    :cond_f
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_10

    .line 1231
    const-string/jumbo v2, "horizontal-variable-list"

    const-string/jumbo v3, "between visible items"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_10
    invoke-direct/range {p0 .. p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 1234
    .local v17, "oldChildWidth":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 1235
    .local v16, "newChildWidth":I
    sub-int v9, v16, v17

    .line 1237
    .local v9, "diffWidth":I
    invoke-virtual/range {p0 .. p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v8

    .line 1240
    .restart local v8    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1243
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1246
    if-eqz v14, :cond_11

    const/4 v6, -0x1

    .line 1249
    .restart local v6    # "layoutIndex":I
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillItem(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v8

    .line 1251
    move v11, v15

    .local v11, "i":I
    :goto_5
    move/from16 v0, p1

    if-gt v11, v0, :cond_13

    .line 1262
    const v2, 0x3fffffff    # 1.9999999f

    move-object/from16 v0, p0

    iput v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 1264
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->forceUpdateScroll()V

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 1246
    .end local v6    # "layoutIndex":I
    .end local v11    # "i":I
    :cond_11
    if-eqz v13, :cond_12

    const/4 v6, 0x0

    goto :goto_4

    :cond_12
    sub-int v6, p1, v10

    goto :goto_4

    .line 1252
    .restart local v6    # "layoutIndex":I
    .restart local v11    # "i":I
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v8

    .line 1253
    if-eqz v8, :cond_14

    .line 1254
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2, v3, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->layoutChild(Landroid/view/View;III)V

    .line 1255
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_14

    .line 1256
    const-string/jumbo v2, "horizontal-variable-list"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ", move child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", now in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1257
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1256
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_14
    add-int/lit8 v11, v11, -0x1

    goto :goto_5
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1825
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1829
    :goto_0
    return-void

    .line 1827
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    .line 304
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mGesture:Landroid/view/GestureDetector;

    .line 305
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 307
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setFocusable(Z)V

    .line 308
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setFocusableInTouchMode(Z)V

    .line 309
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setWillNotDraw(Z)V

    .line 311
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 312
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTouchSlop:I

    .line 314
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTouchSlop:I

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragTolerance:I

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaximumVelocity:I

    .line 317
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinimumVelocity:I

    .line 318
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverscrollDistance:I

    .line 319
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverflingDistance:I

    .line 321
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->resetView()V

    .line 322
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1833
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1835
    :cond_0
    return-void
.end method

.method private itemClick(Landroid/view/View;I)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2500
    const/4 v6, 0x1

    .line 2503
    .local v6, "clickValid":Z
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOnItemClicked:Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;

    if-eqz v0, :cond_0

    .line 2504
    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->playSoundEffect(I)V

    .line 2505
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOnItemClicked:Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2508
    :cond_0
    if-eqz v6, :cond_1

    .line 2510
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getIsSelected(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2511
    invoke-virtual {p0, p1, p2, v7, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedItem(Landroid/view/View;IZZ)V

    .line 2516
    :cond_1
    :goto_0
    return-void

    .line 2513
    :cond_2
    invoke-virtual {p0, p1, p2, v8, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedItem(Landroid/view/View;IZZ)V

    goto :goto_0
.end method

.method private longPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1708
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWasFlinging:Z

    if-eqz v3, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    .line 1711
    .local v2, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    if-eqz v2, :cond_0

    .line 1713
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAtPosition(FF)I

    move-result v1

    .line 1716
    .local v1, "i":I
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 1717
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1718
    .local v0, "child":Landroid/view/View;
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v1

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v3, v4, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fireLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method private moveAllSelections(II)V
    .locals 8
    .param p1, "fromPosition"    # I
    .param p2, "amount"    # I

    .prologue
    .line 1098
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    monitor-enter v4

    .line 1100
    :try_start_0
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 1103
    .local v2, "size":I
    if-lez p2, :cond_5

    .line 1105
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 1098
    .end local v0    # "i":I
    :cond_0
    :goto_1
    monitor-exit v4

    .line 1134
    return-void

    .line 1106
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 1107
    .local v1, "index":I
    sget-boolean v3, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1108
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "i: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_2
    if-lt v1, p1, :cond_4

    .line 1111
    sget-boolean v3, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v3, :cond_3

    .line 1112
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "replacing: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_3
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1115
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    add-int v5, v1, p2

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1105
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1118
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_5
    if-gez p2, :cond_0

    .line 1120
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1122
    :try_start_1
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1124
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v2, :cond_6

    .line 1120
    monitor-exit v5

    goto :goto_1

    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 1098
    .end local v2    # "size":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1125
    .restart local v0    # "i":I
    .restart local v2    # "size":I
    :cond_6
    :try_start_3
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 1126
    .restart local v1    # "index":I
    if-le v1, p1, :cond_7

    .line 1127
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1128
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    add-int v6, v1, p2

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    .line 2141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 2142
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2143
    .local v1, "pointerId":I
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2144
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2145
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    .line 2146
    iput v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragY:F

    .line 2147
    iput v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragX:F

    .line 2148
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 2149
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2150
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2153
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postNotifyLayoutChange(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1792
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$4;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;ZIIII)V

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->post(Ljava/lang/Runnable;)Z

    .line 1799
    return-void
.end method

.method private postScrollNotifier()V
    .locals 2

    .prologue
    .line 1783
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    .line 1784
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollNotifier:Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;

    if-nez v0, :cond_0

    .line 1785
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollNotifier:Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;

    .line 1787
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollNotifier:Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->post(Ljava/lang/Runnable;)Z

    .line 1789
    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1840
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1842
    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I[I)V
    .locals 9
    .param p1, "positionX"    # I
    .param p2, "removed"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1623
    aput v7, p2, v7

    .line 1624
    aput v7, p2, v8

    .line 1626
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1627
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 1629
    .local v2, "removedCount":Z
    sget-boolean v4, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 1630
    const-string/jumbo v4, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removeNonVisibleItems: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const-string/jumbo v4, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "currentIndex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const-string/jumbo v4, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "edges: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftEdge:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightEdge:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, p1

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftEdge:I

    if-lt v4, v5, :cond_4

    .line 1655
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1657
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, p1

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightEdge:I

    if-gt v4, v5, :cond_6

    .line 1678
    :cond_2
    if-eqz v2, :cond_3

    .line 1679
    sget-boolean v4, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v4, :cond_3

    .line 1680
    const-string/jumbo v4, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removeNonVisibleItems: leftIndex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", rightIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const-string/jumbo v4, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, p2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_3
    return-void

    .line 1638
    :cond_4
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_5

    .line 1640
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1641
    .local v1, "hashCode":I
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mViewTypeTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1643
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mViewTypeTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1644
    .local v3, "viewType":I
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1647
    .end local v1    # "hashCode":I
    .end local v3    # "viewType":I
    :cond_5
    const/4 v2, 0x1

    .line 1648
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 1649
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1650
    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 1651
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1659
    :cond_6
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_7

    .line 1663
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1664
    .restart local v1    # "hashCode":I
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mViewTypeTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1665
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mViewTypeTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1666
    .restart local v3    # "viewType":I
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1671
    .end local v1    # "hashCode":I
    .end local v3    # "viewType":I
    :cond_7
    const/4 v2, 0x1

    .line 1672
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 1673
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1674
    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 1675
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 635
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->resetView()V

    .line 636
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeAllViewsInLayout()V

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mForceLayout:Z

    .line 638
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->requestLayout()V

    .line 639
    return-void
.end method

.method private resetView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    .line 326
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    .line 327
    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 328
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 329
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightEdge:I

    .line 330
    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftEdge:I

    .line 331
    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 2471
    const/16 v0, 0xfa

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollTo(II)V

    .line 2472
    return-void
.end method

.method private smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2475
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollBy(II)V

    .line 2476
    return-void
.end method


# virtual methods
.method public computeScroll(I)I
    .locals 5
    .param p1, "finalX"    # I

    .prologue
    .line 2204
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 2205
    const/4 v3, 0x0

    .line 2218
    :goto_0
    return v3

    .line 2208
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v2

    .line 2209
    .local v2, "width":I
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int v1, p1, v3

    .line 2210
    .local v1, "offset":I
    move v0, v1

    .line 2212
    .local v0, "delta":I
    if-gez v0, :cond_1

    .line 2213
    add-int/lit8 v3, v2, -0x1

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2218
    :goto_1
    sub-int v3, v1, v0

    goto :goto_0

    .line 2215
    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 2357
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v11

    .line 2359
    .local v11, "more":Z
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2360
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scroller.current: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", current: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", more: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", is.finished: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWasFlinging:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_0
    if-eqz v11, :cond_6

    .line 2364
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 2365
    .local v3, "oldX":I
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 2367
    .local v13, "x":I
    if-eq v3, v13, :cond_5

    .line 2368
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getScrollRange()I

    move-result v5

    .line 2369
    .local v5, "range":I
    iget v12, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverScrollMode:I

    .line 2370
    .local v12, "overscrollMode":I
    if-nez v12, :cond_3

    const/4 v10, 0x1

    .line 2372
    .local v10, "canOverscroll":Z
    :goto_0
    sub-int v1, v13, v3

    iget v7, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverflingDistance:I

    move-object v0, p0

    move v4, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2373
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->scrollTo(II)V

    .line 2375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2376
    if-eqz v10, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 2378
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    if-ge v13, v0, :cond_4

    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    if-lt v3, v0, :cond_4

    .line 2379
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2390
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    .line 2402
    .end local v3    # "oldX":I
    .end local v13    # "x":I
    :cond_2
    :goto_2
    return-void

    .restart local v3    # "oldX":I
    .restart local v5    # "range":I
    .restart local v12    # "overscrollMode":I
    .restart local v13    # "x":I
    :cond_3
    move v10, v2

    .line 2370
    goto :goto_0

    .line 2380
    .restart local v10    # "canOverscroll":Z
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    if-le v13, v0, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    if-gt v3, v0, :cond_1

    .line 2381
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1

    .line 2386
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    :cond_5
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 2387
    const-string/jumbo v0, "horizontal-variable-list"

    const-string/jumbo v1, "oldx == x"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2395
    .end local v3    # "oldX":I
    .end local v13    # "x":I
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v0, :cond_2

    .line 2396
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2397
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 349
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 350
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 351
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->drawEdges(Landroid/graphics/Canvas;)V

    .line 353
    :cond_0
    return-void
.end method

.method public forceChildLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "recycled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 759
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 761
    .local v3, "needToMeasure":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 762
    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 765
    .local v2, "lpWidth":I
    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mHeightMeasureSpec:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 767
    .local v0, "childHeightSpec":I
    if-lez v2, :cond_2

    .line 768
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 772
    .local v1, "childWidthSpec":I
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 780
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v2    # "lpWidth":I
    :cond_0
    return-void

    .line 759
    .end local v3    # "needToMeasure":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 770
    .restart local v0    # "childHeightSpec":I
    .restart local v2    # "lpWidth":I
    .restart local v3    # "needToMeasure":Z
    :cond_2
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getChoiceMode()Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    return-object v0
.end method

.method public getCurrentScrollX()I
    .locals 1

    .prologue
    .line 2312
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    return v0
.end method

.method public getDragScrollEnabled()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragScrollEnabled:Z

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 1520
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2679
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAlignMode:I

    return v0
.end method

.method public getIsSelected(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2558
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1529
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 1525
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMaxX()I
    .locals 1

    .prologue
    .line 2659
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    return v0
.end method

.method public getMinX()I
    .locals 1

    .prologue
    .line 2655
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    return v0
.end method

.method public getOnItemDragListener()Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mItemDragListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 1573
    move-object v3, p1

    .line 1576
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

    if-eqz v6, :cond_0

    .line 1585
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v0

    .line 1586
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 1593
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "v":Landroid/view/View;
    :goto_2
    return v5

    .line 1577
    .restart local v4    # "v":Landroid/view/View;
    :cond_0
    move-object v3, v4

    goto :goto_0

    .line 1579
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1581
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_2

    .line 1587
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1588
    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftViewIndex:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1586
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method getScrollRange()I
    .locals 2

    .prologue
    .line 2464
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2465
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    sub-int/2addr v0, v1

    .line 2467
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedPosition()I
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSelectedPositions()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 412
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 415
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    sget-object v3, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Multiple:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    if-ne v2, v3, :cond_1

    .line 416
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 417
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 429
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 418
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "i":I
    .end local v1    # "result":[I
    :cond_1
    new-array v1, v5, [I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v4

    .line 425
    .restart local v1    # "result":[I
    goto :goto_1

    .line 426
    .end local v1    # "result":[I
    :cond_2
    new-array v1, v5, [I

    const/4 v2, -0x1

    aput v2, v1, v4

    .restart local v1    # "result":[I
    goto :goto_1
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewWidth()I
    .locals 2

    .prologue
    .line 889
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2350
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected layoutChild(Landroid/view/View;III)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "childHeight"    # I

    .prologue
    .line 1598
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingTop()I

    move-result v2

    .line 1599
    .local v2, "top":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingBottom()I

    move-result v0

    .line 1600
    .local v0, "bottom":I
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getHeight()I

    move-result v1

    .line 1603
    .local v1, "height":I
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAlignMode:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_2

    .line 1604
    sub-int v3, v1, v0

    sub-int/2addr v3, p4

    add-int/2addr v2, v3

    .line 1609
    :cond_0
    :goto_0
    sget-boolean v3, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v3, :cond_1

    .line 1610
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "layoutChild: top: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", childHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_1
    add-int v3, v2, p4

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/view/View;->layout(IIII)V

    .line 1614
    return-void

    .line 1605
    :cond_2
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAlignMode:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    .line 1606
    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, p4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public layoutChildren()V
    .locals 8

    .prologue
    .line 838
    sget-boolean v6, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v6, :cond_0

    .line 839
    const-string/jumbo v6, "horizontal-variable-list"

    const-string/jumbo v7, "layoutChildren"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v5

    .line 845
    .local v5, "total":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 856
    return-void

    .line 846
    :cond_1
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v0, v6, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->forceChildLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 850
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 851
    .local v3, "left":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 853
    .local v4, "right":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 854
    .local v1, "childHeight":I
    invoke-virtual {p0, v0, v3, v4, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->layoutChild(Landroid/view/View;III)V

    .line 845
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public measureChild(Landroid/view/View;)[I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 657
    const/4 v5, -0x1

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {p0, p1, v5, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->addAndMeasureChild(Landroid/view/View;IZ)V

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 660
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 662
    .local v0, "h":I
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeViewInLayout(Landroid/view/View;)V

    .line 664
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v4

    aput v0, v2, v3

    return-object v2

    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    move v2, v4

    .line 657
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 643
    invoke-super {p0}, Lit/sephiroth/android/library/widget/HorizontalListView;->onDetachedFromWindow()V

    .line 645
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 646
    const-string/jumbo v0, "horizontal-variable-list"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollNotifier:Lit/sephiroth/android/library/widget/HorizontalVariableListView$ScrollNotifier;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 650
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->emptyRecycler()V

    .line 651
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1855
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsDragging:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1963
    :goto_0
    return v1

    .line 1857
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1858
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mGesture:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1864
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 1865
    const/4 v1, 0x1

    goto :goto_0

    .line 1868
    :cond_1
    and-int/lit16 v1, v8, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1963
    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    goto :goto_0

    .line 1874
    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 1875
    .local v9, "activePointerId":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    .line 1881
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1883
    .local v12, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_3

    .line 1884
    const-string/jumbo v1, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid pointerId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in onInterceptTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1888
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v13, v1

    .line 1889
    .local v13, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v15, v1

    .line 1890
    .local v15, "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    sub-int v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 1892
    .local v14, "xDiff":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->checkDrag(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1893
    const/4 v1, 0x0

    goto :goto_0

    .line 1896
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTouchSlop:I

    if-le v14, v1, :cond_2

    .line 1898
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 1899
    move-object/from16 v0, p0

    iput v13, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    .line 1900
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->initVelocityTrackerIfNotExists()V

    .line 1901
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1902
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 1903
    .local v11, "parent":Landroid/view/ViewParent;
    if-eqz v11, :cond_5

    .line 1904
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1906
    :cond_5
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postScrollNotifier()V

    goto :goto_1

    .line 1913
    .end local v9    # "activePointerId":I
    .end local v11    # "parent":Landroid/view/ViewParent;
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":I
    .end local v14    # "xDiff":I
    .end local v15    # "y":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v13, v1

    .line 1914
    .restart local v13    # "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v15, v1

    .line 1916
    .restart local v15    # "y":I
    int-to-float v1, v13

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragX:F

    .line 1917
    int-to-float v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragY:F

    .line 1919
    move-object/from16 v0, p0

    iput v13, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    .line 1920
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 1922
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->initOrResetVelocityTracker()V

    .line 1923
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 1926
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWasFlinging:Z

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getDragScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mItemDragListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    .line 1931
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    if-eqz v1, :cond_2

    .line 1932
    int-to-float v1, v13

    int-to-float v2, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAtPosition(FF)I

    move-result v10

    .line 1933
    .local v10, "i":I
    const/4 v1, -0x1

    if-le v10, v1, :cond_2

    .line 1934
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOriginalDragItem:Ljava/lang/ref/WeakReference;

    goto/16 :goto_1

    .line 1925
    .end local v10    # "i":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    .line 1926
    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    .line 1927
    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    .line 1943
    .end local v13    # "x":I
    .end local v15    # "y":I
    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 1944
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 1946
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v1, :cond_9

    .line 1947
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->stop()V

    .line 1950
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1951
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    .line 1954
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    goto/16 :goto_1

    .line 1958
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1959
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    goto/16 :goto_1

    .line 1868
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
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 793
    invoke-super/range {p0 .. p5}, Lit/sephiroth/android/library/widget/HorizontalListView;->onLayout(ZIIII)V

    .line 795
    sget-boolean v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 796
    const-string/jumbo v1, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLayout: changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", forceLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mForceLayout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string/jumbo v1, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v3, p4, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, p5, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    .line 825
    :cond_1
    :goto_0
    return-void

    .line 804
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mForceLayout:Z

    if-nez v1, :cond_1

    .line 808
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->layoutChildren()V

    .line 810
    if-nez p1, :cond_4

    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mForceLayout:Z

    if-eqz v1, :cond_5

    .line 812
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getViewWidth()I

    move-result v0

    .line 813
    .local v0, "viewWidth":I
    iput v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRightEdge:I

    .line 814
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLeftEdge:I

    .line 815
    const v1, 0x3fffffff    # 1.9999999f

    iput v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 817
    const/4 v1, 0x1

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mForceLayout:Z

    .line 818
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeNonVisibleItems(I[I)V

    .line 819
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillList(I)V

    .line 820
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    iget v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->scrollTo(II)V

    .line 821
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mForceLayout:Z

    .line 824
    .end local v0    # "viewWidth":I
    :cond_5
    invoke-direct/range {p0 .. p5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postNotifyLayoutChange(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 669
    sget-boolean v14, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v14, :cond_0

    .line 670
    const-string/jumbo v14, "horizontal-variable-list"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "onMeasure. children: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", isShown: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->isShown()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", enabled: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->isEnabled()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    invoke-super/range {p0 .. p2}, Lit/sephiroth/android/library/widget/HorizontalListView;->onMeasure(II)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->isShown()Z

    move-result v14

    if-nez v14, :cond_2

    .line 744
    :cond_1
    :goto_0
    return-void

    .line 680
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingTop()I

    move-result v9

    .line 681
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPaddingBottom()I

    move-result v8

    .line 683
    .local v8, "paddingBottom":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mHeightMeasureSpec:I

    .line 684
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWidthMeasureSpec:I

    .line 686
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWidthMeasureSpec:I

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 687
    .local v12, "widthMode":I
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mHeightMeasureSpec:I

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 688
    .local v6, "heightMode":I
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mWidthMeasureSpec:I

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 689
    .local v13, "widthSize":I
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mHeightMeasureSpec:I

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 691
    .local v7, "heightSize":I
    if-nez v12, :cond_3

    .line 692
    const-string/jumbo v14, "horizontal-variable-list"

    const-string/jumbo v15, "invalid widthMode!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    if-lez v14, :cond_7

    .line 697
    if-eqz v6, :cond_4

    const/high16 v14, -0x80000000

    if-ne v6, v14, :cond_7

    .line 698
    :cond_4
    sget-boolean v14, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v14, :cond_5

    .line 699
    const-string/jumbo v14, "horizontal-variable-list"

    const-string/jumbo v15, "measure the first child"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v11

    .line 703
    .local v11, "viewType":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 704
    .local v10, "recycledView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v14, v15, v10, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 706
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->measureChild(Landroid/view/View;)[I

    move-result-object v4

    .line 711
    .local v4, "childSizes":[I
    const/4 v14, 0x1

    aget v14, v4, v14

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 713
    .local v3, "childHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Queue;

    invoke-interface {v14, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 715
    sget-boolean v14, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v14, :cond_6

    .line 716
    const-string/jumbo v14, "horizontal-variable-list"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "final dimension: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 723
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childHeight":I
    .end local v4    # "childSizes":[I
    .end local v10    # "recycledView":Landroid/view/View;
    .end local v11    # "viewType":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_1

    .line 724
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 725
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getHeight()I

    move-result v14

    sub-int/2addr v14, v8

    sub-int v5, v14, v9

    .line 726
    .local v5, "height":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eq v14, v5, :cond_b

    .line 727
    sget-boolean v14, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v14, :cond_8

    .line 728
    const-string/jumbo v14, "horizontal-variable-list"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "child height != current height: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " != "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_8
    if-eqz v6, :cond_9

    const/high16 v14, -0x80000000

    if-ne v6, v14, :cond_1

    .line 732
    :cond_9
    sget-boolean v14, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v14, :cond_a

    .line 733
    const-string/jumbo v14, "horizontal-variable-list"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "final dimension: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 741
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2329
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2330
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onOverScrolled: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", clamped: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", current: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", isFinished: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2331
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2330
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2335
    iput p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 2336
    if-eqz p3, :cond_2

    .line 2338
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v0, :cond_1

    .line 2339
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->stop()V

    .line 2342
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 2347
    :cond_2
    :goto_0
    return-void

    .line 2345
    :cond_3
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 834
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 835
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 829
    invoke-super {p0}, Lit/sephiroth/android/library/widget/HorizontalListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "old_left"    # I
    .param p4, "old_top"    # I

    .prologue
    .line 2317
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/HorizontalListView;->onScrollChanged(IIII)V

    .line 2318
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2319
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onScrollChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", old_left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_0
    iput p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 2322
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->nullInt:[I

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->removeNonVisibleItems(I[I)V

    .line 2323
    iget v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fillList(I)V

    .line 2324
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 784
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/HorizontalListView;->onSizeChanged(IIII)V

    .line 786
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 787
    const-string/jumbo v0, "horizontal-variable-list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSizeChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1969
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->initVelocityTrackerIfNotExists()V

    .line 1970
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1972
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 1974
    .local v16, "action":I
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 2137
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1978
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1979
    const/4 v3, 0x0

    goto :goto_1

    .line 1982
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 1983
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 1984
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_2

    .line 1985
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1989
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v3, :cond_3

    .line 1990
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->stop()V

    .line 1993
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1994
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1997
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    .line 1998
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 2001
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragX:F

    .line 2002
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragY:F

    goto :goto_0

    .line 1982
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 2007
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 2008
    .local v17, "activePointerIndex":I
    const/4 v3, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_6

    .line 2009
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Invalid pointerId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in onTouchEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2013
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    .line 2014
    .local v25, "x":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v26, v0

    .line 2015
    .local v26, "y":I
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    sub-int v4, v3, v25

    .line 2017
    .local v4, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    if-nez v3, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTouchSlop:I

    if-le v3, v5, :cond_8

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 2019
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_7

    .line 2020
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2022
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 2023
    if-lez v4, :cond_9

    .line 2024
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTouchSlop:I

    sub-int/2addr v4, v3

    .line 2028
    :goto_3
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postScrollNotifier()V

    .line 2032
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->checkDrag(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2033
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2026
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTouchSlop:I

    add-int/2addr v4, v3

    goto :goto_3

    .line 2036
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 2037
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    .line 2039
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    move/from16 v20, v0

    .line 2040
    .local v20, "oldX":I
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getScrollRange()I

    move-result v8

    .line 2041
    .local v8, "range":I
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverScrollMode:I

    move/from16 v21, v0

    .line 2042
    .local v21, "overscrollMode":I
    if-nez v21, :cond_e

    const/16 v18, 0x1

    .line 2044
    .local v18, "canOverscroll":Z
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2045
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2047
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v5, v1, v6}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->onScrollChanged(IIII)V

    .line 2049
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_0

    .line 2050
    add-int v23, v20, v4

    .line 2052
    .local v23, "pulledToX":I
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_f

    .line 2053
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2054
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2055
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2063
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2064
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto/16 :goto_0

    .line 2042
    .end local v18    # "canOverscroll":Z
    .end local v23    # "pulledToX":I
    :cond_e
    const/16 v18, 0x0

    goto :goto_4

    .line 2057
    .restart local v18    # "canOverscroll":Z
    .restart local v23    # "pulledToX":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    move/from16 v0, v23

    if-le v0, v3, :cond_c

    .line 2058
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2059
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2060
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_5

    .line 2074
    .end local v4    # "deltaX":I
    .end local v8    # "range":I
    .end local v17    # "activePointerIndex":I
    .end local v18    # "canOverscroll":Z
    .end local v20    # "oldX":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 2076
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2077
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 2079
    .local v19, "initialVelocity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v3, :cond_10

    .line 2080
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->stop()V

    .line 2083
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_11

    .line 2084
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinimumVelocity:I

    if-le v3, v5, :cond_13

    .line 2085
    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->fling(I)V

    .line 2093
    :cond_11
    :goto_6
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 2094
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 2095
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->recycleVelocityTracker()V

    .line 2097
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_12

    .line 2098
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2099
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2102
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCanCheckDrag:Z

    goto/16 :goto_0

    .line 2087
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    move-object/from16 v0, p0

    iget v13, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2088
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    goto :goto_6

    .line 2109
    .end local v19    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-eqz v3, :cond_14

    .line 2110
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->stop()V

    .line 2113
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2114
    move-object/from16 v0, p0

    iget-object v9, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    move-object/from16 v0, p0

    iget v13, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2115
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->postInvalidate()V

    .line 2117
    :cond_15
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    .line 2118
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsBeingDragged:Z

    .line 2119
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->recycleVelocityTracker()V

    .line 2121
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_0

    .line 2122
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2123
    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto/16 :goto_0

    .line 2130
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2131
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLastMotionX:I

    .line 2132
    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragY:F

    .line 2133
    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mTestDragX:F

    goto/16 :goto_0

    .line 1974
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

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 12
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 2408
    sget-boolean v9, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v9, :cond_0

    .line 2409
    const-string/jumbo v9, "horizontal-variable-list"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "overscrollby: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", current: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v8

    .line 2413
    .local v8, "width":I
    if-gez p1, :cond_5

    .line 2414
    add-int/lit8 v9, v8, -0x1

    neg-int v9, v9

    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2419
    :goto_0
    iget v4, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverScrollMode:I

    .line 2420
    .local v4, "overScrollMode":I
    if-lez p1, :cond_6

    const/4 v6, 0x1

    .line 2421
    .local v6, "toLeft":Z
    :goto_1
    if-gez p1, :cond_7

    const/4 v7, 0x1

    .line 2422
    .local v7, "toRight":Z
    :goto_2
    if-nez v4, :cond_8

    const/4 v3, 0x1

    .line 2424
    .local v3, "overScrollHorizontal":Z
    :goto_3
    sget-boolean v9, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v9, :cond_1

    .line 2425
    const-string/jumbo v9, "horizontal-variable-list"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "toLeft: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", toRight: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_1
    add-int v2, p3, p1

    .line 2429
    .local v2, "newScrollX":I
    if-nez v3, :cond_2

    .line 2430
    const/16 p7, 0x0

    .line 2434
    :cond_2
    iget v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    const/high16 v10, -0x40000000    # -2.0f

    if-ne v9, v10, :cond_9

    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    .line 2435
    .local v1, "left":I
    :goto_4
    iget v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    const v10, 0x3fffffff    # 1.9999999f

    if-ne v9, v10, :cond_a

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    .line 2437
    .local v5, "right":I
    :goto_5
    sget-boolean v9, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v9, :cond_3

    .line 2438
    const-string/jumbo v9, "horizontal-variable-list"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "left: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const-string/jumbo v9, "horizontal-variable-list"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "right: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :cond_3
    const/4 v0, 0x0

    .line 2443
    .local v0, "clampedX":Z
    if-le v2, v5, :cond_b

    if-nez v7, :cond_b

    .line 2444
    move v2, v5

    .line 2445
    iget v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    sub-int p1, v9, p3

    .line 2446
    const/4 v0, 0x1

    .line 2447
    sget-boolean v9, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v9, :cond_4

    .line 2448
    const-string/jumbo v9, "horizontal-variable-list"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "clamped to: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_4
    :goto_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v2, v9, v0, v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->onOverScrolled(IIZZ)V

    .line 2460
    return v0

    .line 2416
    .end local v0    # "clampedX":Z
    .end local v1    # "left":I
    .end local v2    # "newScrollX":I
    .end local v3    # "overScrollHorizontal":Z
    .end local v4    # "overScrollMode":I
    .end local v5    # "right":I
    .end local v6    # "toLeft":Z
    .end local v7    # "toRight":Z
    :cond_5
    add-int/lit8 v9, v8, -0x1

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_0

    .line 2420
    .restart local v4    # "overScrollMode":I
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2421
    .restart local v6    # "toLeft":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2422
    .restart local v7    # "toRight":Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2434
    .restart local v2    # "newScrollX":I
    .restart local v3    # "overScrollHorizontal":Z
    :cond_9
    iget v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    sub-int v1, v9, p7

    goto :goto_4

    .line 2435
    .restart local v1    # "left":I
    :cond_a
    iget v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    add-int v5, v9, p7

    goto :goto_5

    .line 2450
    .restart local v0    # "clampedX":Z
    .restart local v5    # "right":I
    :cond_b
    if-ge v2, v1, :cond_4

    if-nez v6, :cond_4

    .line 2451
    move v2, v1

    .line 2452
    iget v9, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    sub-int p1, v9, p3

    .line 2453
    const/4 v0, 0x1

    .line 2454
    sget-boolean v9, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v9, :cond_4

    .line 2455
    const-string/jumbo v9, "horizontal-variable-list"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "clamped to: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1846
    if-eqz p1, :cond_0

    .line 1847
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->recycleVelocityTracker()V

    .line 1849
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1850
    return-void
.end method

.method public scrollTo(I)I
    .locals 18
    .param p1, "x"    # I

    .prologue
    .line 2228
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 2229
    const-string/jumbo v1, "horizontal-variable-list"

    const-string/jumbo v2, "can\'t scroll with no children"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    const/4 v1, 0x0

    .line 2267
    :goto_0
    return v1

    .line 2233
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v17

    .line 2234
    .local v17, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int v16, p1, v1

    .line 2235
    .local v16, "offset":I
    move/from16 v15, v16

    .line 2237
    .local v15, "delta":I
    sget-boolean v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v1, :cond_1

    .line 2238
    const-string/jumbo v1, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scrollTo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_1
    if-gez v15, :cond_3

    .line 2242
    add-int/lit8 v1, v17, -0x1

    neg-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2247
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 2248
    .local v4, "oldx":I
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 2250
    sget-boolean v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v1, :cond_2

    .line 2251
    const-string/jumbo v1, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scrollTo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int v2, v1, v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getScrollRange()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2256
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2244
    .end local v4    # "oldx":I
    :cond_3
    add-int/lit8 v1, v17, -0x1

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_1

    .line 2258
    .restart local v4    # "oldx":I
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1, v2}, Lit/sephiroth/android/library/widget/HorizontalListView;->scrollTo(II)V

    .line 2261
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMaxX:I

    const v2, 0x3fffffff    # 1.9999999f

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mMinX:I

    const/high16 v2, -0x40000000    # -2.0f

    if-eq v1, v2, :cond_6

    .line 2262
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getScrollRange()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2263
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2267
    :cond_6
    sub-int v1, v16, v15

    goto/16 :goto_0
.end method

.method public scrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2283
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 2284
    const-string/jumbo v3, "horizontal-variable-list"

    const-string/jumbo v4, "can\'t scroll with no children"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :goto_0
    return-void

    .line 2288
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getWidth()I

    move-result v2

    .line 2289
    .local v2, "width":I
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    sub-int v1, p1, v3

    .line 2290
    .local v1, "offset":I
    move v0, v1

    .line 2292
    .local v0, "delta":I
    sget-boolean v3, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v3, :cond_1

    .line 2293
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scrollTo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_1
    if-gez v0, :cond_3

    .line 2297
    add-int/lit8 v3, v2, -0x1

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2302
    :goto_1
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    add-int/2addr v3, v0

    iput v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    .line 2304
    sget-boolean v3, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v3, :cond_2

    .line 2305
    const-string/jumbo v3, "horizontal-variable-list"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scrollTo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_2
    iget v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mCurrentX:I

    const/4 v4, 0x0

    invoke-super {p0, v3, v4}, Lit/sephiroth/android/library/widget/HorizontalListView;->scrollTo(II)V

    goto/16 :goto_0

    .line 2299
    :cond_3
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 580
    sget-boolean v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 581
    const-string/jumbo v2, "horizontal-variable-list"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAdapter: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 586
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lit/sephiroth/android/library/widget/BaseAdapterExtended;

    if-eqz v2, :cond_3

    .line 587
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lit/sephiroth/android/library/widget/BaseAdapterExtended;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserverExtended:Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/BaseAdapterExtended;->unregisterDataSetObserverExtended(Lit/sephiroth/android/library/utils/DataSetObserverExtended;)V

    .line 592
    :goto_0
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->emptyRecycler()V

    .line 593
    const/4 v2, 0x0

    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    .line 596
    :cond_1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 597
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 599
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    .line 600
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    .line 602
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lit/sephiroth/android/library/widget/BaseAdapterExtended;

    if-eqz v2, :cond_4

    .line 603
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lit/sephiroth/android/library/widget/BaseAdapterExtended;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserverExtended:Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/BaseAdapterExtended;->registerDataSetObserverExtended(Lit/sephiroth/android/library/utils/DataSetObserverExtended;)V

    .line 607
    :goto_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    .line 609
    .local v1, "total":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    .line 610
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mViewTypeTable:Ljava/util/Hashtable;

    .line 611
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v1, :cond_5

    .line 616
    .end local v0    # "i":I
    .end local v1    # "total":I
    :cond_2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->reset()V

    .line 617
    return-void

    .line 589
    :cond_3
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 605
    :cond_4
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 612
    .restart local v0    # "i":I
    .restart local v1    # "total":I
    :cond_5
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mRecycleBin:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChildWidths:Ljava/util/List;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setDragScrollEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragScrollEnabled:Z

    .line 397
    return-void
.end method

.method public setDragTolerance(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2663
    iput p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDragTolerance:I

    .line 2664
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 2670
    iput p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAlignMode:I

    .line 2671
    return-void
.end method

.method public setIsDragging(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1810
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mIsDragging:Z

    .line 1811
    return-void
.end method

.method public setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;

    .prologue
    .line 498
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOnItemClicked:Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;

    .line 499
    return-void
.end method

.method public setOnItemDragListener(Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;

    .prologue
    .line 247
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mItemDragListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;

    .line 248
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 489
    .local p1, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;, "Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 490
    return-void
.end method

.method public setOnLayoutChangeListener(Lit/sephiroth/android/library/widget/HorizontalListView$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lit/sephiroth/android/library/widget/HorizontalListView$OnLayoutChangeListener;

    .prologue
    .line 255
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mLayoutChangeListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnLayoutChangeListener;

    .line 256
    return-void
.end method

.method public setOnScrollFinishedListener(Lit/sephiroth/android/library/widget/HorizontalListView$OnScrollFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lit/sephiroth/android/library/widget/HorizontalListView$OnScrollFinishedListener;

    .prologue
    .line 259
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollFinishedListener:Lit/sephiroth/android/library/widget/HorizontalListView$OnScrollFinishedListener;

    .line 260
    return-void
.end method

.method public setOnScrollListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .prologue
    .line 251
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 252
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 335
    iput p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOverScrollMode:I

    .line 337
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 338
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 340
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_0
.end method

.method protected setSelectedItem(Landroid/view/View;IZZ)V
    .locals 8
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "selected"    # Z
    .param p4, "fireEvent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2520
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    sget-object v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;->Single:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    if-ne v0, v1, :cond_1

    .line 2521
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2522
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 2523
    .local v7, "pos":I
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v6

    .line 2524
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 2525
    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2529
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "pos":I
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2532
    :cond_1
    if-eqz p3, :cond_4

    .line 2533
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2538
    :goto_0
    if-eqz p1, :cond_2

    .line 2539
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    .line 2542
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 2543
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2544
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2549
    :cond_3
    :goto_1
    return-void

    .line 2535
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mSelectedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 2546
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_1
.end method

.method public setSelectedPosition(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "fireEvent"    # Z

    .prologue
    const/4 v3, -0x1

    .line 434
    iget v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mAdapterItemCount:I

    if-lt p1, v1, :cond_0

    .line 435
    const-string/jumbo v1, "horizontal-variable-list"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void

    .line 439
    :cond_0
    if-ne p1, v3, :cond_1

    .line 440
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedItem(Landroid/view/View;IZZ)V

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedItem(Landroid/view/View;IZZ)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 654
    return-void
.end method

.method public setSelectionMode(Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;)V
    .locals 0
    .param p1, "mode"    # Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    .prologue
    .line 274
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mChoiceMode:Lit/sephiroth/android/library/widget/HorizontalVariableListView$SelectionMode;

    .line 275
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2483
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2493
    :goto_0
    return-void

    .line 2487
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    if-nez v0, :cond_1

    .line 2488
    new-instance v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;-><init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    .line 2491
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mFlingScroller:Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$FlingScroller;->start(II)V

    goto :goto_0
.end method
