.class public Lcom/liquable/nemo/db/ContactInfoDao;
.super Ljava/lang/Object;
.source "ContactInfoDao.java"


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
    iput-object p1, p0, Lcom/liquable/nemo/db/ContactInfoDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

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
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :cond_0
    return-object v1

    .line 58
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/ContactInfo;

    move-result-object v0

    .line 61
    .local v0, "contact":Lcom/liquable/nemo/friend/model/ContactInfo;
    if-eqz v0, :cond_2

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteAll()V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/db/ContactInfoDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CONTACT_INFOS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public deleteAndSaveAll(Ljava/util/Collection;)V
    .locals 0
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
    .line 26
    .local p1, "contactInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/db/ContactInfoDao;->deleteAll()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/db/ContactInfoDao;->saveAll(Ljava/util/Collection;)V

    .line 28
    return-void
.end method

.method public findByPhoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/ContactInfo;
    .locals 11
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 31
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 32
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "CONTACT_INFOS"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/liquable/nemo/db/ContactInfoDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/ContactInfo;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "CI_PHONE_NUMBER=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 43
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/ContactInfoDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 44
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, v10, :cond_0

    .line 49
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 47
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    goto :goto_0

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
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
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
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
    const-string/jumbo v1, "CONTACT_INFOS"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/db/ContactInfoDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/friend/model/ContactInfo;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 79
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/db/ContactInfoDao;->mapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 81
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public saveAll(Ljava/util/Collection;)V
    .locals 6
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
    .line 86
    .local p1, "contactInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/ContactInfo;

    .line 87
    .local v0, "contactInfo":Lcom/liquable/nemo/friend/model/ContactInfo;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/ContactInfo;->createContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 88
    .local v1, "contentValues":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/liquable/nemo/db/ContactInfoDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "CONTACT_INFOS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 90
    .end local v0    # "contactInfo":Lcom/liquable/nemo/friend/model/ContactInfo;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
