.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$6;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

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
    .line 338
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 342
    if-eqz p2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->tryListReply()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$600(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    goto :goto_0
.end method
