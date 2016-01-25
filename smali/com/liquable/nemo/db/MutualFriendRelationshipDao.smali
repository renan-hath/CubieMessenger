.class public Lcom/liquable/nemo/db/MutualFriendRelationshipDao;
.super Ljava/lang/Object;
.source "MutualFriendRelationshipDao.java"


# instance fields
.field private final cachedMutualFriendIds:Ljava/util/Map;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->cachedMutualFriendIds:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
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
            "Lcom/liquable/nemo/friend/model/MutualFriendRelationship;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :cond_0
    return-object v0

    .line 113
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/MutualFriendRelationship;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "MUTUAL_FRIEND_RELATIONSHIP"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->cachedMutualFriendIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    return-void
.end method

.method public deleteAllByRecommendFriendId(Ljava/lang/String;)V
    .locals 5
    .param p1, "recommendFriendId"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "MUTUAL_FRIEND_RELATIONSHIP"

    const-string/jumbo v2, "MFR_RECOMMEND_FRIEND_ID = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->evictCachedMutualFriendIds(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public evictCachedMutualFriendIds(Ljava/lang/String;)V
    .locals 1
    .param p1, "recommendId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->cachedMutualFriendIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/MutualFriendRelationship;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "mutualFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/MutualFriendRelationship;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    .local v0, "affectFriendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;

    .line 47
    .local v2, "mutualFriend":Lcom/liquable/nemo/friend/model/MutualFriendRelationship;
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->createContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 48
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "MUTUAL_FRIEND_RELATIONSHIP"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 49
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->getMutualFriendId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v2    # "mutualFriend":Lcom/liquable/nemo/friend/model/MutualFriendRelationship;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->evictCachedMutualFriendIds(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public listMutualFriendIdsByRecommendFriendId(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "recommendFriendId"    # Ljava/lang/String;
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
    const/4 v5, 0x0

    .line 58
    iget-object v1, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->cachedMutualFriendIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 59
    .local v10, "found":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_0

    .line 60
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    :goto_0
    return-object v11

    .line 63
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 64
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "MUTUAL_FRIEND_RELATIONSHIP"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v12, "MFR_RECOMMEND_FRIEND_ID = ? "

    .line 66
    .local v12, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "MFR_RECOMMEND_FRIEND_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 75
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 79
    :cond_1
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v11, "mutualFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string/jumbo v1, "MFR_MUTUAL_FRIEND_ID"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 86
    .end local v11    # "mutualFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 83
    .restart local v11    # "mutualFriendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->cachedMutualFriendIds:Ljava/util/Map;

    invoke-interface {v1, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
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
            "Lcom/liquable/nemo/friend/model/MutualFriendRelationship;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 91
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 92
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "MUTUAL_FRIEND_RELATIONSHIP"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->PROJECTION:[Ljava/lang/String;

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

    .line 102
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 104
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method
