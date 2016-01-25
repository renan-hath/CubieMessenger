.class public Lcom/liquable/nemo/friend/model/RecommendFriendManager;
.super Ljava/lang/Object;
.source "RecommendFriendManager.java"


# static fields
.field private static final MIN_RECOMMEND_FRIEND_SIZE:I = 0xa

.field private static final QUERY_RECOMMEND_FRIEND_INTERVAL:J = 0x1b7740L

.field private static final RECOMMEND_FRIENDS_QUERY_SIZE:I = 0x1e

.field public static final RECOMMEND_SIZE:I = 0x3


# instance fields
.field private final accountDao:Lcom/liquable/nemo/db/AccountDao;

.field private final allRecommendFriends:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;"
        }
    .end annotation
.end field

.field private final fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

.field private final friendService:Lcom/liquable/nemo/client/service/IFriendService;

.field private final lock:Ljava/lang/Object;

.field private final mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

.field private final notificationService:Lcom/liquable/nemo/android/BroadcastManager;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

.field private final recommendFriends:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/client/service/IFriendService;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/db/RecommendFriendDao;Lcom/liquable/nemo/db/MutualFriendRelationshipDao;)V
    .locals 1
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "accountDao"    # Lcom/liquable/nemo/db/AccountDao;
    .param p3, "friendService"    # Lcom/liquable/nemo/client/service/IFriendService;
    .param p4, "notificationService"    # Lcom/liquable/nemo/android/BroadcastManager;
    .param p5, "fileTransferManager"    # Lcom/liquable/nemo/android/service/FileTransferManager;
    .param p6, "recommendFriendDao"    # Lcom/liquable/nemo/db/RecommendFriendDao;
    .param p7, "mutualFriendRelationshipDao"    # Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->lock:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 62
    iput-object p2, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    .line 63
    iput-object p3, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    .line 64
    iput-object p4, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    .line 65
    iput-object p5, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 66
    iput-object p6, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    .line 67
    iput-object p7, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    .line 68
    return-void
.end method

.method private getAllRecommendFriendInDb()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    iget-object v4, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    invoke-virtual {v4}, Lcom/liquable/nemo/db/RecommendFriendDao;->listAll()Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "reFriend":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/RecommendFriend;

    .line 111
    .local v1, "recommendFriend":Lcom/liquable/nemo/friend/model/RecommendFriend;
    iget-object v5, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/RecommendFriend;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->listMutualFriendIdsByRecommendFriendId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 112
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/RecommendFriend;->getAccountDto()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->getAccountDtoByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/liquable/nemo/model/account/RecommendFriendDto;-><init>(Lcom/liquable/nemo/model/account/AccountDto;Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v1    # "recommendFriend":Lcom/liquable/nemo/friend/model/RecommendFriend;
    .end local v3    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addFilterdRecommendFriend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "myUid"    # Ljava/lang/String;
    .param p2, "friendUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    invoke-interface {v0, p1, p2}, Lcom/liquable/nemo/client/service/IFriendService;->addFilteredRecommendFriend(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->removeRecommendFriend(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public findRecommendFriendById(Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 2
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/RecommendFriendDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/RecommendFriend;

    move-result-object v0

    .line 79
    .local v0, "found":Lcom/liquable/nemo/friend/model/RecommendFriend;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/RecommendFriend;->getAccountDto()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findRecommendFriendDto(Ljava/lang/String;)Lcom/liquable/nemo/model/account/RecommendFriendDto;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    return-object v0
.end method

.method public getAccountDtoByIds(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 92
    .local v11, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, v11}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v10

    .line 93
    .local v10, "findById":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v10, :cond_0

    .line 94
    new-instance v0, Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v10}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 97
    invoke-virtual {v10}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v10}, Lcom/liquable/nemo/friend/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {v10}, Lcom/liquable/nemo/friend/model/Account;->isIconExists()Z

    move-result v6

    .line 100
    invoke-virtual {v10}, Lcom/liquable/nemo/friend/model/Account;->getLastUpdateTime()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/model/account/AccountDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    .line 94
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v10    # "findById":Lcom/liquable/nemo/friend/model/Account;
    .end local v11    # "id":Ljava/lang/String;
    :cond_1
    return-object v12
.end method

