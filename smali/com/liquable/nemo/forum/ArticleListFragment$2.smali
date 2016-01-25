.class Lcom/liquable/nemo/forum/ArticleListFragment$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->favoriteBoard(Ljava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$menu:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    iput-object p3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->val$menu:Landroid/view/View;

    iput-object p4, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->val$callback:Ljava/lang/Runnable;

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
    .line 165
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->from:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$400(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->favoriteBoardFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 169
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->favoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->val$menu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    return-void
.end method

.method protected postExecute()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v1

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->setFavoriteIcon(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$200(Lcom/liquable/nemo/forum/ArticleListFragment;Z)V

    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->val$menu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 3
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nValues()[Ljava/lang/Object;

    move-result-object v2

    .line 187
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$2;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0205

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 200
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
