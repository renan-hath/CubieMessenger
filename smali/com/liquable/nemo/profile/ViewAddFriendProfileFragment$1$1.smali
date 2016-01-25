.class Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ViewAddFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

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
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->addFriend(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->profile:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)V

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;I)V

    .line 69
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->access$100(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;I)V

    .line 74
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 78
    new-instance v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1$1;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1$1;-><init>(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 97
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1$1;->execute([Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0055

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 100
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/friend/model/Account;

    .line 102
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v1, v2}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->close()V
    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->access$200(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;)V

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
