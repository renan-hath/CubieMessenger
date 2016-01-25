.class Lcom/liquable/nemo/regist/RestoreDataActivity$10;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;->step8RecoverOneToOneChatGroupsAndStop(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

.field final synthetic val$accounts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    iput-object p3, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->val$accounts:Ljava/util/List;

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
    .line 349
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 352
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->val$accounts:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    .line 353
    # getter for: Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;
    invoke-static {v2}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$300(Lcom/liquable/nemo/regist/RestoreDataActivity;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/regist/model/RegistrationManager;->createInvisibleOneToOneChatGroups(Ljava/util/List;Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const-string/jumbo v1, "step8RecoverOneToOneChatGroupsAndStop"

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$600(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const-string/jumbo v1, "step8RecoverOneToOneChatGroupsAndStop"

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$600(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 349
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 372
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->val$accounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/model/RegistrationManager;->saveAccounts(Ljava/util/List;)V

    .line 373
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->successAndReturn()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$500(Lcom/liquable/nemo/regist/RestoreDataActivity;)V

    .line 374
    return-void
.end method
