.class public Lcom/liquable/nemo/db/LikedForumItemDao;
.super Ljava/lang/Object;
.source "LikedForumItemDao.java"


# static fields
.field public static final COLUMN_NAME_ITEM_ID:Ljava/lang/String; = "LFI_ITEM_ID"

.field private static PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "LIKED_FORUM_ITEM"


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LFI_ITEM_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/db/LikedForumItemDao;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/db/LikedForumItemDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS LIKED_FORUM_ITEM ( LFI_ITEM_ID TEXT PRIMARY KEY); "

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "LFI_ITEM_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/liquable/nemo/db/LikedForumItemDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "LIKED_FORUM_ITEM"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 33
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/db/LikedForumItemDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "LIKED_FORUM_ITEM"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .locals 11
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 41
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 42
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "LIKED_FORUM_ITEM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/liquable/nemo/db/LikedForumItemDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/LikedForumItemDao;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "LFI_ITEM_ID= ? "

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 53
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v9

    .line 55
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v1

    :cond_0
    move v1, v10

    .line 53
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method
