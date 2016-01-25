.class Lcom/liquable/nemo/forum/BoardCategoryListFragment$3;
.super Ljava/lang/Object;
.source "BoardCategoryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToBoardList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$3;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

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
    .line 174
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 175
    .local v0, "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$3;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;

    iget-object v3, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$3;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->search:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 175
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method
