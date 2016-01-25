.class public Lcom/liquable/nemo/friend/model/FriendManager;
.super Ljava/lang/Object;
.source "FriendManager.java"


# static fields
.field private static final SYNC_INTERVAL:J = 0x1b7740L


# instance fields
.field private final accountDao:Lcom/liquable/nemo/db/AccountDao;

.field private final accountService:Lcom/liquable/nemo/client/service/IAccountService;

.field private final broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

.field private final chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

.field private chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

.field private final chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

.field private final chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

.field private final contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

.field private final fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

.field private final friendService:Lcom/liquable/nemo/client/service/IFriendService;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/db/ContactInfoDao;Lcom/liquable/nemo/db/ChatGroupDao;Lcom/liquable/nemo/db/ChatGroupMemberDao;Lcom/liquable/nemo/client/service/IAccountService;Lcom/liquable/nemo/client/service/IFriendService;Lcom/liquable/nemo/client/service/IChatGroupService;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/friend/model/RecommendFriendManager;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/service/FileTransferManager;)V
    .locals 1
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "accountDao"    # Lcom/liquable/nemo/db/AccountDao;
    .param p3, "contactInfoDao"    # Lcom/liquable/nemo/db/ContactInfoDao;
    .param p4, "chatGroupDao"    # Lcom/liquable/nemo/db/ChatGroupDao;
    .param p5, "chatGroupMemberDao"    # Lcom/liquable/nemo/db/ChatGroupMemberDao;
    .param p6, "accountService"    # Lcom/liquable/nemo/client/service/IAccountService;
    .param p7, "friendService"    # Lcom/liquable/nemo/client/service/IFriendService;
    .param p8, "chatGroupService"    # Lcom/liquable/nemo/client/service/IChatGroupService;
    .param p9, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;
    .param p10, "recommendFriendManager"    # Lcom/liquable/nemo/friend/model/RecommendFriendManager;
    .param p11, "broadcastManager"    # Lcom/liquable/nemo/android/BroadcastManager;
    .param p12, "fileTransferManager"    # Lcom/liquable/nemo/android/service/FileTransferManager;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->logger:Lcom/liquable/nemo/util/Logger;

    .line 100
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 101
    iput-object p2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    .line 102
    iput-object p3, p0, Lcom/liquable/nemo/friend/model/FriendManager;->contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

    .line 103
    iput-object p4, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    .line 104
    iput-object p5, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    .line 105
    iput-object p6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    .line 106
    iput-object p7, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    .line 107
    iput-object p8, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    .line 108
    iput-object p9, p0, Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 109
    iput-object p10, p0, Lcom/liquable/nemo/friend/model/FriendManager;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    .line 110
    iput-object p11, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    .line 111
    iput-object p12, p0, Lcom/liquable/nemo/friend/model/FriendManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/model/FriendManager;)Lcom/liquable/nemo/android/BroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/FriendManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/model/FriendManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/FriendManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadDefaultCoverIfRequired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/friend/model/FriendManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/FriendManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->copyDefaultCoverToUserCoverAndBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/friend/model/FriendManager;)Lcom/liquable/nemo/storage/NemoFileService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/model/FriendManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    return-object v0
.end method

.method private copyDefaultCoverToUserCoverAndBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createDefaultCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 184
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 183
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->copyLocalKeyPathToLocalKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 185
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    new-instance v2, Lcom/liquable/nemo/friend/model/CoverResult;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/liquable/nemo/friend/model/CoverResult;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastDownloadCoverResult(Lcom/liquable/nemo/friend/model/CoverResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "copy default profile cover to friend\'s folder failed"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    new-instance v2, Lcom/liquable/nemo/friend/model/CoverResult;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/liquable/nemo/friend/model/CoverResult;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastDownloadCoverResult(Lcom/liquable/nemo/friend/model/CoverResult;)V

    goto :goto_0
.end method

.method private downloadDefaultCoverIfRequired(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createDefaultCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 244
    .local v1, "defaultCoverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    .line 245
    .local v0, "defaultCover":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->copyDefaultCoverToUserCoverAndBroadcast(Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createDefaultCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/friend/model/FriendManager$2;

    invoke-direct {v4, p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager$2;-><init>(Lcom/liquable/nemo/friend/model/FriendManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    goto :goto_0
.end method

.method private filterByNotChannel(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 335
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_1
    return-object v1
.end method

.method private removeRecommendFriendAndBroadCast(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->removeRecommendFriend(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendRemoveRecommend(Ljava/lang/String;)V

    .line 796
    return-void
.end method


# virtual methods
.method public addFriend(Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "can\'t update self as visible"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->recoverFriends(Ljava/util/List;Z)V

    .line 117
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method public addWaitConfirmFriend(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 122
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->confirmFriendInvitation(Ljava/lang/String;)Z

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/liquable/nemo/client/service/IFriendService;->setFriendWaitConfirm(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    move-result v1

    .line 131
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public blockFriend(Ljava/lang/String;)V
    .locals 5
    .param p1, "fuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 140
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Lcom/liquable/nemo/client/service/IFriendService;->blockFriend(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/friend/model/Account$FriendState;)V

    .line 142
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    .line 143
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    .line 144
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 145
    .local v1, "group":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deleteOneToOneChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendBlocked(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public confirmFriendInvitation(Ljava/lang/String;)Z
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    new-array v6, v5, [Ljava/lang/String;

    aput-object p1, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->recoverFriends(Ljava/util/List;Z)V

    .line 155
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v6, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 156
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    new-instance v2, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;

    invoke-direct {v2, v4}, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;-><init>(Z)V

    .line 157
    .local v2, "confirmFriendMessage":Lcom/liquable/nemo/message/model/ConfirmFriendMessage;
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v6, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 159
    .local v1, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v4

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v7, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/String;

    aput-object p1, v8, v4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/liquable/nemo/client/service/IFriendService;->addFriends(Ljava/lang/String;Ljava/util/List;)V

    .line 164
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 165
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-static {v6, v7}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 167
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    invoke-interface {v6, v2}, Lcom/liquable/nemo/client/service/IFriendService;->confirmFriendInvitation(Lcom/liquable/nemo/message/model/ConfirmFriendMessage;)Z

    move-result v3

    .line 168
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 172
    sget-object v6, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0, v6}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v6, v0}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    iget-object v4, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUpdated(Ljava/lang/String;)V

    move v4, v5

    .line 175
    goto :goto_0
.end method

.method public deleteAllContactInfos()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/ContactInfoDao;->deleteAll()V

    .line 194
    return-void
.end method

.method public deleteFriend(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "can\'t update self as invisible"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/liquable/nemo/client/service/IFriendService;->deleteFriend(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->deleteFriendLocally(Ljava/lang/String;)V

    .line 201
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteFriendLocally(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 205
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    .line 206
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    .line 208
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 209
    .local v1, "group":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v1, :cond_0

    .line 210
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deleteOneToOneChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 212
    :cond_0
    return-void
.end method

.method public downloadCoverIfRequired(Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 216
    .local v1, "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v4, p0, Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    .line 217
    .local v0, "coverFile":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    sub-long v2, v4, v6

    .line 218
    .local v2, "outOfDateTime":J
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v2, v3}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/friend/model/FriendManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/friend/model/FriendManager$1;

    invoke-direct {v6, p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager$1;-><init>(Lcom/liquable/nemo/friend/model/FriendManager;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    goto :goto_0
.end method

.method public downloadMyIcon(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadOrDeleteUserIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 267
    return-void
.end method

.method public downloadOrDeleteUserIcon(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "isIconExist"    # Z

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 273
    .local v2, "applicationContext":Landroid/content/Context;
    invoke-static {p2}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 274
    .local v3, "iconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    invoke-static {p2}, Lcom/liquable/nemo/friend/model/Account;->createSmallIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    .line 275
    .local v4, "smallIconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    if-eqz p3, :cond_0

    .line 276
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    invoke-static {p2}, Lcom/liquable/nemo/friend/model/Account;->createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v7

    new-instance v0, Lcom/liquable/nemo/friend/model/FriendManager$3;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/friend/model/FriendManager$3;-><init>(Lcom/liquable/nemo/friend/model/FriendManager;Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v3, v0}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadKeyPath(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 319
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    goto :goto_0
.end method

.method public downloadUserIcon(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 325
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->isIconExists()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadOrDeleteUserIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 326
    return-void
.end method

.method public downloadUserIcon(Landroid/content/Context;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 329
    invoke-virtual {p2}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadOrDeleteUserIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method public findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public findFriendByUsername(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/AccountDao;->findByUsername(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public findFriendCandidateByUsername(Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1
    .param p1, "cubieId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/service/IFriendService;->findFriendCandidateByUsername(Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    return-object v0
.end method

.method public findFriendsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "friendInfo"    # Ljava/lang/String;
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
    .line 355
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/AccountDao;->findFriendsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->filterByNotChannel(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 356
    .local v0, "friendsByName":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/model/FriendListComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 357
    return-object v0
.end method

.method public findVisibleAccountByName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "friendInfo"    # Ljava/lang/String;
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
    .line 361
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/AccountDao;->findVisibleAccountByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "visibleFriendsByName":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/model/FriendListComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    return-object v0
.end method

.method public getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_0
    return-object v1

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/AccountDao;->listNicknamesByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "nicknames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-static {p2}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    const v1, 0x7f0d0456

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 375
    :cond_1
    const-string/jumbo v1, "?"

    goto :goto_0

    .line 377
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public importFromContacts(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .param p2, "countryCodeIso3166"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "contacts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v14, "contactsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v20, "phoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/liquable/nemo/friend/model/ContactInfo;

    .line 390
    .local v12, "contact":Lcom/liquable/nemo/friend/model/ContactInfo;
    invoke-virtual {v12}, Lcom/liquable/nemo/friend/model/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v12}, Lcom/liquable/nemo/friend/model/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    .end local v12    # "contact":Lcom/liquable/nemo/friend/model/ContactInfo;
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v19, "newFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v18, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/liquable/nemo/client/service/IAccountService;->listAccountsByRawPhones(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v21

    .line 399
    .local v21, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 400
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/liquable/nemo/friend/model/ContactInfo;

    .line 401
    .local v13, "contactInfo":Lcom/liquable/nemo/friend/model/ContactInfo;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/model/account/AccountDto;

    .line 404
    .local v9, "account":Lcom/liquable/nemo/model/account/AccountDto;
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 405
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "nickname":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v16

    .line 411
    .local v16, "found":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/friend/model/Account;->isBlocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    :cond_2
    new-instance v2, Lcom/liquable/nemo/friend/model/Account$Builder;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v5

    sget-object v7, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 419
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/liquable/nemo/friend/model/Account$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/liquable/nemo/friend/model/ContactInfo;->getPhotoId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->photoId(Ljava/lang/Long;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v2

    .line 420
    invoke-virtual {v13}, Lcom/liquable/nemo/friend/model/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v2

    .line 421
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v2

    .line 422
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v2

    .line 423
    invoke-virtual {v13}, Lcom/liquable/nemo/friend/model/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->nicknameFromContact(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v3

    if-nez v16, :cond_6

    const/4 v2, 0x0

    .line 424
    :goto_3
    invoke-virtual {v3, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->fbuid(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v2

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {v13}, Lcom/liquable/nemo/friend/model/ContactInfo;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->lookupKey(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v3

    if-nez v16, :cond_7

    const/4 v2, 0x0

    .line 427
    :goto_4
    invoke-virtual {v3, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->displayName(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v11

    .line 429
    .local v11, "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    invoke-virtual {v11}, Lcom/liquable/nemo/friend/model/Account$Builder;->build()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v17

    .line 430
    .local v17, "friend":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual/range {v17 .. v17}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    invoke-virtual/range {v17 .. v17}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v10

    .line 433
    .local v10, "accountInDb":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v2

    if-nez v2, :cond_4

    .line 434
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/liquable/nemo/friend/model/Account;->setBecomeFriendTime(J)V

    .line 437
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 407
    .end local v4    # "nickname":Ljava/lang/String;
    .end local v10    # "accountInDb":Lcom/liquable/nemo/friend/model/Account;
    .end local v11    # "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    .end local v16    # "found":Lcom/liquable/nemo/friend/model/Account;
    .end local v17    # "friend":Lcom/liquable/nemo/friend/model/Account;
    :cond_5
    invoke-virtual {v13}, Lcom/liquable/nemo/friend/model/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "nickname":Ljava/lang/String;
    goto/16 :goto_2

    .line 424
    .restart local v16    # "found":Lcom/liquable/nemo/friend/model/Account;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/friend/model/Account;->getFbuid()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 427
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/friend/model/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 442
    .end local v4    # "nickname":Ljava/lang/String;
    .end local v9    # "account":Lcom/liquable/nemo/model/account/AccountDto;
    .end local v13    # "contactInfo":Lcom/liquable/nemo/friend/model/ContactInfo;
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/liquable/nemo/model/account/AccountDto;>;"
    .end local v16    # "found":Lcom/liquable/nemo/friend/model/Account;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 460
    .end local v18    # "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :goto_5
    return-object v18

    .line 451
    .restart local v18    # "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/AccountDao;->saveAll(Ljava/util/List;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->createInvisibleOneToOneChatGroups(Ljava/util/List;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendImported()V

    .line 456
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->sendFriendsToServer(Ljava/util/List;)V

    :cond_a
    move-object/from16 v18, v19

    .line 460
    goto :goto_5
.end method

.method public importFromFacebookFriends(Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v20, "fbuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 470
    .local v16, "facebookFriend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual/range {v16 .. v16}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    .end local v16    # "facebookFriend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/liquable/nemo/client/service/IAccountService;->listAccountsByFbuids(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 474
    .local v10, "accountDtosByFbuids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/account/AccountDto;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v18, "fbFriendsByUids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 476
    .local v17, "fbFriend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual/range {v17 .. v17}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v19

    .line 477
    .local v19, "fbuid":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/account/AccountDto;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->setAccount(Lcom/liquable/nemo/model/account/AccountDto;)V

    .line 479
    invoke-virtual/range {v17 .. v17}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 484
    .end local v17    # "fbFriend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    .end local v19    # "fbuid":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v3}, Lcom/liquable/nemo/db/AccountDao;->listFriends()Ljava/util/List;

    move-result-object v15

    .line 488
    .local v15, "existFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/liquable/nemo/friend/model/Account;

    .line 489
    .local v14, "exist":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v14}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 493
    .end local v14    # "exist":Lcom/liquable/nemo/friend/model/Account;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v3}, Lcom/liquable/nemo/db/AccountDao;->listBlockedFriends()Ljava/util/List;

    move-result-object v12

    .line 494
    .local v12, "blockedFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/friend/model/Account;

    .line 495
    .local v11, "blocked":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v11}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 498
    .end local v11    # "blocked":Lcom/liquable/nemo/friend/model/Account;
    :cond_4
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v21, "newFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 500
    .local v13, "candidate":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual {v13}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v9

    .line 501
    .local v9, "account":Lcom/liquable/nemo/model/account/AccountDto;
    new-instance v2, Lcom/liquable/nemo/friend/model/Account$Builder;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 502
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v5

    sget-object v7, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 505
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/liquable/nemo/friend/model/Account$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V

    .line 507
    .local v2, "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v3

    .line 508
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v3

    .line 509
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v3

    .line 510
    invoke-virtual {v13}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/Account$Builder;->fbuid(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v3

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    .line 513
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->build()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 516
    .end local v2    # "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    .end local v9    # "account":Lcom/liquable/nemo/model/account/AccountDto;
    .end local v13    # "candidate":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    :goto_5
    return-object v21

    .line 520
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/db/AccountDao;->saveAll(Ljava/util/List;)V

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->sendFriendsToServer(Ljava/util/List;)V

    goto :goto_5
.end method

.method public inviteFriend(Lcom/liquable/nemo/friend/model/Account;)Z
    .locals 9
    .param p1, "account"    # Lcom/liquable/nemo/friend/model/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/liquable/nemo/client/service/IChatGroupService;->findOrCreateOneToOneGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 528
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v4

    .line 531
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/group/ChatGroupDto;

    .line 533
    .local v0, "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    sget-object v6, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 534
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->confirmFriendInvitation(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 537
    :cond_2
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v7, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/liquable/nemo/client/service/IFriendService;->setFriendWaitAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v3, Lcom/liquable/nemo/message/model/InviteFriendMessage;

    invoke-direct {v3}, Lcom/liquable/nemo/message/model/InviteFriendMessage;-><init>()V

    .line 540
    .local v3, "message":Lcom/liquable/nemo/message/model/InviteFriendMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/liquable/nemo/message/model/InviteFriendMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 542
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    invoke-interface {v6, v3}, Lcom/liquable/nemo/client/service/IFriendService;->sendInviteFriendMessage(Lcom/liquable/nemo/message/model/InviteFriendMessage;)Z

    move-result v2

    .line 543
    .local v2, "invited":Z
    if-eqz v2, :cond_0

    .line 547
    sget-object v4, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p1, v4}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 548
    iget-object v4, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    .line 549
    iget-object v4, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUpdated(Ljava/lang/String;)V

    .line 551
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->removeRecommendFriendAndBroadCast(Ljava/lang/String;)V

    move v4, v5

    .line 553
    goto :goto_0
.end method

.method public inviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)Z
    .locals 14
    .param p1, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v9

    .line 558
    .local v9, "found":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->removeRecommendFriendAndBroadCast(Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/client/service/IChatGroupService;->findOrCreateOneToOneGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 564
    .local v10, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 565
    const/4 v0, 0x0

    goto :goto_0

    .line 567
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/model/group/ChatGroupDto;

    .line 569
    .local v8, "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    if-eqz v9, :cond_2

    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 570
    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->confirmFriendInvitation(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/client/service/IFriendService;->setFriendWaitAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v12, Lcom/liquable/nemo/message/model/InviteFriendMessage;

    invoke-direct {v12}, Lcom/liquable/nemo/message/model/InviteFriendMessage;-><init>()V

    .line 576
    .local v12, "message":Lcom/liquable/nemo/message/model/InviteFriendMessage;
    invoke-virtual {v8}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/liquable/nemo/message/model/InviteFriendMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 578
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    invoke-interface {v0, v12}, Lcom/liquable/nemo/client/service/IFriendService;->sendInviteFriendMessage(Lcom/liquable/nemo/message/model/InviteFriendMessage;)Z

    move-result v11

    .line 579
    .local v11, "invited":Z
    if-nez v11, :cond_3

    .line 580
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :cond_3
    if-nez v9, :cond_5

    .line 584
    new-instance v0, Lcom/liquable/nemo/friend/model/Account$Builder;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v3

    sget-object v5, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 588
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/friend/model/Account$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account$Builder;->build()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v7

    .line 593
    .local v7, "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/db/AccountDao;->insert(Lcom/liquable/nemo/friend/model/Account;)Z

    move-result v13

    .line 594
    .local v13, "result":Z
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v0, v8}, Lcom/liquable/nemo/group/model/ChatGroupManager;->saveChatGroupAsInvisible(Lcom/liquable/nemo/model/group/ChatGroupDto;)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 595
    if-eqz v13, :cond_4

    .line 596
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v7}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendInvited(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v7}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->removeRecommendFriendAndBroadCast(Ljava/lang/String;)V

    .line 607
    .end local v7    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v13    # "result":Z
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 600
    :cond_5
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v9, v0}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 601
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, v9}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    .line 602
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUpdated(Ljava/lang/String;)V

    .line 604
    :cond_6
    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->removeRecommendFriendAndBroadCast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public listBlockedFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/AccountDao;->listBlockedFriends()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFriendsByUids(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/AccountDao;->listByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public listFriendsInTopic(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
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
    .line 622
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/AccountDao;->listByChatGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFriendsNicknameInTopic(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->listActiveMemberIdsByTopic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 627
    .local v0, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/db/AccountDao;->listNicknamesByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listMutualFriends(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "targetUid"    # Ljava/lang/String;
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/liquable/nemo/client/service/IFriendService;->listMutualFriends(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listNewContactInfos(Ljava/util/Collection;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "newContactInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 638
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/ContactInfo;

    .line 639
    .local v0, "contact":Lcom/liquable/nemo/friend/model/ContactInfo;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 642
    iget-object v4, p0, Lcom/liquable/nemo/friend/model/FriendManager;->contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/db/ContactInfoDao;->findByPhoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/ContactInfo;

    move-result-object v1

    .line 643
    .local v1, "contactInDb":Lcom/liquable/nemo/friend/model/ContactInfo;
    if-nez v1, :cond_0

    .line 644
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    .end local v0    # "contact":Lcom/liquable/nemo/friend/model/ContactInfo;
    .end local v1    # "contactInDb":Lcom/liquable/nemo/friend/model/ContactInfo;
    :cond_1
    return-object v2
.end method

.method public listNotInvitableFriendsLookupKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/AccountDao;->listLookupKeysForNotInvitableFriends()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listSelectableFriends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/AccountDao;->listFriends()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->filterByNotChannel(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 657
    .local v0, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/model/FriendListComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    return-object v0
.end method

.method public listSelectableFriends(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
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
    .line 662
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/FriendManager;->listSelectableFriends()Ljava/util/List;

    move-result-object v0

    .line 663
    .local v0, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->listFriendsInTopic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 664
    .local v1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 665
    new-instance v2, Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-direct {v2}, Lcom/liquable/nemo/friend/model/FriendListComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 666
    return-object v0
.end method

.method public listVisibleFriendsOrderByState()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/AccountDao;->listVisibleFriends()Ljava/util/List;

    move-result-object v0

    .line 671
    .local v0, "visibleFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/model/FriendListComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 672
    return-object v0
.end method

.method public listWaitAcceptFriendsAndFriends()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v3}, Lcom/liquable/nemo/db/AccountDao;->listVisibleFriends()Ljava/util/List;

    move-result-object v2

    .line 677
    .local v2, "visibleFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 680
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v4, Lcom/liquable/nemo/friend/model/FriendManager$4;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 682
    :pswitch_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
    :pswitch_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    return-object v1

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public listWaitConfirmFriends()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v3}, Lcom/liquable/nemo/db/AccountDao;->listVisibleFriends()Ljava/util/List;

    move-result-object v2

    .line 696
    .local v2, "visibleFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 699
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v4, Lcom/liquable/nemo/friend/model/FriendManager$4;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 701
    :pswitch_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    return-object v1

    .line 699
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public recoverFriends(Ljava/util/List;Z)V
    .locals 20
    .param p2, "asFriend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 719
    .local v13, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 720
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 791
    :cond_0
    return-void

    .line 724
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1, v13}, Lcom/liquable/nemo/db/AccountDao;->listByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 725
    .local v15, "friendsByUids":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v18, "updatedFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v17, "updatedFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/liquable/nemo/friend/model/Account;

    .line 729
    .local v14, "friend":Lcom/liquable/nemo/friend/model/Account;
    if-eqz p2, :cond_2

    invoke-virtual {v14}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v2

    if-nez v2, :cond_2

    .line 730
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {v14}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/liquable/nemo/friend/model/Account;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->createInvisibleOneToOneChatGroups(Ljava/util/List;)V

    .line 734
    invoke-virtual {v14}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    .end local v14    # "friend":Lcom/liquable/nemo/friend/model/Account;
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/liquable/nemo/client/service/IFriendService;->addFriends(Ljava/lang/String;Ljava/util/List;)V

    .line 741
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/liquable/nemo/friend/model/Account;

    .line 742
    .restart local v14    # "friend":Lcom/liquable/nemo/friend/model/Account;
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v14, v2}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, v14}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v14}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendAdded(Ljava/lang/String;)V

    goto :goto_1

    .line 746
    .end local v14    # "friend":Lcom/liquable/nemo/friend/model/Account;
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v16, "missingAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v11, "beFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    invoke-interface {v1, v13}, Lcom/liquable/nemo/client/service/IAccountService;->listAccountsByUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 753
    .local v10, "accountDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/model/account/AccountDto;

    .line 756
    .local v9, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 757
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "nickname":Ljava/lang/String;
    :goto_3
    new-instance v1, Lcom/liquable/nemo/friend/model/Account$Builder;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v4

    if-eqz p2, :cond_8

    sget-object v6, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 766
    :goto_4
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/liquable/nemo/friend/model/Account$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    .line 767
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    .line 768
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v4

    if-eqz p2, :cond_9

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_5
    invoke-virtual {v4, v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->becomeFriendTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v12

    .line 772
    .local v12, "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    invoke-virtual {v12}, Lcom/liquable/nemo/friend/model/Account$Builder;->build()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v8

    .line 773
    .local v8, "account":Lcom/liquable/nemo/friend/model/Account;
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    if-eqz p2, :cond_6

    .line 775
    invoke-virtual {v8}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 759
    .end local v3    # "nickname":Ljava/lang/String;
    .end local v8    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v12    # "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    :cond_7
    invoke-virtual {v9}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "nickname":Ljava/lang/String;
    goto :goto_3

    .line 764
    :cond_8
    sget-object v6, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    goto :goto_4

    .line 770
    :cond_9
    const-wide/16 v1, 0x0

    goto :goto_5

    .line 779
    .end local v3    # "nickname":Ljava/lang/String;
    .end local v9    # "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    :cond_a
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Lcom/liquable/nemo/client/service/IFriendService;->addFriends(Ljava/lang/String;Ljava/util/List;)V

    .line 782
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/friend/model/Account;

    .line 786
    .restart local v8    # "account":Lcom/liquable/nemo/friend/model/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, v8}, Lcom/liquable/nemo/db/AccountDao;->insert(Lcom/liquable/nemo/friend/model/Account;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/liquable/nemo/friend/model/Account;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->createInvisibleOneToOneChatGroups(Ljava/util/List;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v8}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendAdded(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public saveAllContactInfos(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "contacts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ContactInfoDao;->saveAll(Ljava/util/Collection;)V

    .line 800
    return-void
.end method

.method public sendBecomeOneWayFriendMessages(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 803
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v3, "friendUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 806
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 809
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->recoverFriends(Ljava/util/List;Z)V

    .line 811
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 812
    .restart local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v6, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 813
    .local v2, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v2, :cond_1

    .line 817
    new-instance v1, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;

    invoke-direct {v1}, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;-><init>()V

    .line 818
    .local v1, "becomeOneWayFriendMessage":Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 819
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 818
    invoke-static {v6, v7}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 820
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    invoke-interface {v6, v1}, Lcom/liquable/nemo/client/service/IFriendService;->sendBecomeOneWayFriendMessage(Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;)Z

    move-result v4

    .line 821
    .local v4, "result":Z
    if-eqz v4, :cond_1

    .line 822
    sget-object v6, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0, v6}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 823
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v6, v0}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 824
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUpdated(Ljava/lang/String;)V

    goto :goto_1

    .line 830
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v1    # "becomeOneWayFriendMessage":Lcom/liquable/nemo/message/model/BecomeOneWayFriendMessage;
    .end local v2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v4    # "result":Z
    :cond_2
    return-void
.end method

.method public sendFriendsToServer(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 834
    .local v1, "accountUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 835
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/liquable/nemo/client/service/IFriendService;->addFriends(Ljava/lang/String;Ljava/util/List;)V

    .line 838
    return-void
.end method

.method public setChatGroupManager(Lcom/liquable/nemo/group/model/ChatGroupManager;)V
    .locals 0
    .param p1, "chatGroupManager"    # Lcom/liquable/nemo/group/model/ChatGroupManager;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 842
    return-void
.end method

.method public syncAccounts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 850
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v1}, Lcom/liquable/nemo/db/AccountDao;->rawList()Ljava/util/List;

    move-result-object v0

    .line 851
    .local v0, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->syncAccounts(Ljava/util/List;)V

    .line 852
    return-void
.end method

.method public syncAccounts(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 855
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    const/16 v0, 0x32

    .line 856
    .local v0, "SYNC_PAGE_SIZE":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v3, "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v6, "lastUpdateTimeMaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 859
    .local v5, "lastUpdateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/Account;

    .line 860
    .local v1, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getLastSyncTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x1b7740

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 862
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    const/16 v10, 0x32

    if-lt v9, v10, :cond_1

    .line 863
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "lastUpdateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 866
    .restart local v5    # "lastUpdateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getLastUpdateTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/liquable/nemo/friend/model/Account;->setLastSyncTime(J)V

    .line 868
    iget-object v9, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v9, v1}, Lcom/liquable/nemo/db/AccountDao;->update(Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0

    .line 871
    .end local v1    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 875
    .local v7, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 878
    iget-object v9, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    invoke-interface {v9, v7}, Lcom/liquable/nemo/client/service/IAccountService;->listModifiedAccounts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 879
    .local v2, "accountDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/account/AccountDto;

    .line 880
    .local v1, "account":Lcom/liquable/nemo/model/account/AccountDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/friend/model/Account;

    .line 881
    .local v4, "existsAccount":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v4, v1}, Lcom/liquable/nemo/friend/model/Account;->sync(Lcom/liquable/nemo/model/account/AccountDto;)V

    .line 882
    iget-object v10, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v10, v4}, Lcom/liquable/nemo/db/AccountDao;->update(Lcom/liquable/nemo/friend/model/Account;)V

    .line 883
    iget-object v10, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUpdated(Ljava/lang/String;)V

    goto :goto_1

    .line 887
    .end local v1    # "account":Lcom/liquable/nemo/model/account/AccountDto;
    .end local v2    # "accountDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    .end local v4    # "existsAccount":Lcom/liquable/nemo/friend/model/Account;
    .end local v7    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_4
    return-void
.end method

.method public unblockFriend(Ljava/lang/String;)V
    .locals 4
    .param p1, "fuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 890
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 892
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getBeforeBlockFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v1

    .line 893
    .local v1, "beforeBlockFriendState":Lcom/liquable/nemo/friend/model/Account$FriendState;
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v1, v2, :cond_0

    .line 894
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 896
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->friendService:Lcom/liquable/nemo/client/service/IFriendService;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lcom/liquable/nemo/client/service/IFriendService;->unblockFriend(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/friend/model/Account$FriendState;)V

    .line 898
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account;->updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z

    .line 899
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/AccountDao;->updateFriendState(Lcom/liquable/nemo/friend/model/Account;)Z

    .line 900
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUnblocked(Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method public updateDisplayName(Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 904
    invoke-virtual {p1, p2}, Lcom/liquable/nemo/friend/model/Account;->setDisplayName(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/AccountDao;->updateDisplayName(Lcom/liquable/nemo/friend/model/Account;)V

    .line 906
    return-void
.end method
