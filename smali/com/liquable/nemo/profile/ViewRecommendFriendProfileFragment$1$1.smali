.class Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ViewRecommendFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

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
    .line 53
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->val$friend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->inviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)Z

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
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V

    .line 59
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->inviteFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)V

    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->access$100(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V

    .line 65
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d047b

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->access$200(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1$1;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
