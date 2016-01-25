.class Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;
.super Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 467
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p2, "x1"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$1;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 474
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z
    invoke-static {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 479
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 480
    .local v1, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mItemCount:I
    invoke-static {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$100(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 482
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I
    invoke-static {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 487
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 488
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
