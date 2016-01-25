.class Lcom/liquable/nemo/forum/ArticleListFragment$1$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/ArticleListFragment$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->findForumBoardById(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

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
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v1

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->setFavoriteIcon(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$200(Lcom/liquable/nemo/forum/ArticleListFragment;Z)V

    .line 118
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$1$2;->postExecuteSuccess(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    return-void
.end method
