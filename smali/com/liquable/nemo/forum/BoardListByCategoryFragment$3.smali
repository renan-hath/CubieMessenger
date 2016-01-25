.class Lcom/liquable/nemo/forum/BoardListByCategoryFragment$3;
.super Ljava/lang/Object;
.source "BoardListByCategoryFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$3;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 110
    if-eqz p2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$3;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # invokes: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->tryLoadBoards()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$100(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)V

    goto :goto_0
.end method
