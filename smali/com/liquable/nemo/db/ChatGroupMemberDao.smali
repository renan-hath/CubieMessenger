.class public Lcom/liquable/nemo/db/ChatGroupMemberDao;
.super Ljava/lang/Object;
.source "ChatGroupMemberDao.java"


# instance fields
.field private final cachedTopicActiveMemberIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    return-void
.end method

.method private listActiveMemberIdsByTopicWithoutCache(Ljava/lang/String;)Ljava/util/List;
    .locals 12
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
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 89
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 90
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "CHAT_GROUP_MEMBERS"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v11, "CGM_CHAT_GROUP_TOPIC = ?  and CGM_IS_ACTIVE > 0 "

    .line 95
    .local v11, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "CGM_FRIEND_ID"

    aput-object v3, v2, v6

    const-string/jumbo v3, "CGM_CHAT_GROUP_TOPIC = ?  and CGM_IS_ACTIVE > 0 "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 104
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 114
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v10

    .line 108
    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v10, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string/jumbo v1, "CGM_FRIEND_ID"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 114
    .end local v10    # "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v10    # "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroupMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    :cond_0
    return-object v0

    .line 183
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroupMember;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p1}, Lcom/liquable/nemo/group/model/ChatGroupMember;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/group/model/ChatGroupMember;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteAllByChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CHAT_GROUP_MEMBERS"

    const-string/jumbo v2, "CGM_CHAT_GROUP_TOPIC = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->evictCachedTopicMemberIds(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public deleteByChatGroupAndAccount(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "friendId"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CHAT_GROUP_MEMBERS"

    const-string/jumbo v2, "CGM_CHAT_GROUP_TOPIC = ? and CGM_FRIEND_ID = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->evictCachedTopicMemberId(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public evictCachedTopicMemberId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 52
    .local v0, "accountIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->evictCachedTopicMemberIds(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public evictCachedTopicMemberIds(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroupMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "chatGroupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroupMember;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v0, "affectTopics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/group/model/ChatGroupMember;

    .line 67
    .local v1, "chatGroupMember":Lcom/liquable/nemo/group/model/ChatGroupMember;
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupMember;->createContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 68
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "CHAT_GROUP_MEMBERS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 69
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupMember;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v1    # "chatGroupMember":Lcom/liquable/nemo/group/model/ChatGroupMember;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "topic":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->evictCachedTopicMemberIds(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    .end local v2    # "topic":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public listActiveMemberIdsByTopic(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 78
    iget-object v2, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 79
    .local v1, "found":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->listActiveMemberIdsByTopicWithoutCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "actives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method mergeAllMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;)V
    .locals 9
    .param p1, "groupDto"    # Lcom/liquable/nemo/model/group/ChatGroupDto;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->listActiveMemberIdsByTopicWithoutCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "existActives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getMemberUids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "memberUid":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "CHAT_GROUP_MEMBERS"

    const/4 v6, 0x0

    .line 124
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v1, v8}, Lcom/liquable/nemo/group/model/ChatGroupMember;->createContentValues(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v7

    const/4 v8, 0x5

    .line 122
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v1    # "memberUid":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "uid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->updateActive(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 134
    .end local v2    # "uid":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->cachedTopicActiveMemberIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getMemberUids()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public rawList(II)Ljava/util/List;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroupMember;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 139
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "CHAT_GROUP_MEMBERS"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupMember;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 149
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 151
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public rawListByFriendId(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroupMember;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 161
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 162
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "CHAT_GROUP_MEMBERS"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroupMember;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "CGM_FRIEND_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 172
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 174
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public updateActive(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "accountUid"    # Ljava/lang/String;
    .param p3, "active"    # Z

    .prologue
    .line 193
    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/group/model/ChatGroupMember;->createContentValues(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 196
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "CHAT_GROUP_MEMBERS"

    const-string/jumbo v4, "CGM_CHAT_GROUP_TOPIC = ? and CGM_FRIEND_ID = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, "updateCount":I
    if-nez v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/liquable/nemo/db/ChatGroupMemberDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "CHAT_GROUP_MEMBERS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->evictCachedTopicMemberIds(Ljava/lang/String;)V

    .line 208
    return-void
.end method
