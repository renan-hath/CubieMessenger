.class public Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;
.super Ljava/lang/Object;
.source "ExistingSystemNoticeDao.java"


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    return-void
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    iget-object v0, p0, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "EXISTING_SYSTEM_NOTICE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public insert(Lcom/liquable/nemo/notice/ExistingSystemNotice;)Z
    .locals 5
    .param p1, "notice"    # Lcom/liquable/nemo/notice/ExistingSystemNotice;

    .prologue
    .line 21
    iget-object v1, p0, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "EXISTING_SYSTEM_NOTICE"

    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/ExistingSystemNotice;->createContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 25
    .local v0, "result":Z
    :goto_0
    return v0

    .line 21
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertAll(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/ExistingSystemNotice;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/ExistingSystemNotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/ExistingSystemNotice;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "newSystemNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/ExistingSystemNotice;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/notice/ExistingSystemNotice;

    .line 31
    .local v2, "notice":Lcom/liquable/nemo/notice/ExistingSystemNotice;
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;->insert(Lcom/liquable/nemo/notice/ExistingSystemNotice;)Z

    move-result v0

    .line 32
    .local v0, "isInserted":Z
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    .end local v0    # "isInserted":Z
    .end local v2    # "notice":Lcom/liquable/nemo/notice/ExistingSystemNotice;
    :cond_1
    return-object v1
.end method
