.class Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ViewRecommendFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

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
    .line 85
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->val$friend:Lcom/liquable/nemo/model/account/AccountDto;

    .line 90
    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->addFilterdRecommendFriend(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->access$300(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V

    .line 97
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->access$400(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V

    .line 102
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    .line 110
    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0183

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v4, v4, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->val$friend:Lcom/liquable/nemo/model/account/AccountDto;

    .line 111
    invoke-virtual {v4}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 110
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;->this$0:Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->access$500(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;)V

    goto :goto_0
.end method
