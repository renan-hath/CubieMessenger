.class Lcom/liquable/nemo/forum/ArticleListFragment$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerItemView(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 223
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/home/HomeServerClient;->findForumBoardBannerItem(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 223
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$3;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->loadBannerRpcTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$502(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 234
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;)V
    .locals 5
    .param p1, "result"    # Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    const/4 v3, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
    invoke-static {v2, v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$602(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;)Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    .line 242
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    invoke-static {v2, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$702(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    .line 243
    instance-of v2, p1, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 244
    check-cast v1, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;

    .line 245
    .local v1, "imageBannerItemDto":Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    new-instance v3, Lcom/liquable/nemo/forum/view/ImageBannerItemView;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/liquable/nemo/forum/view/ImageBannerItemView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;)V

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
    invoke-static {v2, v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$602(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;)Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    .line 250
    .end local v1    # "imageBannerItemDto":Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->headerView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$800(Lcom/liquable/nemo/forum/ArticleListFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$600(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 251
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->reloadBannerView()V
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$900(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    goto :goto_0

    .line 246
    :cond_2
    instance-of v2, p1, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;

    .line 248
    .local v0, "buttonBannerItemDto":Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    new-instance v3, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleListFragment$3;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;)V

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemView:Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
    invoke-static {v2, v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$602(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;)Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;

    goto :goto_1
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$3;->postExecuteSuccess(Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;)V

    return-void
.end method
