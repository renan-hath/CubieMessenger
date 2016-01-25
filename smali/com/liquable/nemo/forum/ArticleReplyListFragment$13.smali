.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleReplyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->tryListReply()V
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
        "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
        ">;>;"
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
    .line 514
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

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
    .line 514
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
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
    .line 518
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 519
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 520
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->getLastReplyId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1e

    .line 518
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/forum/ForumDaemon;->listArticleRepliesByArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->progressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1700(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->listReplyTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1802(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 532
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->progressBar:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1700(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 537
    instance-of v0, p1, Lcom/liquable/nemo/model/ForumArticleNotFoundException;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0296

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 539
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardReloadArticleList(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 542
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 514
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/article/ArticleReply;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->hasMore:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1902(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Z)Z

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$13;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->addRemoteReplies(Ljava/util/List;)V

    goto :goto_0
.end method
