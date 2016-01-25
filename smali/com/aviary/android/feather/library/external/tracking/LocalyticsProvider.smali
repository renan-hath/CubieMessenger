.class final Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
.super Ljava/lang/Object;
.source "LocalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;,
        Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final sCountProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLocalyticsProviderIntrinsicLock:[Ljava/lang/Object;

.field private static final sLocalyticsProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final sValidTables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sLocalyticsProviderMap:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sLocalyticsProviderIntrinsicLock:[Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->getCountProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sCountProjectionMap:Ljava/util/Map;

    .line 85
    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->getValidTables()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sValidTables:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$DatabaseHelper;

    const-string/jumbo v1, "com.localytics.android.%s.sqlite"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 159
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 7
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_2

    .line 478
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    :cond_1
    return v2

    .line 467
    :cond_2
    aget-object v0, v4, v3

    .line 469
    .local v0, "child":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->deleteDirectory(Ljava/io/File;)Z

    move-result v1

    .line 470
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static deleteOldFiles(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 454
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "localytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->deleteDirectory(Ljava/io/File;)Z

    .line 455
    return-void
.end method

.method private static getCountProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_count"

    const-string/jumbo v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.test.RenamingDelegatingContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-object v0

    .line 128
    :cond_0
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sLocalyticsProviderIntrinsicLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sLocalyticsProviderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .line 132
    .local v0, "provider":Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    .end local v0    # "provider":Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    .restart local v0    # "provider":Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sLocalyticsProviderMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 128
    .end local v0    # "provider":Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getValidTables()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v0, "tables":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "api_keys"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    const-string/jumbo v1, "attributes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    const-string/jumbo v1, "event_history"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    const-string/jumbo v1, "sessions"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    const-string/jumbo v1, "upload_blobs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    const-string/jumbo v1, "upload_blob_events"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 309
    if-nez p2, :cond_0

    .line 311
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, "count":I
    :goto_0
    return v0

    .line 315
    .end local v0    # "count":I
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 199
    .local v0, "result":J
    return-wide v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 231
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 232
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 234
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "_count"

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->sCountProjectionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 246
    .local v8, "result":Landroid/database/Cursor;
    return-object v8
.end method

.method public runBatchTransaction(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 352
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 353
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 359
    return-void

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 358
    throw v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
