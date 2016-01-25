.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleReplyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 694
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v1, v1, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 695
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/forum/ForumDaemon;->likeArticle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 690
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 705
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getLikeCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 706
    .local v0, "value":J
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->val$likeCount:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->val$likeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 708
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->val$likeCount:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 709
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->likeRpcAsyncTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 701
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "likeSuccess"    # Ljava/lang/Boolean;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->triggerLikeIncrease:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$2302(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Z)Z

    .line 714
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 690
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
