.class Lcom/liquable/nemo/forum/ArticleListFragment$6;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 377
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$700(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 378
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 380
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->bannerItemDto:Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$700(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;

    move-result-object v3

    invoke-interface {v3}, Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;->getAndroidClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "androidClickUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->startActivity(Landroid/content/Intent;)V

    .line 383
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/forum/ArticleListFragment$6$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$6$1;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment$6;)V

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/RpcAsyncTask;->executeSilently(Landroid/content/Context;Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;)V

    .line 410
    .end local v0    # "androidClickUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/forum/model/article/Article;

    .line 398
    .local v1, "article":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v3

    instance-of v3, v3, Lcom/liquable/nemo/forum/model/article/UnknownArticle;

    if-eqz v3, :cond_2

    .line 399
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    sget-object v4, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UPGRADE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 400
    invoke-virtual {v4}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 404
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/ArticleListAdapter;->markAsViewed(Ljava/lang/String;)V

    .line 405
    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    new-instance v4, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;

    iget-object v5, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    .line 406
    invoke-virtual {v5}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/forum/ArticleListFragment$6;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    .line 407
    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v6}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V

    .line 405
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/forum/ArticleListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
