.class Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SearchCubieIdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/SearchCubieIdFragment;->search(Ljava/lang/String;)V
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
        "Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

.field final synthetic val$cubieId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    iput-object p3, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->val$cubieId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private delayReturn()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x5dc

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # getter for: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->searchStartTime:J
    invoke-static {v4}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$200(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 148
    .local v0, "searchTime":J
    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # getter for: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->searchStartTime:J
    invoke-static {v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$200(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 150
    sub-long v2, v6, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private goToInviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 3
    .param p1, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->search_cubie_id:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-static {v1, p1, v2}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/model/account/AccountDto;Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->startActivity(Landroid/content/Intent;)V

    .line 184
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->finishIfFromExternalIntent()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$300(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->val$cubieId:Ljava/lang/String;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->delayReturn()V

    .line 159
    invoke-static {}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->create()Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    move-result-object v2

    .line 177
    :goto_0
    return-object v2

    .line 162
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v3, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->val$cubieId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByUsername(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 163
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-eq v2, v3, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->delayReturn()V

    .line 167
    invoke-static {v0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    move-result-object v2

    goto :goto_0

    .line 170
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v3, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->val$cubieId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendCandidateByUsername(Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v1

    .line 171
    .local v1, "found":Lcom/liquable/nemo/model/account/AccountDto;
    if-eqz v1, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->delayReturn()V

    .line 173
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->create(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    move-result-object v2

    goto :goto_0

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->delayReturn()V

    .line 177
    const/4 v2, 0x0

    goto :goto_0
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
    .line 145
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$400(Lcom/liquable/nemo/friend/SearchCubieIdFragment;I)V

    .line 190
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$500(Lcom/liquable/nemo/friend/SearchCubieIdFragment;I)V

    .line 195
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;)V
    .locals 6
    .param p1, "result"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 203
    :cond_0
    if-nez p1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d01b1

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 205
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->finishIfFromExternalIntent()V
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$300(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->type:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    sget-object v2, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;->ME:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    if-ne v1, v2, :cond_2

    .line 210
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/profile/ProfileSettingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->startActivity(Landroid/content/Intent;)V

    .line 211
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->finishIfFromExternalIntent()V
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$300(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->type:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    sget-object v2, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;->SERVER:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    if-ne v1, v2, :cond_3

    .line 216
    iget-object v1, p1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->goToInviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)V

    .line 217
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->finishIfFromExternalIntent()V
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$300(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->account:Lcom/liquable/nemo/friend/model/Account;

    .line 222
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$4;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 242
    :goto_1
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    # invokes: Lcom/liquable/nemo/friend/SearchCubieIdFragment;->finishIfFromExternalIntent()V
    invoke-static {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->access$300(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V

    goto :goto_0

    .line 224
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 227
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 228
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 231
    :pswitch_2
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 232
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v2, v3}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 235
    :pswitch_3
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->this$0:Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    const v3, 0x7f0d04d8

    .line 236
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->postExecuteSuccess(Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;)V

    return-void
.end method
