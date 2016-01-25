.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->listTwitterFriendFromServer(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

.field final synthetic val$newTwitterFriends:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    iput-object p3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

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
    .line 365
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v5, "twitterUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/liquable/nemo/model/account/AccountDto;>;"
    iget-object v6, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 371
    .local v2, "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    iget-object v7, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;
    invoke-static {v7}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1900(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getTwitterId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 372
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getTwitterId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .line 373
    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->accountsWithCubieId:Ljava/util/Map;
    invoke-static {v8}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1900(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getTwitterId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 372
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    .end local v2    # "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 378
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v6}, Lcom/liquable/nemo/friend/model/FriendManager;->listWaitAcceptFriendsAndFriends()Ljava/util/List;

    move-result-object v3

    .line 379
    .local v3, "friendsNeedExclude":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v6}, Lcom/liquable/nemo/friend/model/FriendManager;->listBlockedFriends()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 381
    iget-object v6, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 382
    .local v4, "twitterFriend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    invoke-virtual {v4}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getTwitterId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 383
    invoke-virtual {v4}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getTwitterId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v4, v6}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->setAccount(Lcom/liquable/nemo/model/account/AccountDto;)V

    goto :goto_1

    .line 387
    .end local v4    # "twitterFriend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 388
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v7, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 389
    .restart local v4    # "twitterFriend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->isSameCubieAccount(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 390
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->setCubieFriend(Z)V

    goto :goto_2

    .line 396
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v4    # "twitterFriend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v1, "excludeData":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterFriend;>;"
    iget-object v6, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 398
    .restart local v2    # "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->isCubieFriend()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 399
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 403
    .end local v2    # "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    :cond_8
    iget-object v6, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 406
    .end local v1    # "excludeData":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/twitter/TwitterFriend;>;"
    .end local v3    # "friendsNeedExclude":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :cond_9
    const/4 v6, 0x0

    return-object v6
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

    new-instance v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 414
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->val$newTwitterFriends:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->reset(Ljava/util/List;)V

    .line 416
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$2;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 419
    return-void
.end method
