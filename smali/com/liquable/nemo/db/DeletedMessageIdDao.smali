.class public Lcom/liquable/nemo/db/DeletedMessageIdDao;
.super Ljava/lang/Object;
.source "DeletedMessageIdDao.java"


# static fields
.field private static final CACHE_LIMIT:I = 0x64

.field private static final CHECK_CACHE_LIMIT:I = 0x1f4

.field private static final COLUMN_NAME_DELETE_TIME:Ljava/lang/String; = "DM_DELETE_TIME"

.field private static final COLUMN_NAME_MESSAGE_ID:Ljava/lang/String; = "DM_ID"

.field private static final EXPIRE_DURATION:I = 0x1b7740

.field public static final TABLE_NAME:Ljava/lang/String; = "DELETED_MESSAGE_ID"


# instance fields
.field private final cacheMessageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->cacheMessageIds:Ljava/util/Set;

    .line 51
    return-void
.end method

.method private createContentValues(Lcom/liquable/nemo/message/model/IDomainMessage;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "DM_ID"

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "DM_DELETE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    return-object v0
.end method

.method private fromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "DM_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DM_DELETE_TIME"

    .line 67
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS DELETED_MESSAGE_ID ( DM_ID TEXT PRIMARY KEY, DM_DELETE_TIME NUMERIC ); "

    return-object v0
.end method

.method private mapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :cond_0
    return-object v1

    .line 95
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "deletedMessageIds":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->fromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object v0

    .line 98
    .local v0, "deletedMessageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v0, :cond_2

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized reloadCache()V
    .locals 5

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->cacheMessageIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 107
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->list(I)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "deletePairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 109
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->cacheMessageIds:Ljava/util/Set;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "deletePairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 111
    .restart local v0    # "deletePairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized setupIfRequired()V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->reloadCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized exist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->setupIfRequired()V

    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->cacheMessageIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method list(I)Ljava/util/List;
    .locals 11
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 72
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "DELETED_MESSAGE_ID"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "DM_DELETE_TIME desc "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 82
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    .line 83
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v10

    .end local v10    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public declared-synchronized save(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->setupIfRequired()V

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DELETED_MESSAGE_ID"

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->createContentValues(Lcom/liquable/nemo/message/model/IDomainMessage;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x4

    .line 116
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->cacheMessageIds:Ljava/util/Set;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->cacheMessageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->reloadCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveAll(Ljava/util/List;)V
    .locals 7
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
    .line 127
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    sub-long v1, v3, v5

    .line 129
    .local v1, "timeSinceNow":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 130
    .local v0, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->save(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0

    .line 135
    .end local v0    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_1
    return-void
.end method

.method public truncateExpired()V
    .locals 14

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    .line 145
    iget-object v7, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "DELETED_MESSAGE_ID"

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 146
    .local v0, "count":J
    const-wide/16 v7, 0x1f4

    cmp-long v7, v0, v7

    if-gez v7, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-wide/16 v7, 0x64

    sub-long v7, v0, v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 151
    .local v2, "deleteCount":J
    cmp-long v7, v2, v11

    if-eqz v7, :cond_0

    .line 155
    iget-object v7, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, " SELECT DM_DELETE_TIME FROM DELETED_MESSAGE_ID ORDER BY DM_DELETE_TIME ASC LIMIT 1 OFFSET ? "

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 161
    .local v6, "sqLiteStatement":Landroid/database/sqlite/SQLiteStatement;
    const-wide/16 v7, 0x1

    sub-long v7, v2, v7

    invoke-virtual {v6, v10, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 163
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    .line 165
    .local v4, "expiredTime":J
    iget-object v7, p0, Lcom/liquable/nemo/db/DeletedMessageIdDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "DELETED_MESSAGE_ID"

    const-string/jumbo v9, "DM_DELETE_TIME <= ? "

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/liquable/nemo/db/DeletedMessageIdDao;->reloadCache()V

    goto :goto_0
.end method
