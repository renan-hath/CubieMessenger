.class Lcom/liquable/nemo/forum/BoardListByCategoryFragment$2;
.super Ljava/lang/Object;
.source "BoardListByCategoryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 83
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 92
    .local v0, "boardDto":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;

    iget-object v3, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$2;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->category:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 92
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v0    # "boardDto":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    :cond_0
    return-void
.end method
