.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private removeFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 532
    .local v0, "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->isSameCubieAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->val$account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->removeFriend(Ljava/lang/String;)V

    .line 539
    .end local v0    # "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    :cond_1
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
    .line 498
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->val$account:Lcom/liquable/nemo/model/account/AccountDto;

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
    .line 494
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 504
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 509
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "e"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 514
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 518
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 528
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->twitter:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->inviteFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)V

    .line 524
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->val$account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->removeFriend(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d047b

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 494
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2$1;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
