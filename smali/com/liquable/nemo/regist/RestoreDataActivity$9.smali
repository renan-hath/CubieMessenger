.class Lcom/liquable/nemo/regist/RestoreDataActivity$9;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;->step7ProcessMissingMultiChatGroups(Ljava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/account/AccountDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

.field final synthetic val$missingAccountIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    iput-object p3, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->val$missingAccountIds:Ljava/util/List;

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
    .line 296
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->val$missingAccountIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->val$missingAccountIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/model/RegistrationManager;->listAccountsByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const-string/jumbo v1, "step7ProcessMissingMultiChatGroups"

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$600(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const-string/jumbo v1, "step7ProcessMissingMultiChatGroups"

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$600(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 296
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->successAndReturn()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$500(Lcom/liquable/nemo/regist/RestoreDataActivity;)V

    .line 343
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v9, "missingAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/model/account/AccountDto;

    .line 329
    .local v7, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    new-instance v0, Lcom/liquable/nemo/friend/model/Account$Builder;

    invoke-virtual {v7}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v7}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v7}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v3

    sget-object v5, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 333
    invoke-virtual {v7}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/friend/model/Account$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v7}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v7}, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v8

    .line 338
    .local v8, "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    invoke-virtual {v8}, Lcom/liquable/nemo/friend/model/Account$Builder;->build()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    .end local v7    # "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    .end local v8    # "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->step8RecoverOneToOneChatGroupsAndStop(Ljava/util/List;)V
    invoke-static {v0, v9}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$1200(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V

    goto :goto_0
.end method
