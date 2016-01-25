.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleReplyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleAndBoard()V
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
        "Landroid/util/Pair",
        "<",
        "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
        "Lcom/liquable/nemo/forum/model/article/Article;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

.field final synthetic val$articleId:Ljava/lang/String;

.field final synthetic val$boardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iput-object p3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->val$boardId:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->val$articleId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
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
    .line 567
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->val$boardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/ForumDaemon;->findForumBoardById(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->val$boardId:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->val$articleId:Ljava/lang/String;

    .line 568
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/forum/ForumDaemon;->findArticleById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    .line 563
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2102(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 579
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->loadArticleProgressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 584
    instance-of v0, p1, Lcom/liquable/nemo/model/ForumArticleNotFoundException;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0296

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 586
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 588
    :cond_0
    return-void
.end method

.method protected postExecuteSuccess(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1, v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$002(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/model/forum/ForumBoardDto;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 596
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v1, v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$102(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/forum/model/article/Article;)Lcom/liquable/nemo/forum/model/article/Article;

    .line 598
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    if-nez v0, :cond_3

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0296

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 600
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->updateUI()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2200(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    .line 604
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->tryListReply()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$600(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    .line 605
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseFragmentActivity;->invalidateOptionsMenu()V

    .line 606
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$ArticleReplyListCallback;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$ArticleReplyListCallback;->setParentBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 563
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$14;->postExecuteSuccess(Landroid/util/Pair;)V

    return-void
.end method
