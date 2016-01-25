.class Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p2, "x1"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 133
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v3, 0x1

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z
    invoke-static {v2, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$002(Lcom/liquable/nemo/staggerd/StaggeredGridView;Z)Z

    .line 134
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I
    invoke-static {v2, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$102(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    .line 137
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRecycler:Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$300(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->clearTransientViews()V

    .line 139
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mHasStableIds:Z
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$500(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 142
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # invokes: Lcom/liquable/nemo/staggerd/StaggeredGridView;->recycleAllViews()V
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$600(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    .line 145
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mColCount:I
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$700(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v0

    .line 146
    .local v0, "colCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$800(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I
    invoke-static {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$900(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I

    move-result-object v3

    aget v3, v3, v1

    aput v3, v2, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "colCount":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I
    invoke-static {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$100(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I
    invoke-static {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstAdapterId:J
    invoke-static {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1100(Lcom/liquable/nemo/staggerd/StaggeredGridView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I
    invoke-static {v2, v6}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1002(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    .line 154
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemTops:[I
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$900(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I

    move-result-object v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    .line 155
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$800(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I

    move-result-object v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    .line 157
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)[I

    move-result-object v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->requestLayout()V

    .line 165
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
