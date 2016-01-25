.class Lcom/liquable/nemo/friend/RecommendFriendFragment$3;
.super Landroid/os/AsyncTask;
.source "RecommendFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/RecommendFriendFragment;->reloadRecommendFriend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/RecommendFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/RecommendFriendFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->listAllRecommendFriends()Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "recommendFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/FriendManager;->listWaitAcceptFriendsAndFriends()Ljava/util/List;

    move-result-object v4

    .line 117
    .local v4, "waitAcceptFriendsAndFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 118
    .local v2, "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 119
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 120
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v2    # "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    :cond_2
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    # getter for: Lcom/liquable/nemo/friend/RecommendFriendFragment;->friendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->access$000(Lcom/liquable/nemo/friend/RecommendFriendFragment;)Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->reset(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/friend/RecommendFriendFragment$3;->this$0:Lcom/liquable/nemo/friend/RecommendFriendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/friend/RecommendFriendFragment;->isLoadingRecommendList:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/RecommendFriendFragment;->access$102(Lcom/liquable/nemo/friend/RecommendFriendFragment;Z)Z

    .line 133
    return-void
.end method
