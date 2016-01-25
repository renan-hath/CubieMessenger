.class Lcom/liquable/nemo/forum/CreateBoardFragment$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "CreateBoardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/CreateBoardFragment;->lambda$onCreateView$35(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

.field final synthetic val$boardDescription:Ljava/lang/String;

.field final synthetic val$boardTitle:Ljava/lang/String;

.field final synthetic val$selectedCategory:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/CreateBoardFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    iput-object p3, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->val$boardTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->val$boardDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->val$selectedCategory:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->val$boardTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->val$boardDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->val$selectedCategory:Ljava/lang/String;

    .line 159
    invoke-static {v3}, Lcom/liquable/nemo/model/forum/BoardCategory;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    .line 160
    # getter for: Lcom/liquable/nemo/forum/CreateBoardFragment;->iconUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/liquable/nemo/forum/CreateBoardFragment;->access$100(Lcom/liquable/nemo/forum/CreateBoardFragment;)Landroid/net/Uri;

    move-result-object v4

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/forum/ForumDaemon;->createForumBoard(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Landroid/net/Uri;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

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
    .line 152
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/CreateBoardFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->access$200(Lcom/liquable/nemo/forum/CreateBoardFragment;I)V

    .line 166
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/CreateBoardFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->access$300(Lcom/liquable/nemo/forum/CreateBoardFragment;I)V

    .line 171
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 3
    .param p1, "result"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 180
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/model/forum/BoardCategory;->parse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->createForumBoard(Lcom/liquable/nemo/model/forum/BoardCategory;)V

    .line 182
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->creator:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->favoriteBoardFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "forumBoardDto"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 186
    iget-object v1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/CreateBoardFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 187
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->postExecuteSuccess(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    return-void
.end method
