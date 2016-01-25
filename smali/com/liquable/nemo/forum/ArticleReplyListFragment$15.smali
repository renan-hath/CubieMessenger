.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleReplyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticle()V
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
        "Lcom/liquable/nemo/forum/model/article/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 621
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 622
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/forum/ForumDaemon;->findArticleById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/Article;

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
    .line 617
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2102(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 633
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 638
    instance-of v0, p1, Lcom/liquable/nemo/model/ForumArticleNotFoundException;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0296

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 640
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 642
    :cond_0
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$102(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/forum/model/article/Article;)Lcom/liquable/nemo/forum/model/article/Article;

    .line 652
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    if-nez v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0296

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 654
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->updateUI()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2200(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    .line 658
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->tryListReply()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$600(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 617
    check-cast p1, Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$15;->postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/Article;)V

    return-void
.end method
