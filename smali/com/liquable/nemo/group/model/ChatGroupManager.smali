.class public Lcom/liquable/nemo/group/model/ChatGroupManager;
.super Ljava/lang/Object;
.source "ChatGroupManager.java"


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

.field private final chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

.field private final chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

.field private final chattingService:Lcom/liquable/nemo/client/service/IChattingService;

.field private final deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

.field private final friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

.field private final messageDao:Lcom/liquable/nemo/db/MessageDao;

.field private final notificationService:Lcom/liquable/nemo/android/BroadcastManager;

.field private final pref:Lcom/liquable/nemo/util/Pref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupManager;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/db/ChatGroupDao;Lcom/liquable/nemo/db/ChatGroupMemberDao;Lcom/liquable/nemo/db/MessageDao;Lcom/liquable/nemo/client/service/IChatGroupService;Lcom/liquable/nemo/client/service/IChattingService;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/friend/model/FriendManager;Lcom/liquable/nemo/db/DeletedMessageIdDao;)V
    .locals 0
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "accountDao"    # Lcom/liquable/nemo/db/AccountDao;
    .param p3, "chatGroupDao"    # Lcom/liquable/nemo/db/ChatGroupDao;
    .param p4, "chatGroupMemberDao"    # Lcom/liquable/nemo/db/ChatGroupMemberDao;
    .param p5, "messageDao"    # Lcom/liquable/nemo/db/MessageDao;
    .param p6, "chatGroupService"    # Lcom/liquable/nemo/client/service/IChatGroupService;
    .param p7, "chattingService"    # Lcom/liquable/nemo/client/service/IChattingService;
    .param p8, "notificationService"    # Lcom/liquable/nemo/android/BroadcastManager;
    .param p9, "friendManager"    # Lcom/liquable/nemo/friend/model/FriendManager;
    .param p10, "deletedMessageIdDao"    # Lcom/liquable/nemo/db/DeletedMessageIdDao;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 84
    iput-object p3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    .line 85
    iput-object p4, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    .line 86
    iput-object p5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    .line 87
    iput-object p6, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    .line 88
    iput-object p7, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    .line 89
    iput-object p8, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    .line 90
    iput-object p9, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 91
    iput-object p10, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    .line 92
    return-void
.end method

