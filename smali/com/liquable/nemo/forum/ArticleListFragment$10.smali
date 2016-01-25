.class Lcom/liquable/nemo/forum/ArticleListFragment$10;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ArticleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->reportAbuseBoard(I)V
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

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    iput p3, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->val$which:I

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
    .line 503
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->values()[Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->val$which:I

    aget-object v0, v1, v2

    .line 508
    .local v0, "forumAbuseReason":Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/forum/ForumDaemon;->reportAbuseBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/model/forum/ForumAbuseReason;)V

    .line 509
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1600(Lcom/liquable/nemo/forum/ArticleListFragment;I)V

    .line 515
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1700(Lcom/liquable/nemo/forum/ArticleListFragment;I)V

    .line 520
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 503
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ArticleListFragment$10;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 524
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$000(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardReloadAfterReportAbuseBoard(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0443

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 526
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$10;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 527
    return-void
.end method