.method public listAllRecommendFriends()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public listMutualFriendsByUid(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "friendUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->listMutualFriendIdsByRecommendFriendId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "mutualFriendUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/db/AccountDao;->listByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listRecommendFriends()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 129
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v4, "visibleUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v5}, Lcom/liquable/nemo/db/AccountDao;->listVisibleFriends()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 131
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    const/4 v1, 0x0

    .line 136
    .local v1, "count":I
    const/4 v2, 0x0

    .line 137
    .local v2, "recommendFriend":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "recommendFriend":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    check-cast v2, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .restart local v2    # "recommendFriend":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 143
    :cond_2
    if-lt v1, v7, :cond_1

    .line 147
    :cond_3
    return-object v3
.end method

.method public reloadRecommendFriends(Ljava/lang/String;)V
    .locals 14
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v9, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 153
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getLastQueryRecommendFriendTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x1b7740

    cmp-long v8, v10, v12

    if-lez v8, :cond_4

    .line 155
    :try_start_1
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    const/16 v10, 0x1e

    invoke-interface {v8, p1, v10}, Lcom/liquable/nemo/client/service/IFriendService;->listRecommendFriendsWithMutualFriends(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 158
    .local v4, "newRecommendFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v3, "mutualFriendRelationships":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v7, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 163
    .local v0, "dto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v10, Lcom/liquable/nemo/friend/model/RecommendFriend;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getRecommendFriend()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/liquable/nemo/friend/model/RecommendFriend;-><init>(Lcom/liquable/nemo/model/account/AccountDto;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getMutualFriends()Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "mutualFriendDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/account/AccountDto;

    .line 168
    .local v1, "mFriendDto":Lcom/liquable/nemo/model/account/AccountDto;
    new-instance v11, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v12

    .line 169
    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    .end local v0    # "dto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    .end local v1    # "mFriendDto":Lcom/liquable/nemo/model/account/AccountDto;
    .end local v2    # "mutualFriendDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    .end local v3    # "mutualFriendRelationships":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    .end local v4    # "newRecommendFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    .end local v6    # "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    .end local v7    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 197
    :cond_1
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendReloadRecommend()V

    .line 198
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    return-void

    .line 173
    .restart local v3    # "mutualFriendRelationships":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    .restart local v4    # "newRecommendFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    .restart local v6    # "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    .restart local v7    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    .line 174
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v8, v4}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 177
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 178
    .local v5, "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    iget-object v10, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 198
    .end local v3    # "mutualFriendRelationships":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    .end local v4    # "newRecommendFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    .end local v5    # "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    .end local v6    # "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    .end local v7    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 181
    .restart local v3    # "mutualFriendRelationships":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    .restart local v4    # "newRecommendFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    .restart local v6    # "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    .restart local v7    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_5
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/RecommendFriendDao;->deleteAll()V

    .line 182
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->deleteAll()V

    .line 184
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    invoke-virtual {v8, v6}, Lcom/liquable/nemo/db/RecommendFriendDao;->saveAll(Ljava/util/List;)V

    .line 185
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    invoke-virtual {v8, v3}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->insertAll(Ljava/util/List;)V

    .line 186
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->saveLastQueryRecommendFriendTime()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 192
    .end local v3    # "mutualFriendRelationships":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    .end local v4    # "newRecommendFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    .end local v6    # "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    .end local v7    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_6
    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    const/4 v10, 0x3

    if-le v8, v10, :cond_5

    iget-object v8, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    const/16 v10, 0xa

    if-gt v8, v10, :cond_1

    .line 193
    :cond_5
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->retrieveRecommendFriendsFromDB()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public removeRecommendFriend(Ljava/lang/String;)V
    .locals 4
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 204
    .local v0, "recommendFriend":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 209
    .end local v0    # "recommendFriend":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->deleteAllByRecommendFriendId(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/RecommendFriendDao;->deleteById(Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendRemoveRecommend(Ljava/lang/String;)V

    .line 213
    monitor-exit v2

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retrieveRecommendFriendsFromDB()V
    .locals 5

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->getAllRecommendFriendInDb()Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "allRecommendFriendInDb":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 220
    .local v1, "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->allRecommendFriends:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/RecommendFriendDto;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 222
    .end local v1    # "recommendFriendDto":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 223
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->recommendFriends:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 224
    return-void
.end method
