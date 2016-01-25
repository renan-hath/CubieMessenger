.class public Lcom/liquable/nemo/db/MessageDao;
.super Ljava/lang/Object;
.source "MessageDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/db/MessageDao$Order;
    }
.end annotation


# static fields
.field private static final ARCHIVE_BATCH_SIZE:I = 0x12c

.field private static final debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;


# instance fields
.field private final cachedTopicLastMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->getLogger()Lcom/liquable/nemo/util/RemoteAccessLog;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/db/MessageDao;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/message/model/MessageProcessor;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageProcessor"    # Lcom/liquable/nemo/message/model/MessageProcessor;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    iput-object p2, p0, Lcom/liquable/nemo/db/MessageDao;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    .line 51
    return-void
.end method

.method private getLastMessageByChatGroup(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 12
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 250
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 251
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v11, "MSG_CHAT_GROUP_TOPIC = ? "

    .line 253
    .local v11, "selector":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "MSG_CHAT_GROUP_TOPIC = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string/jumbo v7, "MSG_RECEIVE_TIME desc "

    const-string/jumbo v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 262
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    .line 263
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    goto :goto_0

    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private insertAllByTable(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, "domainMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 382
    .local v0, "affectTopics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 383
    .local v1, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/db/MessageDao;->isExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 384
    iget-object v5, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/liquable/nemo/db/MessageDao;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    .line 386
    invoke-virtual {v1, v7}, Lcom/liquable/nemo/message/model/DomainMessage;->createContentValues(Lcom/liquable/nemo/message/model/MessageProcessor;)Landroid/content/ContentValues;

    move-result-object v7

    .line 384
    invoke-virtual {v5, p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 387
    .local v2, "result":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 393
    .end local v1    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    .local v3, "topic":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/db/MessageDao;->evictCachedTopicLastMessageByTopic(Ljava/lang/String;)V

    goto :goto_2

    .line 396
    .end local v3    # "topic":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "chatGroupTopic"    # Ljava/lang/String;
    .param p3, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 565
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 566
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 567
    const-string/jumbo v9, "MSG_CHAT_GROUP_TOPIC = ? and MSG_TYPE = ? "

    .line 571
    .local v9, "selector":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "MSG_CHAT_GROUP_TOPIC = ? and MSG_TYPE = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v4, v6

    const/4 v6, 0x1

    aput-object p3, v4, v6

    const-string/jumbo v7, "MSG_RECEIVE_TIME desc "

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 579
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/MessageDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 581
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private mapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 746
    :cond_0
    return-object v0

    .line 741
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    invoke-static {p1, v1}, Lcom/liquable/nemo/message/model/DomainMessage;->fromCursor(Landroid/database/Cursor;Lcom/liquable/nemo/message/model/MessageProcessor;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private mappingRawReadedAcks(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/ReadedAck;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 751
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 758
    :cond_0
    return-object v0

    .line 754
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v0, "readedAcks":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/ReadedAck;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    invoke-static {p1}, Lcom/liquable/nemo/message/model/ReadedAck;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/message/model/ReadedAck;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private rawListByTable(Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "numberOfMessage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 772
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 773
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 783
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 785
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private reverseMapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 817
    :cond_0
    return-object v0

    .line 812
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    invoke-static {p1, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->fromCursor(Landroid/database/Cursor;Lcom/liquable/nemo/message/model/MessageProcessor;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public archiveMessages(Ljava/lang/String;JJJ)J
    .locals 20
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "currentMessageCount"    # J
    .param p4, "targetCount"    # J
    .param p6, "maxExecutionTime"    # J

    .prologue
    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, "insert":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 59
    .local v3, "delete":Landroid/database/sqlite/SQLiteStatement;
    const-wide/16 v12, 0x0

    .local v12, "timeElapsed":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 61
    .local v10, "startTime":J
    :cond_0
    cmp-long v16, p2, p4

    if-lez v16, :cond_7

    .line 62
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 63
    const-wide/16 v16, 0x12c

    sub-long v18, p2, p4

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 64
    .local v8, "size":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "REPLACE INTO ARCHIVED_MESSAGES SELECT * FROM MESSAGES WHERE MSG_CHAT_GROUP_TOPIC = \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\' "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ORDER BY "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "MSG_RECEIVE_TIME"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " LIMIT "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "DELETE FROM MESSAGES WHERE MSG_ID IN (SELECT MSG_ID FROM MESSAGES WHERE MSG_CHAT_GROUP_TOPIC = \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\' "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ORDER BY "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "MSG_RECEIVE_TIME"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " LIMIT "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 93
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 95
    sub-long p2, p2, v8

    .line 96
    sget-object v16, Lcom/liquable/nemo/db/MessageDao;->debugLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "MD.archiveMessages:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " timeElapsed:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "Archive"

    invoke-interface/range {v16 .. v18}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const-wide/16 v16, 0x3e8

    :try_start_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v5

    .line 109
    .local v5, "endTime":J
    sub-long v16, v5, v10

    add-long v12, v12, v16

    .line 110
    move-wide v10, v5

    .line 112
    cmp-long v16, v12, p6

    if-lez v16, :cond_0

    .line 117
    if-eqz v7, :cond_1

    .line 118
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 120
    :cond_1
    if-eqz v3, :cond_2

    .line 121
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    move-wide v14, v12

    .line 127
    .end local v5    # "endTime":J
    .end local v8    # "size":J
    .end local v12    # "timeElapsed":J
    .local v14, "timeElapsed":J
    :goto_1
    return-wide v14

    .line 103
    .end local v14    # "timeElapsed":J
    .restart local v8    # "size":J
    .restart local v12    # "timeElapsed":J
    :catch_0
    move-exception v4

    .line 105
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "size":J
    :catchall_0
    move-exception v16

    if-eqz v7, :cond_4

    .line 118
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 120
    :cond_4
    if-eqz v3, :cond_5

    .line 121
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 123
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    throw v16

    .line 117
    :cond_7
    if-eqz v7, :cond_8

    .line 118
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 120
    :cond_8
    if-eqz v3, :cond_9

    .line 121
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 123
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_a
    move-wide v14, v12

    .line 127
    .end local v12    # "timeElapsed":J
    .restart local v14    # "timeElapsed":J
    goto :goto_1
.end method

.method public cleanOldUnknownMessage()V
    .locals 8

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long v0, v2, v4

    .line 135
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "MESSAGES"

    const-string/jumbo v4, "MSG_CONTENT like \'{\"@type\":\"UnknownMessage\"%\' and MSG_RECEIVE_TIME < ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 135
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public cleanReadAck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "READED_ACK"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 7
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/db/MessageDao;->evictCachedTopicLastMessageById(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "MESSAGES"

    const-string/jumbo v3, "MSG_ID = ? "

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "rowsAffected":I
    if-lez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "ARCHIVED_MESSAGES"

    const-string/jumbo v3, "MSG_ID = ? "

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteAllByChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 7
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/db/MessageDao;->evictCachedTopicLastMessageByTopic(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "MESSAGES"

    const-string/jumbo v2, "MSG_CHAT_GROUP_TOPIC = ? "

    new-array v3, v6, [Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    const-string/jumbo v2, "MSG_CHAT_GROUP_TOPIC = ? "

    new-array v3, v6, [Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public evictCachedTopicLastMessageById(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "topic":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v0    # "topic":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public evictCachedTopicLastMessageByTopic(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public findById(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {p0, v1, p1}, Lcom/liquable/nemo/db/MessageDao;->findByIdByTable(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 185
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v0, :cond_0

    .line 188
    .end local v0    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :goto_0
    return-object v0

    .restart local v0    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_0
    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    invoke-virtual {p0, v1, p1}, Lcom/liquable/nemo/db/MessageDao;->findByIdByTable(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public findByIdByTable(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 192
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 193
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "MSG_ID=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 204
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 205
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    goto :goto_0

    .end local v9    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public findByIdReturnTable(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {p0, v1, p1}, Lcom/liquable/nemo/db/MessageDao;->findByIdByTable(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 216
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    :goto_0
    return-object v1

    .line 219
    :cond_0
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "ARCHIVED_MESSAGES"

    invoke-virtual {p0, v2, p1}, Lcom/liquable/nemo/db/MessageDao;->findByIdByTable(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v2

    const/4 v3, 0x1

    .line 220
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCount(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MSG_CHAT_GROUP_TOPIC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 231
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public getLastMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 3
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 239
    .local v0, "found":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v0, :cond_0

    .line 246
    .end local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :goto_0
    return-object v0

    .line 242
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/MessageDao;->getLastMessageByChatGroup(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    .line 243
    .local v1, "last":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v1, :cond_1

    .line 244
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 246
    goto :goto_0
.end method

.method public getReadedAckCount(Ljava/lang/String;)J
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from READED_ACK where RA_MESSAGE_ID =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 280
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public getRemainUnreadCount(Ljava/lang/String;)J
    .locals 4
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from MESSAGES where MSG_CHAT_GROUP_TOPIC !=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MSG_READED_MARK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 297
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 299
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public getTotalUnreadCount()J
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "select count(*) from MESSAGES where MSG_READED_MARK = 0 "

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 309
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 311
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public getUnreadCount(Ljava/lang/String;)J
    .locals 4
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from MESSAGES where MSG_CHAT_GROUP_TOPIC =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MSG_READED_MARK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 326
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 328
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public initLastMessages()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 333
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 334
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "MSG_CHAT_GROUP_TOPIC"

    const-string/jumbo v6, "MSG_RECEIVE_TIME = MAX(MSG_RECEIVE_TIME)"

    move-object v4, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 345
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/MessageDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    .line 346
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 347
    .local v9, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 355
    .end local v9    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :goto_1
    return-void

    .line 350
    .restart local v9    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->cachedTopicLastMessage:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 353
    .end local v9    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public insert(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 5
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/db/MessageDao;->isExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "MESSAGES"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/db/MessageDao;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    .line 364
    invoke-virtual {p1, v4}, Lcom/liquable/nemo/message/model/DomainMessage;->createContentValues(Lcom/liquable/nemo/message/model/MessageProcessor;)Landroid/content/ContentValues;

    move-result-object v4

    .line 362
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 366
    .local v0, "result":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/db/MessageDao;->evictCachedTopicLastMessageByTopic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "domainMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    const-string/jumbo v0, "MESSAGES"

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/db/MessageDao;->insertAllByTable(Ljava/lang/String;Ljava/util/List;)V

    .line 374
    return-void
.end method

.method public insertAllArchive(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "domainMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    const-string/jumbo v0, "ARCHIVED_MESSAGES"

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/db/MessageDao;->insertAllByTable(Ljava/lang/String;Ljava/util/List;)V

    .line 378
    return-void
.end method

.method public insertReadedAck(Lcom/liquable/nemo/message/model/ReadedAck;)Z
    .locals 4
    .param p1, "readedAck"    # Lcom/liquable/nemo/message/model/ReadedAck;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "READED_ACK"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/ReadedAck;->createContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertReadedAcks(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/ReadedAck;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "readedAcks":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/ReadedAck;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/ReadedAck;

    .line 404
    .local v0, "readedAck":Lcom/liquable/nemo/message/model/ReadedAck;
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "READED_ACK"

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/ReadedAck;->createContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 406
    .end local v0    # "readedAck":Lcom/liquable/nemo/message/model/ReadedAck;
    :cond_0
    return-void
.end method

.method public isExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from MESSAGES where MSG_ID =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 416
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 418
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v1

    .line 416
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public listAllChatgroupMessageCount()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    const-string/jumbo v0, "MESSAGES"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/db/MessageDao;->listAllChatgroupMessageCount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public listAllChatgroupMessageCount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 429
    .local v9, "messageCounts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 430
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 434
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 435
    const-string/jumbo v3, "MSG_TYPE = ? "

    .line 436
    new-array v4, v7, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p2, v4, v6

    .line 439
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "COUNT(*) AS C"

    aput-object v5, v2, v6

    const-string/jumbo v5, "MSG_CHAT_GROUP_TOPIC"

    aput-object v5, v2, v7

    const-string/jumbo v5, "MSG_CHAT_GROUP_TOPIC"

    const/4 v6, 0x0

    const-string/jumbo v7, "C DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 448
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 452
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 455
    return-object v9
.end method

.method public listAllMessageByChatGroupAndType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    const-string/jumbo v1, "MESSAGES"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 472
    .local v7, "resultSize":I
    if-ge v7, p4, :cond_0

    .line 473
    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    const/4 v4, 0x0

    sub-int v5, p4, v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    :cond_0
    return-object v6
.end method

.method public listArchivedByChatGroup(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "numberOfMessage"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    sget-object v3, Lcom/liquable/nemo/db/MessageDao$Order;->DESC:Lcom/liquable/nemo/db/MessageDao$Order;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupByTable(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/db/MessageDao$Order;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listArchivedByChatGroupAsc(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "numberOfMessage"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    sget-object v3, Lcom/liquable/nemo/db/MessageDao$Order;->ASC:Lcom/liquable/nemo/db/MessageDao$Order;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupByTable(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/db/MessageDao$Order;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listByChatGroup(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "numberOfMessage"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    const-string/jumbo v1, "MESSAGES"

    sget-object v3, Lcom/liquable/nemo/db/MessageDao$Order;->DESC:Lcom/liquable/nemo/db/MessageDao$Order;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupByTable(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/db/MessageDao$Order;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listByChatGroupAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    const-string/jumbo v1, "MESSAGES"

    invoke-direct {p0, v1, p1, p2}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 518
    const-string/jumbo v1, "ARCHIVED_MESSAGES"

    invoke-direct {p0, v1, p1, p2}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 521
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 522
    return-object v0
.end method

.method public listByChatGroupAndTypeAndTimeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Ljava/util/List;
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "chatGroupTopic"    # Ljava/lang/String;
    .param p3, "messageType"    # Ljava/lang/String;
    .param p4, "receiveTime"    # J
    .param p6, "direction"    # I
    .param p7, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 532
    .local v1, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 533
    const-string/jumbo v4, "MSG_CHAT_GROUP_TOPIC = ? and MSG_TYPE = ? AND "

    .line 537
    .local v4, "selector":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/liquable/util/DesignContract;->preCondition(Z)V

    .line 538
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_3

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MSG_RECEIVE_TIME > ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    .line 547
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_RECEIVE_TIME"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v8, -0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_4

    const-string/jumbo v8, " DESC "

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 551
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 544
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 553
    .local v10, "c":Landroid/database/Cursor;
    const/4 v2, -0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_5

    .line 554
    :try_start_0
    invoke-direct {p0, v10}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 558
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_3
    return-object v2

    .line 537
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 540
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MSG_RECEIVE_TIME < ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 547
    :cond_4
    const-string/jumbo v8, " ASC "

    goto :goto_2

    .line 556
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    invoke-direct {p0, v10}, Lcom/liquable/nemo/db/MessageDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 558
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public listByChatGroupAndTypeByTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "chatGroupTopic"    # Ljava/lang/String;
    .param p3, "messageType"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 591
    .local v1, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 592
    const-string/jumbo v11, "MSG_CHAT_GROUP_TOPIC = ? and MSG_TYPE = ? "

    .line 596
    .local v11, "selector":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "MSG_CHAT_GROUP_TOPIC = ? and MSG_TYPE = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "MSG_RECEIVE_TIME desc "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, " , "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 605
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v10}, Lcom/liquable/nemo/db/MessageDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 607
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public listByChatGroupAsc(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "numberOfMessage"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    const-string/jumbo v1, "MESSAGES"

    sget-object v3, Lcom/liquable/nemo/db/MessageDao$Order;->ASC:Lcom/liquable/nemo/db/MessageDao$Order;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupByTable(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/db/MessageDao$Order;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listByChatGroupByTable(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/db/MessageDao$Order;II)Ljava/util/List;
    .locals 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "chatGroupTopic"    # Ljava/lang/String;
    .param p3, "order"    # Lcom/liquable/nemo/db/MessageDao$Order;
    .param p4, "numberOfMessage"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/db/MessageDao$Order;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 627
    .local v1, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 628
    const-string/jumbo v11, "MSG_CHAT_GROUP_TOPIC = ?"

    .line 629
    .local v11, "selector":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "MSG_CHAT_GROUP_TOPIC = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_RECEIVE_TIME "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 635
    invoke-virtual/range {p3 .. p3}, Lcom/liquable/nemo/db/MessageDao$Order;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, " , "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 629
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 638
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/liquable/nemo/db/MessageDao$Order;->DESC:Lcom/liquable/nemo/db/MessageDao$Order;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 639
    invoke-direct {p0, v10}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 643
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v2

    .line 641
    :cond_0
    :try_start_1
    invoke-direct {p0, v10}, Lcom/liquable/nemo/db/MessageDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 643
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public listByTypeAndSender(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 11
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 651
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 652
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 653
    const-string/jumbo v10, "MSG_SENDER_UID = ? and MSG_TYPE = ? "

    .line 656
    .local v10, "selector":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "MSG_SENDER_UID = ? and MSG_TYPE = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const-string/jumbo v7, "MSG_RECEIVE_TIME desc "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, p3, -0x1

    mul-int/2addr v8, p4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " , "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 666
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 668
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listMessagesByChatGroup(Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "numberOfMessage"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    const-string/jumbo v4, "MESSAGES"

    invoke-virtual {p0, p1, v4}, Lcom/liquable/nemo/db/MessageDao;->getCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 677
    .local v0, "messageCount":J
    int-to-long v4, p3

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    .line 678
    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 681
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 682
    .local v3, "resultSize":I
    if-ge v3, p2, :cond_1

    .line 683
    sub-int v4, p2, v3

    int-to-long v5, p3

    sub-long/2addr v5, v0

    int-to-long v7, v3

    add-long/2addr v5, v7

    long-to-int v5, v5

    .line 684
    invoke-virtual {p0, p1, v4, v5}, Lcom/liquable/nemo/db/MessageDao;->listArchivedByChatGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 683
    invoke-interface {v2, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 689
    :cond_1
    return-object v2
.end method

.method public listTextMessagesByChatGroupAndKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 694
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 695
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 696
    const-string/jumbo v9, "MSG_CHAT_GROUP_TOPIC = ? and MSG_TYPE = ? and MSG_CONTENT like ? "

    .line 701
    .local v9, "selector":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "MSG_CHAT_GROUP_TOPIC = ? and MSG_TYPE = ? and MSG_CONTENT like ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    const-class v7, Lcom/liquable/nemo/message/model/TextMessage;

    .line 704
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "%"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string/jumbo v7, "MSG_RECEIVE_TIME desc "

    move-object v6, v5

    .line 701
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 709
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listUnreadByChatGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 716
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 717
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "MSG_READED_MARK = 0 and MSG_CHAT_GROUP_TOPIC = ?  "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const-string/jumbo v7, "MSG_RECEIVE_TIME desc "

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 730
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/MessageDao;->reverseMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 732
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public rawList(II)Ljava/util/List;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "numberOfMessage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 762
    const-string/jumbo v0, "MESSAGES"

    invoke-direct {p0, v0, p1, p2}, Lcom/liquable/nemo/db/MessageDao;->rawListByTable(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rawListArchive(II)Ljava/util/List;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "numberOfMessage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    const-string/jumbo v0, "ARCHIVED_MESSAGES"

    invoke-direct {p0, v0, p1, p2}, Lcom/liquable/nemo/db/MessageDao;->rawListByTable(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rawListReadedAcks(II)Ljava/util/List;
    .locals 10
    .param p1, "offset"    # I
    .param p2, "numberOfMessage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/ReadedAck;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 790
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 791
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "READED_ACK"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/message/model/ReadedAck;->PROJECTION:[Ljava/lang/String;

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

    .line 801
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/MessageDao;->mappingRawReadedAcks(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 803
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public updateMessageContent(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 9
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 821
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 822
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "MSG_CONTENT"

    iget-object v3, p0, Lcom/liquable/nemo/db/MessageDao;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/message/model/MessageProcessor;->encode(Lcom/liquable/nemo/message/model/IDomainMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "MESSAGES"

    const-string/jumbo v4, "MSG_ID = ? "

    new-array v5, v8, [Ljava/lang/String;

    .line 826
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 823
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 827
    .local v1, "rowsAffected":I
    if-lez v1, :cond_0

    .line 835
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "ARCHIVED_MESSAGES"

    const-string/jumbo v4, "MSG_ID = ? "

    new-array v5, v8, [Ljava/lang/String;

    .line 834
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 831
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageCreateTime(Lcom/liquable/nemo/message/model/IDomainMessage;)Z
    .locals 8
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 838
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 839
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "MSG_CREATE_TIME"

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 840
    iget-object v3, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "MESSAGES"

    const-string/jumbo v5, "MSG_ID = ? "

    new-array v6, v1, [Ljava/lang/String;

    .line 843
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 840
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public updateMessageReaded(Ljava/lang/String;)V
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 847
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 849
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "MSG_READED_MARK"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 850
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "MESSAGES"

    const-string/jumbo v3, "MSG_ID =? "

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method public updateMessageReadedCount(Ljava/lang/String;J)V
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 858
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 859
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "MSG_READ_COUNT"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 860
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "MESSAGES"

    const-string/jumbo v3, "MSG_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 864
    return-void
.end method

.method public updateMessageReceiveTime(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 8
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 867
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 868
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "MSG_RECEIVE_TIME"

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 869
    iget-object v3, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "MESSAGES"

    const-string/jumbo v5, "MSG_ID = ? "

    new-array v6, v1, [Ljava/lang/String;

    .line 872
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 869
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public updateMessageSend(Ljava/lang/String;)V
    .locals 7
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 876
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 878
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "MSG_SEND_STATE"

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    iget v2, v2, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "MESSAGES"

    const-string/jumbo v3, "MSG_ID =? and MSG_SEND_STATE != ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    iget v6, v6, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->value:I

    .line 881
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 879
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 883
    return-void
.end method

.method public updateMessageSendFailed(Ljava/lang/String;)V
    .locals 7
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 886
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 887
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "MSG_SEND_STATE"

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->FAILED:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    iget v2, v2, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "MESSAGES"

    const-string/jumbo v3, "MSG_ID = ? and  MSG_SEND_STATE = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    iget v6, v6, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->value:I

    .line 890
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 888
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 891
    return-void
.end method

.method public updateMessageSystemAcked(Ljava/lang/String;)V
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 894
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 895
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "MSG_SEND_STATE"

    sget-object v2, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    iget v2, v2, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    iget-object v1, p0, Lcom/liquable/nemo/db/MessageDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "MESSAGES"

    const-string/jumbo v3, "MSG_ID =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 900
    return-void
.end method
