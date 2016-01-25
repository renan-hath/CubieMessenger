.class Lcom/liquable/nemo/notice/NoticeListFragment$5;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/notice/NoticeListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$5;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

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
    .line 207
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 211
    packed-switch p2, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment$5;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    # getter for: Lcom/liquable/nemo/notice/NoticeListFragment;->allNotices:Ljava/util/List;
    invoke-static {v0}, Lcom/liquable/nemo/notice/NoticeListFragment;->access$400(Lcom/liquable/nemo/notice/NoticeListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment$5;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    # invokes: Lcom/liquable/nemo/notice/NoticeListFragment;->loadMoreItems()V
    invoke-static {v0}, Lcom/liquable/nemo/notice/NoticeListFragment;->access$500(Lcom/liquable/nemo/notice/NoticeListFragment;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
