.class Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "RemoveChatGroupMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

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
    .line 125
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/NotChatGroupOwnerException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v2, v2, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$removedAccount:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->removeMemberByOwner(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->showDialog(I)V

    .line 137
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->removeDialog(I)V

    .line 142
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 3
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 146
    instance-of v1, p1, Lcom/liquable/nemo/model/NotChatGroupOwnerException;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "resId":I
    iget-object v1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    iget-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v2, v2, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->finish()V

    .line 151
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->val$context:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    const v1, 0x7f0d043b

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 157
    iget-object v0, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2$1;->this$1:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;->this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->finish()V

    .line 158
    return-void
.end method
