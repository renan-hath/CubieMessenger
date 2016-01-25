.class Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ForumImagePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->send()V
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
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

.field final synthetic val$article:Lcom/liquable/nemo/forum/model/article/Article;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$fileUri:Landroid/net/Uri;

.field final synthetic val$forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    iput-object p3, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    iput-object p4, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$article:Lcom/liquable/nemo/forum/model/article/Article;

    iput-object p5, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$content:Ljava/lang/String;

    iput-object p6, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$fileUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/ArticleReply;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 454
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$article:Lcom/liquable/nemo/forum/model/article/Article;

    .line 455
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$content:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->val$fileUri:Landroid/net/Uri;

    .line 454
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/forum/ForumDaemon;->createPictureArticleReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/liquable/nemo/forum/model/article/ArticleReply;

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
    .line 449
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/forum/model/article/ArticleReply;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$800(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;I)V

    .line 463
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$900(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;I)V

    .line 470
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 3
    .param p1, "result"    # Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ARTICLE_REPLY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 482
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 483
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 449
    check-cast p1, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->postExecuteSuccess(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    return-void
.end method
