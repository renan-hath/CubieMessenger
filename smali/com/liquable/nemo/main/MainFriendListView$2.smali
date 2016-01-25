.class Lcom/liquable/nemo/main/MainFriendListView$2;
.super Landroid/os/AsyncTask;
.source "MainFriendListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainFriendListView;->doUpdate()V
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
        "[",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainFriendListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainFriendListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$2;->doInBackground([Ljava/lang/Void;)[Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/util/List;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 178
    iget-object v4, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v4}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 179
    const/4 v4, 0x0

    .line 194
    :goto_0
    return-object v4

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;
    invoke-static {v4}, Lcom/liquable/nemo/main/MainFriendListView;->access$500(Lcom/liquable/nemo/main/MainFriendListView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/FriendManager;->listVisibleFriendsOrderByState()Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :goto_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->listRecommendFriends()Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "recommendedFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listVisibleChatGroups()Ljava/util/List;

    move-result-object v3

    .line 191
    .local v3, "visibleChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v4, v3, v6}, Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByOneToOneOrNot(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 194
    .local v1, "groupChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/util/List;

    aput-object v0, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    goto :goto_0

    .line 186
    .end local v0    # "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    .end local v1    # "groupChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    .end local v2    # "recommendedFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    .end local v3    # "visibleChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    :cond_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v5, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->searchFriendKeyword:Ljava/lang/String;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainFriendListView;->access$500(Lcom/liquable/nemo/main/MainFriendListView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->findVisibleAccountByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainFriendListView$2;->onPostExecute([Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute([Ljava/util/List;)V
    .locals 2
    .param p1, "result"    # [Ljava/util/List;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainFriendListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainFriendListView;->reloadFriendList(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    # invokes: Lcom/liquable/nemo/main/MainFriendListView;->reloadRecommendList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainFriendListView;->access$600(Lcom/liquable/nemo/main/MainFriendListView;Ljava/util/List;)V

    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$2;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    # invokes: Lcom/liquable/nemo/main/MainFriendListView;->reloadGroupList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainFriendListView;->access$700(Lcom/liquable/nemo/main/MainFriendListView;Ljava/util/List;)V

    goto :goto_0
.end method
