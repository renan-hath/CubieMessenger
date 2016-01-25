.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleReplyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->sendWithText(Ljava/lang/String;)V
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
        "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iput-object p3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->val$content:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/ArticleReply;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v1, v1, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v2, v2, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 387
    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->article:Lcom/liquable/nemo/forum/model/article/Article;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->val$content:Ljava/lang/String;

    .line 386
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/forum/ForumDaemon;->createTextArticleReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/ArticleReply;

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
    .line 381
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/ArticleReply;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$800(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V

    .line 394
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$900(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->closeIfVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 399
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1000(Lcom/liquable/nemo/forum/ArticleReplyListFragment;I)V

    .line 400
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createForumArticleReply(Z)V

    .line 413
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListAdapter:Lcom/liquable/nemo/forum/ArticleReplyListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1100(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/forum/ArticleReplyListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListAdapter;->addLocalReply(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    .line 414
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1200(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v1, v1, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->articleReplyListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1200(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$900(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->hideInputWidgetKeyboard()V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    return-void
.end method
