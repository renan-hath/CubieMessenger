.class Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "CreateArticleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/CreateArticleFragment$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

.field final synthetic val$boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/CreateArticleFragment$1;Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/CreateArticleFragment$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iput-object p3, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->val$boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    iput-object p4, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->val$title:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->val$boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->val$title:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v4, v4, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    .line 145
    # getter for: Lcom/liquable/nemo/forum/CreateArticleFragment;->pictureUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/liquable/nemo/forum/CreateArticleFragment;->access$000(Lcom/liquable/nemo/forum/CreateArticleFragment;)Landroid/net/Uri;

    move-result-object v4

    .line 142
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/forum/ForumDaemon;->createNormalArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/liquable/nemo/forum/model/article/Article;

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
    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/CreateArticleFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/CreateArticleFragment;->access$100(Lcom/liquable/nemo/forum/CreateArticleFragment;I)V

    .line 151
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/CreateArticleFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/CreateArticleFragment;->access$200(Lcom/liquable/nemo/forum/CreateArticleFragment;I)V

    .line 156
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 3
    .param p1, "result"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    # getter for: Lcom/liquable/nemo/forum/CreateArticleFragment;->pictureUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->access$000(Lcom/liquable/nemo/forum/CreateArticleFragment;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createForumArticle(Z)V

    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Lcom/liquable/nemo/forum/CreateArticleFragment$ResultIntent;

    invoke-direct {v2, p1}, Lcom/liquable/nemo/forum/CreateArticleFragment$ResultIntent;-><init>(Lcom/liquable/nemo/forum/model/article/Article;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->this$1:Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/Article;)V

    return-void
.end method
