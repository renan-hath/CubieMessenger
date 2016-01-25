.class Lcom/liquable/nemo/regist/RestoreDataActivity$4;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;->step2ListFriendsFromServer()V
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
        "Lcom/liquable/nemo/model/friend/FriendDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$4;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

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
    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/friend/FriendDto;",
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
    .line 154
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/regist/model/RegistrationManager;->listFriendsWithState()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$4;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const-string/jumbo v1, "step2ListFriendsFromServer"

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$600(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$4;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const-string/jumbo v1, "step2ListFriendsFromServer"

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$600(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$4;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/friend/FriendDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/friend/FriendDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$4;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->step3RecoverFriends(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$700(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V

    .line 173
    return-void
.end method
