.class public Lcom/liquable/nemo/db/ChatGroupDao;
.super Ljava/lang/Object;
.source "ChatGroupDao.java"


# instance fields
.field private final chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/db/ChatGroupMemberDao;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "chatGroupMemberDao"    # Lcom/liquable/nemo/db/ChatGroupMemberDao;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    iput-object p2, p0, Lcom/liquable/nemo/db/ChatGroupDao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    .line 40
    return-void
.end method

.method private mapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    :cond_0
    return-object v2

    .line 275
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v7, 0x0

    .line 278
    .local v7, "prevGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    const/4 v3, 0x0

    .line 279
    .local v3, "containsBrokenData":Z
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 280
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "groupTopic":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 283
    move-object v5, v7

    .line 290
    .local v5, "group":Lcom/liquable/nemo/group/model/ChatGroup;
    :goto_1
    const-string/jumbo v8, "CGM_IS_ACTIVE"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_3

    .line 292
    const-string/jumbo v8, "AC_UID"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "accountUid":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 294
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 295
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_3

    .line 296
    invoke-virtual {v5, v0}, Lcom/liquable/nemo/group/model/ChatGroup;->addMember(Lcom/liquable/nemo/friend/model/Account;)V

    .line 304
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v1    # "accountUid":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    .line 305
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v8

    invoke-interface {v8}, Lcom/liquable/nemo/analytics/IAnalyticsService;->brokenDataMissingAccount()V

    goto :goto_0

    .line 285
    .end local v5    # "group":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_4
    invoke-static {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v5

    .line 286
    .restart local v5    # "group":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    move-object v7, v5

    goto :goto_1

    .line 299
    .restart local v1    # "accountUid":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "CGM_FRIEND_ID"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "friendId":Ljava/lang/String;
    iget-object v8, p0, Lcom/liquable/nemo/db/ChatGroupDao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    invoke-virtual {v8, v5, v4}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->deleteByChatGroupAndAccount(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V

    .line 301
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :cond_0
    return-object v0

    .line 362
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-static {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 365
    .local v1, "group":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 380
    return-void
.end method

.method private updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CHAT_GROUPS"

    const-string/jumbo v2, "CG_TOPIC =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 387
    return-void
.end method


# virtual methods
.method public delete(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "should not delete one to one chatgroup from database"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "CHAT_GROUPS"

    const-string/jumbo v4, "CG_TOPIC = ? "

    new-array v1, v1, [Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 45
    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0
.end method

.method public findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 8
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    const-string/jumbo v0, " SELECT *  from CHAT_GROUPS left join CHAT_GROUP_MEMBERS on CG_TOPIC = CGM_CHAT_GROUP_TOPIC left join ACCOUNTS on CGM_FRIEND_ID = AC_UID where CG_TOPIC = ? "

    .line 70
    .local v0, "Sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, " SELECT *  from CHAT_GROUPS left join CHAT_GROUP_MEMBERS on CG_TOPIC = CGM_CHAT_GROUP_TOPIC left join ACCOUNTS on CGM_FRIEND_ID = AC_UID where CG_TOPIC = ? "

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 72
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/group/model/ChatGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 73
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 75
    .end local v1    # "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 12
    .param p1, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 80
    if-eqz p1, :cond_0

    move v4, v5

    :goto_0
    const-string/jumbo v7, "friend must not be null"

    invoke-static {v4, v7}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 81
    const-string/jumbo v3, "  SELECT *  from CHAT_GROUPS inner join CHAT_GROUP_MEMBERS on CG_TOPIC = CGM_CHAT_GROUP_TOPIC inner join ACCOUNTS on CGM_FRIEND_ID =  AC_UID where CG_CHAT_GROUP_TYPE = ? and AC_UID = ? and CGM_IS_ACTIVE > 0 "

    .line 108
    .local v3, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "  SELECT *  from CHAT_GROUPS inner join CHAT_GROUP_MEMBERS on CG_TOPIC = CGM_CHAT_GROUP_TOPIC inner join ACCOUNTS on CGM_FRIEND_ID =  AC_UID where CG_CHAT_GROUP_TYPE = ? and AC_UID = ? and CGM_IS_ACTIVE > 0 "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    sget-object v9, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    .line 109
    invoke-virtual {v9}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->name()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 110
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 108
    invoke-virtual {v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 112
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 114
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/group/model/ChatGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v4

    .end local v1    # "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 80
    goto :goto_0

    .line 115
    .restart local v1    # "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_3

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 117
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v11, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eq v5, v11, :cond_2

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    goto :goto_1

    .line 123
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_3
    const/4 v4, 0x0

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1    # "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public getNumberOfChatGroupsWithMessages()Landroid/util/Pair;
    .locals 17
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
    .line 130
    const-string/jumbo v7, "SELECT CG_TOPIC , CG_CHAT_GROUP_TYPE FROM %s JOIN CHAT_GROUPS ON MSG_CHAT_GROUP_TOPIC = CG_TOPIC GROUP BY CG_TOPIC , CG_CHAT_GROUP_TYPE"

    .line 146
    .local v7, "sql":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v6, "oneToOneChatTopics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v3, "groupChatGroupTopics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "MESSAGES"

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "ARCHIVED_MESSAGES"

    aput-object v12, v5, v11

    .line 151
    .local v5, "messageTables":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 153
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    array-length v12, v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v4, v5, v11

    .line 154
    .local v4, "messageTable":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v14, "SELECT CG_TOPIC , CG_CHAT_GROUP_TYPE FROM %s JOIN CHAT_GROUPS ON MSG_CHAT_GROUP_TOPIC = CG_TOPIC GROUP BY CG_TOPIC , CG_CHAT_GROUP_TYPE"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 156
    const-string/jumbo v13, "CG_TOPIC"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "topic":Ljava/lang/String;
    const-string/jumbo v13, "CG_CHAT_GROUP_TYPE"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "typeString":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v10}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_0

    .line 163
    :try_start_1
    invoke-static {v10}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 167
    .local v9, "type":Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    :try_start_2
    sget-object v13, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    invoke-virtual {v9, v13}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 168
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 175
    .end local v4    # "messageTable":Ljava/lang/String;
    .end local v8    # "topic":Ljava/lang/String;
    .end local v9    # "type":Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    .end local v10    # "typeString":Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz v1, :cond_1

    .line 176
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v11

    .line 164
    .restart local v4    # "messageTable":Ljava/lang/String;
    .restart local v8    # "topic":Ljava/lang/String;
    .restart local v10    # "typeString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 170
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "type":Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    :cond_2
    :try_start_3
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 153
    .end local v8    # "topic":Ljava/lang/String;
    .end local v9    # "type":Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    .end local v10    # "typeString":Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 175
    .end local v4    # "messageTable":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 176
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_5
    new-instance v11, Landroid/util/Pair;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public getVisibleCount()J
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "SELECT COUNT(*) FROM CHAT_GROUPS WHERE CG_CHAT_GROUP_VISIBLE =1"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 190
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 192
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 198
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->createContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 199
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "CHAT_GROUPS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 201
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public insertOrUpdateChatGroupWithMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;Z)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 3
    .param p1, "groupDto"    # Lcom/liquable/nemo/model/group/ChatGroupDto;
    .param p2, "visible"    # Z

    .prologue
    .line 205
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 206
    .local v0, "now":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/liquable/nemo/db/ChatGroupDao;->insertOrUpdateChatGroupWithMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;ZJ)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    return-object v2
.end method

.method public insertOrUpdateChatGroupWithMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;ZJ)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 8
    .param p1, "groupDto"    # Lcom/liquable/nemo/model/group/ChatGroupDto;
    .param p2, "visible"    # Z
    .param p3, "lastUpdateTime"    # J

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 213
    .local v0, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 215
    const-string/jumbo v4, "CG_NAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v4, "CG_CHAT_GROUP_VISIBLE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 217
    const-string/jumbo v4, "CG_OWNER"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getOwnerUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0, v3}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 238
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/liquable/nemo/db/ChatGroupDao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->mergeAllMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;)V

    .line 239
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    return-object v4

    .line 220
    :cond_1
    const-string/jumbo v4, "CG_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v4, "CG_CREATOR"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v4, "CG_OWNER"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getOwnerUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v4, "CG_CREATE_TIME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getCreateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string/jumbo v4, "CG_LAST_UPDATE_TIME"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string/jumbo v4, "CG_NAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v5, "CG_CHAT_GROUP_TYPE"

    .line 227
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->isMulti()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->GROUP:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->name()Ljava/lang/String;

    move-result-object v4

    .line 226
    :goto_1
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v4, "CG_CHAT_GROUP_VISIBLE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 229
    const-string/jumbo v4, "CG_REMOVED_BY_OWNER"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 230
    iget-object v4, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "CHAT_GROUPS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 231
    .local v1, "result":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 232
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertOrUpdateChatGroupWithMembers error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 227
    .end local v1    # "result":J
    :cond_2
    sget-object v4, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public listAlls()Ljava/util/List;
    .locals 5
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
    .line 243
    const-string/jumbo v0, " SELECT *  from CHAT_GROUPS left join CHAT_GROUP_MEMBERS on CG_TOPIC = CGM_CHAT_GROUP_TOPIC left join ACCOUNTS on CGM_FRIEND_ID = AC_UID order by CG_LAST_UPDATE_TIME desc "

    .line 262
    .local v0, "Sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, " SELECT *  from CHAT_GROUPS left join CHAT_GROUP_MEMBERS on CG_TOPIC = CGM_CHAT_GROUP_TOPIC left join ACCOUNTS on CGM_FRIEND_ID = AC_UID order by CG_LAST_UPDATE_TIME desc "

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 264
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/ChatGroupDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public rawFindByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 11
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 318
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 319
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "CHAT_GROUPS"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroup;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "CG_TOPIC = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 329
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/ChatGroupDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    .line 330
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 333
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/group/model/ChatGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    goto :goto_0

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public rawListAll(II)Ljava/util/List;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "numberOfMessage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 340
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 341
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "CHAT_GROUPS"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/liquable/nemo/db/ChatGroupDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/group/model/ChatGroup;->PROJECTION:[Ljava/lang/String;

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

    .line 351
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/ChatGroupDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 353
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public updateBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 371
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_CHAT_GROUP_BACKGROUND"

    .line 373
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 376
    return-void
.end method

.method public updateHasRecentPicture(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "hasRecentPicture"    # Z

    .prologue
    .line 390
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_HAS_RECENT_PICTURE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 393
    return-void
.end method

.method public updateLastAction(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 396
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_LAST_ACTION"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastActionState()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 399
    return-void
.end method

.method public updateLastUpdateTime(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 402
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_LAST_UPDATE_TIME"

    .line 404
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 406
    return-void
.end method

.method public updateLastUpdateTime(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "lastUpdateTime"    # Ljava/util/Date;

    .prologue
    .line 409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_LAST_UPDATE_TIME"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 412
    return-void
.end method

.method public updateMute(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 415
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_CHAT_GROUP_MUTE"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isMute()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 417
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 418
    return-void
.end method

.method public updateName(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_NAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 424
    return-void
.end method

.method public updateRemovedByOwner(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 427
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 428
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_REMOVED_BY_OWNER"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isRemovedByOwner()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 430
    return-void
.end method

.method public updateUnfinishedMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_UNFINISHED_MESSAGE"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnfinishedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 436
    return-void
.end method

.method public updateUnreadCount(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 439
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_CHAT_GROUP_UNREAD_COUNT"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 442
    return-void
.end method

.method public updateVisible(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 445
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_CHAT_GROUP_VISIBLE"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 447
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->updateContentValues(Lcom/liquable/nemo/group/model/ChatGroup;Landroid/content/ContentValues;)V

    .line 448
    return-void
.end method
