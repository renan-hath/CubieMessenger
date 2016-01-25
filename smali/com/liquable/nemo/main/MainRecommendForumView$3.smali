.class Lcom/liquable/nemo/main/MainRecommendForumView$3;
.super Ljava/lang/Object;
.source "MainRecommendForumView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainRecommendForumView;->createViewForRecommendView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainRecommendForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainRecommendForumView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/main/MainRecommendForumView$3;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

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
    .line 122
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/HotArticle;

    .line 127
    .local v0, "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v2

    instance-of v2, v2, Lcom/liquable/nemo/forum/model/article/UnknownArticle;

    if-eqz v2, :cond_1

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    sget-object v3, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UPGRADE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 129
    invoke-virtual {v3}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView$3;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainRecommendForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v0    # "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v0    # "hotArticle":Lcom/liquable/nemo/forum/model/HotArticle;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView$3;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$000(Lcom/liquable/nemo/main/MainRecommendForumView;)Lcom/liquable/nemo/forum/HotArticleListAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->markAsViewed(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->hot:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    .line 139
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/model/forum/BoardCategory;->parse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v4

    .line 140
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardId()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-interface {v2, v3, v4, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enterForumBoard(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/liquable/nemo/main/MainRecommendForumView$3;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    new-instance v3, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;

    iget-object v4, p0, Lcom/liquable/nemo/main/MainRecommendForumView$3;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-virtual {v4}, Lcom/liquable/nemo/main/MainRecommendForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 143
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardId()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/HotArticle;->getArticle()Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v6

    invoke-virtual {v6}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/main/MainRecommendForumView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
