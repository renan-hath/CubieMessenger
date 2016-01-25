.class Lcom/liquable/nemo/forum/ArticleListFragment$11;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->tryListArticles()V
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
        "Lcom/liquable/nemo/forum/model/article/Article;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

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
    .line 556
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$11;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 562
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    .line 563
    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ArticleListAdapter;->getLastArticleId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e

    .line 562
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/forum/ForumDaemon;->listArticlesByBoard(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->progressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1800(Lcom/liquable/nemo/forum/ArticleListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->progressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1800(Lcom/liquable/nemo/forum/ArticleListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->listArticlesTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1902(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 576
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 556
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$11;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/article/Article;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->hasMoreArticles:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$2002(Lcom/liquable/nemo/forum/ArticleListFragment;Z)Z

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->articleListAdapter:Lcom/liquable/nemo/forum/ArticleListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$300(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/forum/ArticleListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/ArticleListAdapter;->addAll(Ljava/util/List;)V

    .line 586
    return-void
.end method
