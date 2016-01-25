.class Lcom/liquable/nemo/forum/ArticleListFragment$1$1;
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
    .line 78
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

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
    .line 83
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

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
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 1
    .param p1, "result"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # setter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$002(Lcom/liquable/nemo/forum/ArticleListFragment;Lcom/liquable/nemo/model/forum/ForumBoardDto;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleListFragment$1;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->loadBoardInfoView()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$1$1;->postExecuteSuccess(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    return-void
.end method
