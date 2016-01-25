.class public Lcom/liquable/nemo/notice/NoticeDao;
.super Ljava/lang/Object;
.source "NoticeDao.java"


# instance fields
.field private final noticeMapper:Lcom/liquable/nemo/notice/NoticeMapper;

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/notice/NoticeMapper;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "noticeMapper"    # Lcom/liquable/nemo/notice/NoticeMapper;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    iput-object p2, p0, Lcom/liquable/nemo/notice/NoticeDao;->noticeMapper:Lcom/liquable/nemo/notice/NoticeMapper;

    .line 22
    return-void
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
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0

    .line 147
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->noticeMapper:Lcom/liquable/nemo/notice/NoticeMapper;

    invoke-static {p1, v1}, Lcom/liquable/nemo/notice/BaseNotice;->fromCursor(Landroid/database/Cursor;Lcom/liquable/nemo/notice/NoticeMapper;)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public deleteById(J)V
    .locals 6
    .param p1, "id"    # J

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "NOTICE"

    const-string/jumbo v2, "NTC_ID = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public findById(J)Lcom/liquable/nemo/notice/BaseNotice;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 35
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 36
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/notice/BaseNotice;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "NTC_ID=?"

    new-array v4, v10, [Ljava/lang/String;

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    .line 38
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 47
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/notice/NoticeDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 48
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, v10, :cond_0

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 51
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/notice/BaseNotice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    goto :goto_0

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getLastNoticeId()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 59
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/notice/BaseNotice;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "NTC_ID desc "

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/notice/NoticeDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 70
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-wide/16 v1, -0x1

    .line 75
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-wide v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/notice/BaseNotice;

    invoke-virtual {v1}, Lcom/liquable/nemo/notice/BaseNotice;->getId()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 75
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getTotalNewCount(J)J
    .locals 4
    .param p1, "lastReadNoticeId"    # J

    .prologue
    .line 80
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from NOTICE where NTC_ID > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 87
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public insert(Lcom/liquable/nemo/notice/BaseNotice;)Z
    .locals 5
    .param p1, "notice"    # Lcom/liquable/nemo/notice/BaseNotice;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "NOTICE"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/notice/NoticeDao;->noticeMapper:Lcom/liquable/nemo/notice/NoticeMapper;

    .line 96
    invoke-virtual {p1, v4}, Lcom/liquable/nemo/notice/BaseNotice;->createContentValues(Lcom/liquable/nemo/notice/NoticeMapper;)Landroid/content/ContentValues;

    move-result-object v4

    .line 94
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 98
    .local v0, "result":Z
    :goto_0
    return v0

    .line 94
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "notices":Ljava/util/List;, "Ljava/util/List<+Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/BaseNotice;

    .line 103
    .local v0, "notice":Lcom/liquable/nemo/notice/BaseNotice;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/notice/NoticeDao;->insert(Lcom/liquable/nemo/notice/BaseNotice;)Z

    goto :goto_0

    .line 105
    .end local v0    # "notice":Lcom/liquable/nemo/notice/BaseNotice;
    :cond_0
    return-void
.end method

.method public listAll(II)Ljava/util/List;
    .locals 10
    .param p1, "numberOfMessage"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 109
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/notice/BaseNotice;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "NTC_ID desc "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 119
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/notice/NoticeDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 121
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listNoticesByType(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 126
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 127
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/notice/BaseNotice;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "NTC_TYPE = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const-string/jumbo v7, "NTC_ID desc "

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 136
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/notice/NoticeDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 138
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public update(Lcom/liquable/nemo/notice/BaseNotice;)V
    .locals 8
    .param p1, "baseNotice"    # Lcom/liquable/nemo/notice/BaseNotice;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->noticeMapper:Lcom/liquable/nemo/notice/NoticeMapper;

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/notice/BaseNotice;->createContentValues(Lcom/liquable/nemo/notice/NoticeMapper;)Landroid/content/ContentValues;

    move-result-object v0

    .line 157
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "NOTICE"

    const-string/jumbo v3, "NTC_ID =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/BaseNotice;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 157
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public updateAllNoticesRead()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "NTC_READ"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "NOTICE"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    return-void
.end method
