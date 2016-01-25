.class public Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CDSDatabaseHelper.java"


# static fields
.field static volatile instance:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

.field static logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field static mContext:Landroid/content/Context;


# instance fields
.field private final mLock1:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "database"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string/jumbo v0, "aviary-cds.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mLock1:Ljava/lang/Object;

    .line 47
    sput-object p1, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private defaultInstalled(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 551
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 552
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 553
    .local v0, "info":Landroid/content/pm/PackageInfo;
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "packIdentifier":Ljava/lang/String;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 555
    .local v2, "packVersionCode":I
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    move-result v3

    .line 557
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "packIdentifier":Ljava/lang/String;
    .end local v2    # "packVersionCode":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->instance:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->instance:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->instance:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->instance:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initializeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    .line 522
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "fillDatabaseDefaults"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 524
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mLock1:Ljava/lang/Object;

    monitor-enter v4

    .line 525
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 526
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 527
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "aviary_default_effects"

    const-string/jumbo v5, "raw"

    sget-object v6, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 528
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 530
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->installFromRes(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;IZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resId":I
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 537
    return-void

    .line 531
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "resId":I
    :catch_0
    move-exception v2

    .line 532
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 524
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resId":I
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private installFromRes(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;IZ)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resId"    # I
    .param p4, "defaultPack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 540
    sget-object v2, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "installFromRes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 543
    .local v1, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 545
    .local v0, "buffer":Ljava/io/InputStream;
    invoke-direct {p0, p1, v0, p4}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->installFromStream(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;Z)V

    .line 546
    invoke-static {v1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 547
    return-void
.end method

.method private installFromStream(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;Z)V
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "buffer"    # Ljava/io/InputStream;
    .param p3, "defaultPack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 569
    sget-object v22, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "installFromStream"

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 571
    invoke-static/range {p2 .. p2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    .line 573
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory;->create()Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;

    move-result-object v19

    .line 575
    .local v19, "parser":Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->available()I

    move-result v11

    .line 576
    .local v11, "limit":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->mark(I)V

    .line 578
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;->parseZip(Ljava/io/InputStream;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    move-result-object v13

    .line 579
    .local v13, "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V

    .line 581
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getCount()I

    move-result v22

    if-lez v22, :cond_0

    .line 585
    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackTypeInt()I

    move-result v17

    .line 587
    .local v17, "packType":I
    if-eqz p3, :cond_1

    .line 588
    sget-object v22, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static/range {v22 .. v22}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 589
    .local v7, "info":Landroid/content/pm/PackageInfo;
    sget-object v22, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 590
    .local v16, "packIdentifier":Ljava/lang/String;
    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    .line 596
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .local v18, "packVersionCode":I
    :goto_0
    sget-object v22, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "packageVersion: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 648
    .end local v16    # "packIdentifier":Ljava/lang/String;
    .end local v17    # "packType":I
    .end local v18    # "packVersionCode":I
    :cond_0
    :goto_1
    return-void

    .line 592
    .restart local v17    # "packType":I
    :cond_1
    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackVersionCode()I

    move-result v18

    .line 593
    .restart local v18    # "packVersionCode":I
    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getIdentifier()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "packIdentifier":Ljava/lang/String;
    goto :goto_0

    .line 603
    :cond_2
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 604
    .local v21, "values":Landroid/content/ContentValues;
    const-string/jumbo v22, "active"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string/jumbo v22, "codename"

    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getCodename()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string/jumbo v22, "displayName"

    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v22, "minVersion"

    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getMinVersion()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string/jumbo v22, "identifier"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string/jumbo v22, "packVersionCode"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string/jumbo v22, "packType"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 615
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->deletePack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v5

    .line 616
    .local v5, "deleted":I
    sget-object v22, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "deleted old versions of this pack: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 618
    const-string/jumbo v22, "packages"

    const/16 v23, 0x0

    const/16 v24, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v14

    .line 619
    .local v14, "packId":J
    sget-object v22, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "created package with id: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 621
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-lez v22, :cond_3

    .line 623
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v13}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_4

    .line 642
    .end local v6    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 645
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    .line 624
    .restart local v6    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {v13, v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getItemAt(I)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;

    move-result-object v8

    .line 625
    .local v8, "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->mark(I)V

    .line 626
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 627
    .local v12, "outputContent":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->loadContentFromZip(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v20

    .line 628
    .local v20, "success":Z
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V

    .line 630
    if-eqz v20, :cond_5

    .line 631
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 632
    const-string/jumbo v22, "packId"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 633
    const-string/jumbo v22, "identifier"

    invoke-virtual {v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string/jumbo v22, "displayName"

    invoke-virtual {v8}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v22, "content"

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 637
    const-string/jumbo v22, "entries"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 638
    .local v9, "itemId":J
    sget-object v22, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "created item with id: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-interface/range {v22 .. v23}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    .end local v9    # "itemId":J
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 643
    .end local v5    # "deleted":I
    .end local v6    # "i":I
    .end local v8    # "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    .end local v12    # "outputContent":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "packId":J
    .end local v20    # "success":Z
    :catchall_0
    move-exception v22

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 645
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 646
    throw v22
.end method


# virtual methods
.method deletePack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 362
    sget-object v1, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deletePack: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 363
    const-string/jumbo v1, "packages"

    const-string/jumbo v2, "identifier = ?"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    return v0
.end method

.method deletePack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 345
    sget-object v1, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deletePack: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v1, "packages"

    const-string/jumbo v2, "identifier = ? AND packType = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    return v0
.end method

.method deletePack(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->deletePack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method deletePack(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->deletePack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packVersionCode"    # I
    .param p4, "type"    # I

    .prologue
    .line 286
    sget-object v1, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "exists: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "), type: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 288
    const/4 v9, 0x0

    .line 290
    .local v9, "result":Z
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 292
    .local v0, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "entries_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 294
    const/4 v3, 0x0

    .line 296
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v1

    .line 298
    .local v2, "projectionArgs":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "identifier = ? AND packType "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-le p4, v1, :cond_1

    const-string/jumbo v1, "="

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " ? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "packVersionCode"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v1, -0x1

    if-le p3, v1, :cond_2

    const-string/jumbo v1, "="

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " ? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "items"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " > 0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 305
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 301
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 308
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v9, 0x1

    .line 312
    :cond_0
    :goto_2
    invoke-static {v8}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Landroid/database/Cursor;)V

    .line 313
    return v9

    .line 298
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string/jumbo v1, ">"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ">"

    goto :goto_1

    .line 309
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method exists(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packVersionCode"    # I
    .param p3, "type"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 274
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method existsOrLoitering(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 233
    sget-object v5, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "existsOrLoitering: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 236
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 238
    .local v9, "result":Z
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 240
    .local v0, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v5, "packages"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 242
    const/4 v3, 0x0

    .line 244
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v2, v5

    .line 246
    .local v2, "projectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "identifier = ? AND packType = ?"

    .line 247
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 249
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v5, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\tsql: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 255
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 251
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 257
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v9, 0x1

    .line 261
    :cond_0
    :goto_0
    invoke-static {v8}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Landroid/database/Cursor;)V

    .line 262
    return v9

    .line 258
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public insertItem(JLjava/lang/String;Ljava/lang/String;[B)J
    .locals 7
    .param p1, "packId"    # J
    .param p3, "identifier"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "content"    # [B

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->insertItem(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertItem(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;[B)J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packId"    # J
    .param p4, "identifier"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "content"    # [B

    .prologue
    .line 412
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "insertItem "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 413
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "packId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    const-string/jumbo v3, "identifier"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string/jumbo v3, "displayName"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 418
    const-string/jumbo v3, "entries"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 419
    .local v0, "result":J
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 420
    return-wide v0
.end method

.method public insertPack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "codename"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "packVersionCode"    # I
    .param p6, "minVersion"    # Ljava/lang/String;
    .param p7, "packType"    # I

    .prologue
    .line 383
    sget-object v3, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "insertPack: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 385
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 386
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "active"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string/jumbo v3, "codename"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string/jumbo v3, "displayName"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string/jumbo v3, "identifier"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v3, "minVersion"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v3, "packVersionCode"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string/jumbo v3, "packType"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    const-string/jumbo v3, "packages"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 395
    .local v0, "result":J
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 396
    return-wide v0
.end method

.method public insertPack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J
    .locals 8
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "codename"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "packVersionCode"    # I
    .param p5, "minVersion"    # Ljava/lang/String;
    .param p6, "packType"    # I

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->insertPack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method load(Ljava/lang/String;II)Lcom/aviary/android/feather/library/services/CDSPackage;
    .locals 23
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "packageversionCode"    # I
    .param p3, "type"    # I

    .prologue
    .line 425
    sget-object v12, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "load: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "), type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 427
    const/16 v22, 0x0

    .line 428
    .local v22, "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 430
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 431
    .local v2, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v12, "packages"

    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 434
    const/4 v12, 0x5

    new-array v4, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v4, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "identifier"

    aput-object v13, v4, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "displayName"

    aput-object v13, v4, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "minVersion"

    aput-object v13, v4, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "packVersionCode"

    aput-object v13, v4, v12

    .line 435
    const-string/jumbo v5, "identifier = ? AND packType = ? AND packVersionCode = ? AND active = 1"

    .line 436
    const/4 v12, 0x3

    new-array v6, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    .line 437
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 433
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 439
    .local v19, "cursor":Landroid/database/Cursor;
    if-eqz v19, :cond_2

    .line 440
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 441
    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 442
    .local v5, "packId":J
    const/4 v12, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "identifier":Ljava/lang/String;
    const/4 v12, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, "displayName":Ljava/lang/String;
    const/4 v12, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "minVersion":Ljava/lang/String;
    const/4 v12, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 446
    .local v10, "packVersion":I
    new-instance v4, Lcom/aviary/android/feather/library/services/CDSPackage;

    move/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/aviary/android/feather/library/services/CDSPackage;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 448
    .end local v22    # "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    .local v4, "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    invoke-static/range {v19 .. v19}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Landroid/database/Cursor;)V

    .line 450
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 451
    .local v11, "builder2":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v12, "entries"

    invoke-virtual {v11, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 454
    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v14, "_id"

    aput-object v14, v13, v12

    const/4 v12, 0x1

    const-string/jumbo v14, "identifier"

    aput-object v14, v13, v12

    const/4 v12, 0x2

    const-string/jumbo v14, "displayName"

    aput-object v14, v13, v12

    .line 455
    const-string/jumbo v14, "packId = ?"

    .line 456
    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    .line 457
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v3

    .line 453
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 459
    if-eqz v19, :cond_0

    .line 460
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 466
    invoke-static/range {v19 .. v19}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Landroid/database/Cursor;)V

    .line 470
    .end local v5    # "packId":J
    .end local v7    # "identifier":Ljava/lang/String;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "minVersion":Ljava/lang/String;
    .end local v10    # "packVersion":I
    .end local v11    # "builder2":Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_0
    :goto_1
    return-object v4

    .line 461
    .restart local v5    # "packId":J
    .restart local v7    # "identifier":Ljava/lang/String;
    .restart local v8    # "displayName":Ljava/lang/String;
    .restart local v9    # "minVersion":Ljava/lang/String;
    .restart local v10    # "packVersion":I
    .restart local v11    # "builder2":Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 462
    .local v20, "id":J
    const/4 v12, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 463
    const/4 v12, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 464
    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1, v7, v8}, Lcom/aviary/android/feather/library/services/CDSPackage;->addItem(JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .end local v4    # "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    .end local v5    # "packId":J
    .end local v7    # "identifier":Ljava/lang/String;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "minVersion":Ljava/lang/String;
    .end local v10    # "packVersion":I
    .end local v11    # "builder2":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v20    # "id":J
    .restart local v22    # "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    :cond_2
    move-object/from16 v4, v22

    .end local v22    # "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    .restart local v4    # "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    goto :goto_1
.end method

.method loadEntryContent(J)[B
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "content":[B
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 477
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SELECT content FROM entries WHERE _id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 478
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 481
    :cond_0
    invoke-static {v1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Landroid/database/Cursor;)V

    .line 482
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 64
    sget-object v8, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "onCreate: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-interface {v8, v9}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 70
    .local v3, "t1":J
    const-string/jumbo v2, "CREATE TABLE IF NOT EXISTS packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, codename VARCHAR(255) NOT NULL, displayDescription TEXT, displayName VARCHAR(50) NOT NULL, identifier VARCHAR(255) NOT NULL, minVersion VARCHAR(20), packVersionCode INTEGER NOT NULL DEFAULT 1, packType TINYINT NOT NULL, sdkVersion VARCHAR(20), uuid TEXT, requiresDownload TINYINT DEFAULT 0, downloadUri TEXT, thumbnailURL TEXT, updated TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')), active TINYINT DEFAULT 0, UNIQUE (identifier, packVersionCode, packType) ON CONFLICT IGNORE);"

    .line 90
    .local v2, "packages_sql":Ljava/lang/String;
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS entries (_id INTEGER PRIMARY KEY AUTOINCREMENT, content BLOB, displayName VARCHAR(255) NOT NULL, identifier VARCHAR(255) NOT NULL, packId INTEGER NOT NULL, FOREIGN KEY(packId) REFERENCES packages(_id));"

    .line 101
    .local v1, "entries_sql":Ljava/lang/String;
    const-string/jumbo v0, "CREATE VIEW IF NOT EXISTS entries_count AS SELECT t1._id, t1.identifier, t1.packVersionCode, t1.packType, COUNT(t2._id) as items FROM packages as t1, entries as t2  WHERE t1.active = 1 AND t1._id = t2.packId GROUP by t1._id"

    .line 119
    .local v0, "entries_count_sql":Ljava/lang/String;
    const-string/jumbo v7, "CREATE TRIGGER IF NOT EXISTS delete_homeless_entries BEFORE DELETE ON packages FOR EACH ROW BEGIN DELETE FROM entries WHERE OLD._id = entries.packId; END"

    .line 125
    .local v7, "trigger1":Ljava/lang/String;
    const-string/jumbo v8, "CREATE TABLE IF NOT EXISTS packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, codename VARCHAR(255) NOT NULL, displayDescription TEXT, displayName VARCHAR(50) NOT NULL, identifier VARCHAR(255) NOT NULL, minVersion VARCHAR(20), packVersionCode INTEGER NOT NULL DEFAULT 1, packType TINYINT NOT NULL, sdkVersion VARCHAR(20), uuid TEXT, requiresDownload TINYINT DEFAULT 0, downloadUri TEXT, thumbnailURL TEXT, updated TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')), active TINYINT DEFAULT 0, UNIQUE (identifier, packVersionCode, packType) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v8, "CREATE TABLE IF NOT EXISTS entries (_id INTEGER PRIMARY KEY AUTOINCREMENT, content BLOB, displayName VARCHAR(255) NOT NULL, identifier VARCHAR(255) NOT NULL, packId INTEGER NOT NULL, FOREIGN KEY(packId) REFERENCES packages(_id));"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v8, "CREATE VIEW IF NOT EXISTS entries_count AS SELECT t1._id, t1.identifier, t1.packVersionCode, t1.packType, COUNT(t2._id) as items FROM packages as t1, entries as t2  WHERE t1.active = 1 AND t1._id = t2.packId GROUP by t1._id"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v8, "CREATE TRIGGER IF NOT EXISTS delete_homeless_entries BEFORE DELETE ON packages FOR EACH ROW BEGIN DELETE FROM entries WHERE OLD._id = entries.packId; END"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 131
    .local v5, "t2":J
    sget-object v8, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "database creation time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v11, v5, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-interface {v8, v9}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->initializeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 159
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    .line 163
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onOpen"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->total(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lt v0, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->defaultInstalled(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->initializeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 171
    :cond_1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "onUpgrade"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "dropping tables.."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 144
    const-string/jumbo v0, "DROP TABLE IF EXISTS entries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "DROP TABLE IF EXISTS packages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "dropping views.."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 148
    const-string/jumbo v0, "DROP VIEW IF EXISTS entries_count"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "dropping triggers..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 151
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS delete_homeless_entries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    return-void
.end method

.method public printDatabase()V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 487
    return-void
.end method

.method public printDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 490
    sget-boolean v7, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-nez v7, :cond_0

    .line 516
    :goto_0
    return-void

    .line 492
    :cond_0
    sget-object v7, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "|--------------------------- DATABASE --------------------------|"

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 493
    const-string/jumbo v7, "SELECT * FROM packages"

    invoke-virtual {p1, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 494
    .local v0, "c1":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 495
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 513
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_2
    sget-object v7, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "|---------------------------------------------------------------|"

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    goto :goto_0

    .line 496
    :cond_3
    const-string/jumbo v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 497
    .local v2, "id":J
    const-string/jumbo v7, "identifier"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "identifier":Ljava/lang/String;
    const-string/jumbo v7, "packVersionCode"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "version":Ljava/lang/String;
    const-string/jumbo v7, "packType"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 501
    .local v5, "type":I
    sget-object v7, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SELECT * FROM entries WHERE packId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 504
    .local v1, "c2":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 505
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 510
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 506
    :cond_4
    const-string/jumbo v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 507
    const-string/jumbo v7, "identifier"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 508
    sget-object v7, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\t"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_2
.end method

.method total(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 204
    sget-object v1, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "total"

    aput-object v3, v2, v10

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 206
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 207
    .local v0, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "entries_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 208
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v10

    const-string/jumbo v3, "identifier = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p2, v4, v10

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 209
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 210
    .local v8, "count":I
    sget-object v1, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v11, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "total: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 211
    invoke-static {v9}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Landroid/database/Cursor;)V

    .line 212
    return v8
.end method
