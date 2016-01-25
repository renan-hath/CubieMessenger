.class Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p2, "x1"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$1;

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public addScrap(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;

    .line 503
    .local v1, "lp":Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 505
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 507
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v4, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->position:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 512
    .local v0, "childCount":I
    iget v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-le v0, v3, :cond_3

    .line 513
    iput v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mMaxScrap:I

    .line 516
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v4, v1, Lcom/liquable/nemo/staggerd/StaggeredGridView$LayoutParams;->viewType:I

    aget-object v2, v3, v4

    .line 517
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-ge v3, v4, :cond_1

    .line 518
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 523
    iget v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 524
    .local v1, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 525
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 530
    :cond_1
    return-void
.end method

.method public clearTransientViews()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 536
    :cond_0
    return-void
.end method

.method public getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 539
    iget-object v3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .line 540
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    const/4 v1, 0x0

    .line 547
    :goto_0
    return-object v1

    .line 544
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 545
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 546
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 551
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 552
    const/4 v0, 0x0

    .line 559
    :cond_0
    :goto_0
    return-object v0

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 556
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setViewTypeCount(I)V
    .locals 5
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 563
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 564
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Must have at least one view type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " types reported)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_0
    iget v2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v2, :cond_1

    .line 579
    :goto_0
    return-void

    .line 572
    :cond_1
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 574
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 577
    :cond_2
    iput p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 578
    iput-object v1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    goto :goto_0
.end method
