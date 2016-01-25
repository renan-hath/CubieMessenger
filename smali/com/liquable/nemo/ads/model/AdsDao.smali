.class public Lcom/liquable/nemo/ads/model/AdsDao;
.super Ljava/lang/Object;
.source "AdsDao.java"


# static fields
.field private static final COLUMN_NAME_AD_ID:Ljava/lang/String; = "AI_AD_ID"

.field private static final COLUMN_NAME_AD_ITEM:Ljava/lang/String; = "AI_AD_ITEM"

.field private static final COLUMN_NAME_CONSUMED:Ljava/lang/String; = "AI_CONSUMED"

.field private static final COLUMN_NAME_DISPLAY_COUNT:Ljava/lang/String; = "AI_DISPLAY_COUNT"

.field private static final COLUMN_NAME_TYPE:Ljava/lang/String; = "AI_TYPE"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String; = "AdItem"

.field private static final _ID:Ljava/lang/String; = "AI_ID"

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "AI_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "AI_AD_ITEM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "AI_CONSUMED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "AI_DISPLAY_COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "AI_TYPE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/ads/model/AdsDao;->PROJECTION:[Ljava/lang/String;

    .line 79
    const-class v0, Lcom/liquable/nemo/ads/model/AdsDao;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/ads/model/AdsDao;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    return-void
.end method

.method private static createContentValues(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "consumableAdItem"    # Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getAdItemDto()Lcom/liquable/nemo/model/ads/IAdItemDto;

    move-result-object v0

    .line 25
    .local v0, "adItemDto":Lcom/liquable/nemo/model/ads/IAdItemDto;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "AI_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    const-string/jumbo v2, "AI_AD_ID"

    invoke-interface {v0}, Lcom/liquable/nemo/model/ads/IAdItemDto;->getAdId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    const-string/jumbo v2, "AI_AD_ITEM"

    sget-object v3, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->INSTANCE:Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->encode(Lcom/liquable/nemo/model/ads/IAdItemDto;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v3, "AI_CONSUMED"

    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    const-string/jumbo v2, "AI_DISPLAY_COUNT"

    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getDisplayCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const-string/jumbo v2, "AI_TYPE"

    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v1

    .line 29
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private delete(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V
    .locals 6
    .param p1, "exist"    # Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "AdItem"

    const-string/jumbo v2, "AI_ID = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v5, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->INSTANCE:Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    const-string/jumbo v6, "AI_AD_ITEM"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/model/ads/IAdItemDto;

    move-result-object v0

    .line 37
    .local v0, "adItemDto":Lcom/liquable/nemo/model/ads/IAdItemDto;
    const-string/jumbo v5, "AI_ID"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 38
    .local v3, "id":J
    const-string/jumbo v5, "AI_DISPLAY_COUNT"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 39
    .local v2, "diaplayCount":I
    const-string/jumbo v5, "AI_CONSUMED"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v1, 0x1

    .line 41
    .local v1, "clicked":Z
    :goto_0
    new-instance v5, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6, v0, v1, v2}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;-><init>(Ljava/lang/Long;Lcom/liquable/nemo/model/ads/IAdItemDto;ZI)V

    return-object v5

    .line 39
    .end local v1    # "clicked":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS AdItem ( AI_ID INTEGER PRIMARY KEY, AI_AD_ID NUMERIC, AI_AD_ITEM TEXT, AI_CONSUMED NUMERIC, AI_DISPLAY_COUNT NUMERIC, AI_TYPE TEXT ); "

    return-object v0
.end method

.method private rowMapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/ads/model/ConsumableAdItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 149
    :cond_0
    return-object v1

    .line 141
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    :try_start_0
    invoke-static {p1}, Lcom/liquable/nemo/ads/model/AdsDao;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/liquable/nemo/ads/model/AdsDao;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "could not load adItem, skip"

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteAll()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "AdItem"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public listAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/ads/model/ConsumableAdItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 104
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "AdItem"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/ads/model/AdsDao;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/liquable/nemo/ads/model/AdsDao;->rowMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listByAdId(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/ads/model/ConsumableAdItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "adIds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 114
    const-string/jumbo v1, ","

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "adIdString":Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 117
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "AdItem"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/ads/model/AdsDao;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AI_AD_ID in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 122
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/ads/model/AdsDao;->rowMapping(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 124
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public replace(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V
    .locals 5
    .param p1, "newItem"    # Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "AdItem"

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/liquable/nemo/ads/model/AdsDao;->createContentValues(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/liquable/nemo/ads/model/AdsDao;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "could not save adItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", skip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sync(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/IAdItemDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    iget-object v6, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/AdsDao;->listAll()Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "exists":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v4, "toRemoves":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .line 162
    .local v1, "exist":Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    new-instance v7, Lcom/liquable/nemo/ads/model/AdsDao$1;

    invoke-direct {v7, p0, v1}, Lcom/liquable/nemo/ads/model/AdsDao$1;-><init>(Lcom/liquable/nemo/ads/model/AdsDao;Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    invoke-static {p1, v7}, Lcom/liquable/util/CollectionsLean;->findFirst(Ljava/lang/Iterable;Lcom/liquable/util/Predicate;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/ads/IAdItemDto;

    .line 169
    .local v3, "found":Lcom/liquable/nemo/model/ads/IAdItemDto;
    if-nez v3, :cond_0

    .line 170
    invoke-direct {p0, v1}, Lcom/liquable/nemo/ads/model/AdsDao;->delete(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    .line 171
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    .end local v1    # "exist":Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .end local v2    # "exists":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    .end local v3    # "found":Lcom/liquable/nemo/model/ads/IAdItemDto;
    .end local v4    # "toRemoves":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 175
    .restart local v2    # "exists":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    .restart local v4    # "toRemoves":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/ads/model/ConsumableAdItem;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/ads/IAdItemDto;

    .line 178
    .local v0, "dto":Lcom/liquable/nemo/model/ads/IAdItemDto;
    new-instance v7, Lcom/liquable/nemo/ads/model/AdsDao$2;

    invoke-direct {v7, p0, v0}, Lcom/liquable/nemo/ads/model/AdsDao$2;-><init>(Lcom/liquable/nemo/ads/model/AdsDao;Lcom/liquable/nemo/model/ads/IAdItemDto;)V

    invoke-static {v2, v7}, Lcom/liquable/util/CollectionsLean;->findFirst(Ljava/lang/Iterable;Lcom/liquable/util/Predicate;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .line 186
    .local v5, "toUpdate":Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    if-eqz v5, :cond_2

    .line 187
    invoke-virtual {v5, v0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->withNewAdItem(Lcom/liquable/nemo/model/ads/IAdItemDto;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/ads/model/AdsDao;->replace(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    goto :goto_1

    .line 189
    :cond_2
    new-instance v7, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v0, v9, v10}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;-><init>(Ljava/lang/Long;Lcom/liquable/nemo/model/ads/IAdItemDto;ZI)V

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/ads/model/AdsDao;->replace(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    goto :goto_1

    .line 193
    .end local v0    # "dto":Lcom/liquable/nemo/model/ads/IAdItemDto;
    .end local v5    # "toUpdate":Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    :cond_3
    iget-object v6, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    iget-object v6, p0, Lcom/liquable/nemo/ads/model/AdsDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 197
    return-void
.end method
