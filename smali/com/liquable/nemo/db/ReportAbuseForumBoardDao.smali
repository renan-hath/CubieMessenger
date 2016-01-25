.class public Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;
.super Ljava/lang/Object;
.source "ReportAbuseForumBoardDao.java"


# static fields
.field public static final COLUMN_NAME_FORUM_BOARD_ID:Ljava/lang/String; = "RAFB_FORUM_BOARD_ID"

.field public static final COLUMN_NAME_REPORT_TIME:Ljava/lang/String; = "RAFB_REPORT_TIME"

.field private static PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "REPORT_ABUSE_FORUM_BOARD"

.field public static final _ID:Ljava/lang/String; = "ID"


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "RAFB_FORUM_BOARD_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "RAFB_REPORT_TIME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, " CREATE TABLE IF NOT EXISTS REPORT_ABUSE_FORUM_BOARD ( ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, RAFB_FORUM_BOARD_ID TEXT, RAFB_REPORT_TIME INTEGER ); "

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;J)V
    .locals 5
    .param p1, "forumBoardId"    # Ljava/lang/String;
    .param p2, "reportTime"    # J

    .prologue
    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "RAFB_FORUM_BOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v1, "RAFB_REPORT_TIME"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    iget-object v1, p0, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "REPORT_ABUSE_FORUM_BOARD"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 48
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "REPORT_ABUSE_FORUM_BOARD"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public listAll()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v9, "reportAbuseBoardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 57
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "REPORT_ABUSE_FORUM_BOARD"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "RAFB_FORUM_BOARD_ID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v9
.end method