.method private cacheDeletedMessagesId(Ljava/lang/String;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "lastDeletedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->saveAll(Ljava/util/List;)V

    .line 123
    return-void
.end method

.method private listMostActiveMembers(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
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
    const/4 v7, 0x0

    .line 388
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const/16 v6, 0x1f4

    invoke-virtual {v5, p1, v6, v7}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 390
    .local v4, "recentMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 392
    .local v0, "activeCounts":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 393
    .local v1, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "key":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 398
    .end local v1    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 400
    .local v3, "members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/liquable/nemo/group/model/ChatGroupManager$3;

    invoke-direct {v5, p0, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager$3;-><init>(Lcom/liquable/nemo/group/model/ChatGroupManager;Ljava/util/concurrent/ConcurrentMap;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 407
    return-object v3
.end method

.method private saveChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 2
    .param p1, "chatGroupDto"    # Lcom/liquable/nemo/model/group/ChatGroupDto;
    .param p2, "visible"    # Z

    .prologue
    .line 594
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getMemberUids()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/db/ChatGroupDao;->insertOrUpdateChatGroupWithMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method private tryElectAndChangeNextOwner(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 9
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v6, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/liquable/nemo/group/model/ChatGroup;->amIOwner(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    const/4 v5, 0x0

    .line 640
    .local v5, "nextOwnerUid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listMostActiveMembers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 641
    .local v4, "memberUidsOrderByActive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->listMemberUids()Ljava/util/List;

    move-result-object v1

    .line 642
    .local v1, "candidateUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    .local v0, "activeUid":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 644
    move-object v5, v0

    .line 649
    .end local v0    # "activeUid":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_4

    .line 650
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 653
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "nextOwnerUid":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 658
    .restart local v5    # "nextOwnerUid":Ljava/lang/String;
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v5, v8}, Lcom/liquable/nemo/client/service/IChatGroupService;->changeOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 660
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 662
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 660
    invoke-static {v6, v5, v7}, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;

    move-result-object v2

    .line 663
    .local v2, "changeOwnerMessage":Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 664
    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 663
    invoke-static {v6, v7}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 665
    iget-object v6, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v6, v2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    :try_end_0
    .catch Lcom/liquable/nemo/model/NotChatGroupOwnerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    .end local v2    # "changeOwnerMessage":Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;
    :catch_0
    move-exception v3

    .line 668
    .local v3, "e":Lcom/liquable/nemo/model/NotChatGroupOwnerException;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isVisible()Z

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/liquable/nemo/group/model/ChatGroupManager;->syncChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 669
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "unexpected, force crash and let user restart to clean app state"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method


# virtual methods
.method public activateMember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "senderId"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->updateActive(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public addMember(Ljava/lang/String;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "friend"    # Lcom/liquable/nemo/friend/model/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 100
    .local v1, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, p2, v3}, Lcom/liquable/nemo/client/service/IChatGroupService;->addMember(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)Z

    .line 104
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->syncChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 106
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroup;->setLastUpdateTime(Ljava/util/Date;)V

    .line 107
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateLastUpdateTime(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 109
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    move-result-object v0

    .line 111
    .local v0, "addMemberMessage":Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 112
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 113
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v2, v0}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 114
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 115
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/MessageDao;->insert(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    .line 116
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNewMessage(Lcom/liquable/nemo/message/model/IDomainMessage;Z)V

    .line 117
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupMemberAdded(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public clearChatGroupHistory(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->cacheDeletedMessagesId(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/MessageDao;->deleteAllByChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 128
    invoke-virtual {p1, v2}, Lcom/liquable/nemo/group/model/ChatGroup;->setHasRecentPicture(Z)V

    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->updateHasRecentPicture(Ljava/lang/String;Z)V

    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupHistoryCleared(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public createChatGroup(Ljava/lang/String;Ljava/util/List;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 5
    .param p1, "groupTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/nemo/group/model/ChatGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "memberUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    iget-object v4, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1, p2}, Lcom/liquable/nemo/client/service/IChatGroupService;->createChatGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/liquable/nemo/model/group/ChatGroupDto;

    move-result-object v1

    .line 139
    .local v1, "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->saveChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 141
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    move-result-object v2

    .line 142
    .local v2, "createChatGroupMessage":Lcom/liquable/nemo/message/model/CreateChatGroupMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 143
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v3, v4}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 144
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v3, v2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 145
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 146
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/db/MessageDao;->insert(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    .line 147
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupCreated(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNewMessage(Lcom/liquable/nemo/message/model/IDomainMessage;Z)V

    .line 149
    return-object v0
.end method

.method public createInvisibleOneToOneChatGroups(Ljava/util/List;)V
    .locals 7
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
    .line 154
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "newFriendUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/Account;

    .line 156
    .local v1, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v6, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v6, v1}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 157
    .local v0, "foundGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0    # "foundGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "friend":Lcom/liquable/nemo/friend/model/Account;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    :cond_2
    return-void

    .line 165
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-interface {v5, v4}, Lcom/liquable/nemo/client/service/IChatGroupService;->findOrCreateOneToOneGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 166
    .local v3, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/group/ChatGroupDto;

    .line 167
    .local v2, "group":Lcom/liquable/nemo/model/group/ChatGroupDto;
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->saveChatGroupAsInvisible(Lcom/liquable/nemo/model/group/ChatGroupDto;)Lcom/liquable/nemo/group/model/ChatGroup;

    goto :goto_1
.end method

.method public createRobotGroup(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 14
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 172
    new-instance v0, Lcom/liquable/nemo/group/model/ChatGroup;

    const-string/jumbo v1, "ROBOT"

    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    sget-object v7, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->GROUP:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    sget-object v12, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-object v2, p1

    move-object v10, v4

    move v11, v8

    move v13, v9

    invoke-direct/range {v0 .. v13}, Lcom/liquable/nemo/group/model/ChatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;ZILjava/lang/String;ZLcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;Z)V

    .line 184
    .local v0, "robot":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    new-array v2, v8, [Lcom/liquable/nemo/group/model/ChatGroup;

    aput-object v0, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->insertAll(Ljava/util/List;)V

    .line 185
    return-object v0
.end method

.method public deactivateMember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "removedUid"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->updateActive(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public deleteChatGroup(Ljava/lang/String;)V
    .locals 6
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 195
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 197
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deleteOneToOneChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRemovedByOwner()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    :cond_2
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deleteLocalChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 207
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupDeleted(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/util/Pref;->setHasDeletedChatGroup(Z)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-direct {p0, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->tryElectAndChangeNextOwner(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deleteLocalChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 215
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupDeleted(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "myUid":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-interface {v3, p1, v2}, Lcom/liquable/nemo/client/service/IChatGroupService;->removeMember(Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    invoke-static {p1}, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;

    move-result-object v1

    .line 228
    .local v1, "leaveMessage":Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;
    invoke-static {p1, v2}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 229
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v3, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 231
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/util/Pref;->setHasDeletedChatGroup(Z)V

    goto :goto_0
.end method

.method public deleteLocalChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->deleteAllByChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 236
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/MessageDao;->deleteAllByChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 237
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->delete(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 238
    return-void
.end method

.method public deleteOneToOneChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v0

    const-string/jumbo v1, "deleteOneToOneChatGroup only accept one to one chatgroup"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->cacheDeletedMessagesId(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/MessageDao;->deleteAllByChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 245
    invoke-virtual {p1, v2}, Lcom/liquable/nemo/group/model/ChatGroup;->setHasRecentPicture(Z)V

    .line 246
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->updateHasRecentPicture(Ljava/lang/String;Z)V

    .line 247
    invoke-virtual {p1, v2}, Lcom/liquable/nemo/group/model/ChatGroup;->setUnreadCount(I)V

    .line 248
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateUnreadCount(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 249
    invoke-virtual {p1, v2}, Lcom/liquable/nemo/group/model/ChatGroup;->setVisible(Z)V

    .line 250
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateVisible(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 252
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupDeleted(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setHasDeletedChatGroup(Z)V

    .line 254
    return-void
.end method

.method public enableOneToOneChatGroup(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 3
    .param p1, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 258
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 264
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :goto_0
    return-object v0

    .line 261
    .restart local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroup;->setVisible(Z)V

    .line 262
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateVisible(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 263
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public filterByNotChannel(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 270
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isBroadcastChannel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    return-object v1
.end method

.method public filterByOneToOneOrNot(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p2, "isOneToOne"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 281
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 282
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    if-eqz p2, :cond_2

    .line 286
    new-instance v1, Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/model/FriendListComparator;-><init>()V

    .line 287
    .local v1, "friendListComparator":Lcom/liquable/nemo/friend/model/FriendListComparator;
    new-instance v3, Lcom/liquable/nemo/group/model/ChatGroupManager$1;

    invoke-direct {v3, p0, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager$1;-><init>(Lcom/liquable/nemo/group/model/ChatGroupManager;Lcom/liquable/nemo/friend/model/FriendListComparator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 301
    .end local v1    # "friendListComparator":Lcom/liquable/nemo/friend/model/FriendListComparator;
    :goto_1
    return-object v2

    .line 294
    :cond_2
    new-instance v3, Lcom/liquable/nemo/group/model/ChatGroupManager$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/group/model/ChatGroupManager$2;-><init>(Lcom/liquable/nemo/group/model/ChatGroupManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMultiChatGroupCount()I
    .locals 4

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/ChatGroupDao;->listAlls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 311
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    return v1
.end method

.method public getNumberOfChatGroupsWithMessages()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/ChatGroupDao;->getNumberOfChatGroupsWithMessages()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getSmallWallpaperFile(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 323
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->hasSetSpecificWallpaper(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->isDefaultWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 328
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 329
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 332
    goto :goto_0

    .line 335
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getWallpaperFile(Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getWallpaperFile(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->hasSetSpecificWallpaper(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->isDefaultWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 365
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 366
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 369
    goto :goto_0

    .line 372
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getWallpaperFile(Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getWallpaperFile(Z)Ljava/io/File;
    .locals 4
    .param p1, "isSmall"    # Z

    .prologue
    .line 342
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "wallpaperBaseNameOrCode":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->isDefaultWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-static {p1, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 346
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 347
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetSpecificWallpaper(Lcom/liquable/nemo/group/model/ChatGroup;)Z
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listChatGroupTopicsWithMessageType(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v0, "messageCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v2, "MESSAGES"

    invoke-virtual {v1, v2, p1}, Lcom/liquable/nemo/db/MessageDao;->listAllChatgroupMessageCount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 382
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    const-string/jumbo v2, "ARCHIVED_MESSAGES"

    invoke-virtual {v1, v2, p1}, Lcom/liquable/nemo/db/MessageDao;->listAllChatgroupMessageCount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 384
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public listShareableChatGroups()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v2, "shareableChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v3}, Lcom/liquable/nemo/db/ChatGroupDao;->listAlls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 413
    .local v1, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 416
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 417
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    .end local v1    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_2
    return-object v2
.end method

.method public listVisibleChatGroups()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v1, "visibleChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/ChatGroupDao;->listAlls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 431
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getVisibleChatGroupCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 436
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Pref;->setVisibleChatGroupCount(I)V

    .line 438
    :cond_2
    return-object v1
.end method

.method public modifyChatGroupBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 443
    return-void
.end method

.method public modifyChatGroupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/liquable/nemo/client/service/IChatGroupService;->updateChatGroupName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 456
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/group/model/ChatGroup;->setName(Ljava/lang/String;)V

    .line 457
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/group/model/ChatGroup;->setLastUpdateTime(Ljava/util/Date;)V

    .line 458
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateName(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 459
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateLastUpdateTime(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 461
    invoke-static {p1, p2}, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    move-result-object v1

    .line 463
    .local v1, "updateGroupNameMessage":Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 464
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v2, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 465
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 466
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/db/MessageDao;->insert(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    .line 467
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupTitleChanged(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNewMessage(Lcom/liquable/nemo/message/model/IDomainMessage;Z)V

    .line 469
    return-void
.end method

.method public muteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;Z)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "mute"    # Z

    .prologue
    .line 472
    invoke-virtual {p1, p2}, Lcom/liquable/nemo/group/model/ChatGroup;->setMute(Z)V

    .line 473
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateMute(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 474
    return-void
.end method

.method public recoverChatGroup(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 484
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_1

    .line 488
    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/group/model/ChatGroup;->setVisible(Z)V

    .line 490
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateVisible(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 491
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 494
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRemovedByOwner()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :goto_0
    return-object v0

    .restart local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->recoverChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public recoverChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 505
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-interface {v3, p1}, Lcom/liquable/nemo/client/service/IChatGroupService;->getChatGroup(Ljava/lang/String;)Lcom/liquable/nemo/model/group/ChatGroupDto;

    move-result-object v1

    .line 506
    .local v1, "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getMemberUids()Ljava/util/List;

    move-result-object v2

    .line 507
    .local v2, "memberUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 508
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v3, v2, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->recoverFriends(Ljava/util/List;Z)V

    .line 509
    invoke-direct {p0, v1, p2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->saveChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 510
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRemovedByOwner()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    invoke-virtual {v0, v4}, Lcom/liquable/nemo/group/model/ChatGroup;->setRemovedByOwner(Z)V

    .line 512
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateRemovedByOwner(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 514
    :cond_0
    return-object v0
.end method

.method public removeMemberByOwner(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 9
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "removeMember"    # Lcom/liquable/nemo/friend/model/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/NotChatGroupOwnerException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 519
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    const-string/jumbo v8, "only multi group allow remove member"

    invoke-static {v5, v8}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 520
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "myUid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->resolveOwnerUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v8, "only Chat group owner can remove member"

    invoke-static {v5, v8}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 540
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/liquable/nemo/client/service/IChatGroupService;->getChatGroup(Ljava/lang/String;)Lcom/liquable/nemo/model/group/ChatGroupDto;

    move-result-object v4

    .line 541
    .local v4, "reloaded":Lcom/liquable/nemo/model/group/ChatGroupDto;
    invoke-virtual {v4}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getOwnerUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 542
    sget-object v5, Lcom/liquable/nemo/group/model/ChatGroupManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeMemberByOwner, but not chat group owner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", start patching..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, v4, v6}, Lcom/liquable/nemo/group/model/ChatGroupManager;->saveChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    .line 546
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 547
    new-instance v5, Lcom/liquable/nemo/model/NotChatGroupOwnerException;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/liquable/nemo/model/NotChatGroupOwnerException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .end local v3    # "myUid":Ljava/lang/String;
    .end local v4    # "reloaded":Lcom/liquable/nemo/model/group/ChatGroupDto;
    :cond_0
    move v5, v7

    .line 519
    goto :goto_0

    .line 550
    .restart local v3    # "myUid":Ljava/lang/String;
    .restart local v4    # "reloaded":Lcom/liquable/nemo/model/group/ChatGroupDto;
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v8

    .line 550
    invoke-static {v5, v3, v6, v8}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->createForToBeRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    move-result-object v2

    .line 555
    .local v2, "messageForToBeRemoved":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 556
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 560
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v5, v2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 564
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v8, v3}, Lcom/liquable/nemo/client/service/IChatGroupService;->removeMemberByOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/NotChatGroupOwnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    .line 572
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    .line 573
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v8

    .line 570
    invoke-static {v5, v3, v6, v8}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->createByOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    move-result-object v1

    .line 575
    .local v1, "message":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 577
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 578
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v5, v1}, Lcom/liquable/nemo/db/MessageDao;->insert(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    .line 579
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v5, v1, v7}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNewMessage(Lcom/liquable/nemo/message/model/IDomainMessage;Z)V

    .line 580
    iget-object v5, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;

    invoke-interface {v5, v1}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 582
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/liquable/nemo/group/model/ChatGroupManager;->deactivateMember(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void

    .line 565
    .end local v1    # "message":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Lcom/liquable/nemo/model/NotChatGroupOwnerException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "remove member state error"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public saveChatGroupAsInvisible(Lcom/liquable/nemo/model/group/ChatGroupDto;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 2
    .param p1, "chatGroupDto"    # Lcom/liquable/nemo/model/group/ChatGroupDto;

    .prologue
    .line 599
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getMemberUids()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/db/ChatGroupDao;->insertOrUpdateChatGroupWithMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public setRemovedByOwner(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/group/model/ChatGroup;->setRemovedByOwner(Z)V

    .line 605
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateRemovedByOwner(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 606
    return-void
.end method

.method public setVisible(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/group/model/ChatGroup;->setVisible(Z)V

    .line 610
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateVisible(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 611
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public syncAllMultiChatGroupsFromServer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-interface {v2}, Lcom/liquable/nemo/client/service/IChatGroupService;->listMultiChatGroups()Ljava/util/List;

    move-result-object v0

    .line 616
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/group/ChatGroupDto;

    .line 617
    .local v1, "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->saveChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    goto :goto_0

    .line 619
    .end local v1    # "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    :cond_0
    return-void
.end method

.method public syncChatGroupFromServer(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 629
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupService:Lcom/liquable/nemo/client/service/IChatGroupService;

    invoke-interface {v1, p1}, Lcom/liquable/nemo/client/service/IChatGroupService;->getChatGroup(Ljava/lang/String;)Lcom/liquable/nemo/model/group/ChatGroupDto;

    move-result-object v0

    .line 630
    .local v0, "reloaded":Lcom/liquable/nemo/model/group/ChatGroupDto;
    invoke-direct {p0, v0, p2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->saveChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    return-object v1
.end method

.method public updateHasRecentPicture(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "hasRecentPicture"    # Z

    .prologue
    .line 674
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/db/ChatGroupDao;->updateHasRecentPicture(Ljava/lang/String;Z)V

    .line 675
    return-void
.end method

.method public updateLastAction(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "type"    # Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    .prologue
    .line 679
    invoke-virtual {p1, p2}, Lcom/liquable/nemo/group/model/ChatGroup;->setLastActionState(Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;)V

    .line 680
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateLastAction(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 681
    return-void
.end method

.method public updateRobotLastUpdateTime()V
    .locals 5

    .prologue
    .line 684
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    const-string/jumbo v1, "ROBOT"

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->updateLastUpdateTime(Ljava/lang/String;Ljava/util/Date;)V

    .line 685
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->notificationService:Lcom/liquable/nemo/android/BroadcastManager;

    const-string/jumbo v1, "ROBOT"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupUpdated(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public updateUnfinishedMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "unfinishedMessage"    # Ljava/lang/String;

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnfinishedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-virtual {p1, p2}, Lcom/liquable/nemo/group/model/ChatGroup;->setUnfinishedMessage(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->updateUnfinishedMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0
.end method
