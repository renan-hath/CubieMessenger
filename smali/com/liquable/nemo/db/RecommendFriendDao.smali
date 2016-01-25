.class public Lcom/liquable/nemo/db/RecommendFriendDao;
.super Ljava/lang/Object;
.source "RecommendFriendDao.java"


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    return-void
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
            "Lcom/liquable/nemo/friend/model/RecommendFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :cond_0
    return-object v1

    .line 109
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/RecommendFriend;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/RecommendFriend;

    move-result-object v0

    .line 112
    .local v0, "recommend":Lcom/liquable/nemo/friend/model/RecommendFriend;
    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "RECOMMEND_FRIEND"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public deleteById(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "RECOMMEND_FRIEND"

    const-string/jumbo v2, "RF_UID = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/RecommendFriend;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 32
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 33
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "RECOMMEND_FRIEND"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/RecommendFriend;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "RF_UID=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 44
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/RecommendFriendDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 45
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, v10, :cond_0

    .line 50
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 48
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/RecommendFriend;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    goto :goto_0

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public insert(Lcom/liquable/nemo/friend/model/RecommendFriend;)Z
    .locals 8
    .param p1, "recommend"    # Lcom/liquable/nemo/friend/model/RecommendFriend;

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/RecommendFriend;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/db/RecommendFriendDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/RecommendFriend;

    move-result-object v1

    .line 56
    .local v1, "found":Lcom/liquable/nemo/friend/model/RecommendFriend;
    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v4

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/RecommendFriend;->createContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 61
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "RECOMMEND_FRIEND"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 62
    .local v2, "row":J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 65
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public listAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/RecommendFriend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 70
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "RECOMMEND_FRIEND"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/RecommendFriend;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 81
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/RecommendFriendDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 83
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listRecommendFriends()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/RecommendFriend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 89
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "RECOMMEND_FRIEND"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/RecommendFriend;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "RF_NAME asc "

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 98
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/RecommendFriendDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 100
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public rawList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/RecommendFriend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 121
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "RECOMMEND_FRIEND"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/RecommendFriend;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 130
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/RecommendFriendDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public save(Lcom/liquable/nemo/friend/model/RecommendFriend;)V
    .locals 2
    .param p1, "recommend"    # Lcom/liquable/nemo/friend/model/RecommendFriend;

    .prologue
    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/friend/model/RecommendFriend;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/db/RecommendFriendDao;->saveAll(Ljava/util/List;)V

    .line 143
    return-void
.end method

.method public saveAll(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/RecommendFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "recommends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/RecommendFriend;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/RecommendFriend;

    .line 152
    .local v1, "recommend":Lcom/liquable/nemo/friend/model/RecommendFriend;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/db/RecommendFriendDao;->insert(Lcom/liquable/nemo/friend/model/RecommendFriend;)Z

    move-result v0

    .line 153
    .local v0, "inserted":Z
    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/db/RecommendFriendDao;->update(Lcom/liquable/nemo/friend/model/RecommendFriend;)V

    goto :goto_0

    .line 158
    .end local v0    # "inserted":Z
    .end local v1    # "recommend":Lcom/liquable/nemo/friend/model/RecommendFriend;
    :cond_1
    return-void
.end method

.method public update(Lcom/liquable/nemo/friend/model/RecommendFriend;)V
    .locals 7
    .param p1, "recommend"    # Lcom/liquable/nemo/friend/model/RecommendFriend;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/RecommendFriend;->createContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 163
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/liquable/nemo/db/RecommendFriendDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "RECOMMEND_FRIEND"

    const-string/jumbo v3, "RF_UID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 166
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/RecommendFriend;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 163
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    return-void
.end method
