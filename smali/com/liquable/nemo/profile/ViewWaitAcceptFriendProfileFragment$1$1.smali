.class Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ViewWaitAcceptFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;

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
    .line 89
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->inviteFriend(Lcom/liquable/nemo/friend/model/Account;)Z

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
    .line 85
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->access$100(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;I)V

    .line 95
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->resend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->inviteFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)V

    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->access$200(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;I)V

    .line 101
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d047b

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1$1;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
