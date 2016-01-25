.class Lcom/liquable/nemo/main/MainRecommendForumView$5;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "MainRecommendForumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainRecommendForumView;->tryListHotArticles(Z)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/forum/model/HotArticle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainRecommendForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainRecommendForumView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainRecommendForumView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainRecommendForumView$5;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/HotArticle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 276
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$000(Lcom/liquable/nemo/main/MainRecommendForumView;)Lcom/liquable/nemo/forum/HotArticleListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->listHotArticles(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$200(Lcom/liquable/nemo/main/MainRecommendForumView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 282
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$200(Lcom/liquable/nemo/main/MainRecommendForumView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->boardCategoryListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$300(Lcom/liquable/nemo/main/MainRecommendForumView;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/main/MainRecommendForumView;->listHotArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$402(Lcom/liquable/nemo/main/MainRecommendForumView;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 289
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainRecommendForumView$5;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/HotArticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/HotArticle;>;"
    iget-object v1, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/liquable/nemo/main/MainRecommendForumView;->hasMore:Z
    invoke-static {v1, v0}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$502(Lcom/liquable/nemo/main/MainRecommendForumView;Z)Z

    .line 294
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView$5;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    # getter for: Lcom/liquable/nemo/main/MainRecommendForumView;->hotArticleListAdapter:Lcom/liquable/nemo/forum/HotArticleListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$000(Lcom/liquable/nemo/main/MainRecommendForumView;)Lcom/liquable/nemo/forum/HotArticleListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/HotArticleListAdapter;->addAllHotArticles(Ljava/util/List;)V

    .line 295
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
