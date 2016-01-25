.class Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "AddMemberToExistGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

.field final synthetic val$selectedMemberIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    iput-object p3, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->val$selectedMemberIds:Ljava/util/List;

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
    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 116
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v3, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->val$selectedMemberIds:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->listFriendsByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 118
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v4, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    iget-object v4, v4, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    # getter for: Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->topic:Ljava/lang/String;
    invoke-static {v4}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->access$200(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->addMember(Ljava/lang/String;Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0

    .line 120
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->showDialog(I)V

    .line 126
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->removeDialog(I)V

    .line 131
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->setResult(I)V

    .line 136
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->setResult(I)V

    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->this$1:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->finish()V

    .line 142
    return-void
.end method
