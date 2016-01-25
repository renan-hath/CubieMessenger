.class Lcom/liquable/nemo/notice/NoticeListFragment$4;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 180
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$4;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$4;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    # getter for: Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;
    invoke-static {v1}, Lcom/liquable/nemo/notice/NoticeListFragment;->access$100(Lcom/liquable/nemo/notice/NoticeListFragment;)Lcom/liquable/nemo/notice/NoticeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/notice/NoticeListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/BaseNotice;

    .line 193
    .local v0, "notice":Lcom/liquable/nemo/notice/BaseNotice;
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$4;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/notice/NoticeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/notice/NoticeListFragment$NoticeListCallback;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/notice/NoticeListFragment$NoticeListCallback;->onNoticeClick(Lcom/liquable/nemo/notice/BaseNotice;)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/notice/BaseNotice;->setRead(Z)V

    .line 195
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/notice/model/NoticeManager;->updateNotice(Lcom/liquable/nemo/notice/BaseNotice;)V

    goto :goto_0
.end method
