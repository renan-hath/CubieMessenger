.class Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ViewSpaceFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->inviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

.field final synthetic val$accountDto:Lcom/liquable/nemo/model/account/AccountDto;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/model/account/AccountDto;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    iput-object p3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->val$accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    iput-object p4, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->val$activity:Landroid/support/v4/app/FragmentActivity;

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
    .line 104
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->val$accountDto:Lcom/liquable/nemo/model/account/AccountDto;

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
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->resend:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->inviteFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)V

    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$400(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;I)V

    goto :goto_0
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->this$0:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0d047b

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
