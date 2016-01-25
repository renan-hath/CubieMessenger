.class Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ViewWaitConfirmFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->acceptInvite(Lcom/liquable/nemo/friend/model/Account;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    iput-object p3, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->confirmFriendInvitation(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;I)V

    .line 34
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->access$100(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;I)V

    .line 39
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d011c

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->profileCallback:Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;->goToFriendProfile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
