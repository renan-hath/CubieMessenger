.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleReplyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->reportAbuseArticle(I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iput p3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->val$which:I

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
    .line 478
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->values()[Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->val$which:I

    aget-object v0, v1, v2

    .line 483
    .local v0, "forumAbuseReason":Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v3}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/liquable/nemo/forum/ForumDaemon;->reportAbuseArticle(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Lcom/liquable/nemo/model/forum/ForumAbuseReason;)V

    .line 484
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1500(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V

    .line 490
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1600(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V

    .line 495
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 478
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 499
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 500
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardReloadAfterReportAbuseArticle(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0443

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 502
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$12;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 503
    return-void
.end method
