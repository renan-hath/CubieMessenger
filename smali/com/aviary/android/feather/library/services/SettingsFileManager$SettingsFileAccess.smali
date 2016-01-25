.class Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;
.super Ljava/lang/Object;
.source "SettingsFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/SettingsFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingsFileAccess"
.end annotation


# instance fields
.field private final filename:Ljava/lang/String;

.field private log_tag:Ljava/lang/String;

.field private mFile:Ljava/io/RandomAccessFile;

.field private final max_age:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "max_age"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->filename:Ljava/lang/String;

    .line 280
    iput-wide p2, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->max_age:J

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    .line 283
    return-void
.end method

.method private getExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private load(I)Ljava/util/Map;
    .locals 16
    .param p1, "tryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "load. try: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_1

    .line 374
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "file is closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 375
    const/4 v14, 0x0

    .line 431
    :cond_0
    :goto_0
    return-object v14

    .line 378
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 380
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const/16 v2, 0x14

    move/from16 v0, p1

    if-le v0, v2, :cond_2

    .line 381
    invoke-static {v1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 382
    const/4 v14, 0x0

    goto :goto_0

    .line 385
    :cond_2
    const/4 v11, 0x0

    .line 386
    .local v11, "lock":Ljava/nio/channels/FileLock;
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 389
    .local v14, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 394
    :goto_1
    if-nez v11, :cond_3

    .line 395
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/aviary/android/feather/library/utils/SystemUtils;->trySleep(J)V

    .line 396
    add-int/lit8 p1, p1, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->load(I)Ljava/util/Map;

    move-result-object v14

    goto :goto_0

    .line 390
    :catch_0
    move-exception v7

    .line 391
    .local v7, "e":Ljava/lang/Exception;
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_1

    .line 399
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const-wide/16 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :goto_2
    :try_start_2
    new-instance v13, Ljava/util/Scanner;

    invoke-direct {v13, v1}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 406
    .local v13, "scanner":Ljava/util/Scanner;
    :cond_4
    :goto_3
    invoke-virtual {v13}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 420
    :try_start_3
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 427
    .end local v13    # "scanner":Ljava/util/Scanner;
    :goto_4
    sget-boolean v2, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 428
    # invokes: Lcom/aviary/android/feather/library/services/SettingsFileManager;->printMap(Ljava/util/Map;)V
    invoke-static {v14}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$1(Ljava/util/Map;)V

    goto :goto_0

    .line 400
    :catch_1
    move-exception v8

    .line 401
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 407
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v13    # "scanner":Ljava/util/Scanner;
    :cond_5
    :try_start_4
    invoke-virtual {v13}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, "line":Ljava/lang/String;
    const-string/jumbo v2, "\\="

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 410
    .local v12, "parts":[Ljava/lang/String;
    if-eqz v12, :cond_4

    array-length v2, v12

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 411
    const/4 v2, 0x0

    aget-object v9, v12, v2

    .line 412
    .local v9, "key":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v15, v12, v2

    .line 413
    .local v15, "value":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 416
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "parts":[Ljava/lang/String;
    .end local v13    # "scanner":Ljava/util/Scanner;
    .end local v15    # "value":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 420
    :try_start_5
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 421
    :catch_3
    move-exception v2

    goto :goto_4

    .line 418
    :catchall_0
    move-exception v2

    .line 420
    :try_start_6
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 424
    :goto_5
    throw v2

    .line 421
    :catch_4
    move-exception v3

    goto :goto_5

    .restart local v13    # "scanner":Ljava/util/Scanner;
    :catch_5
    move-exception v2

    goto :goto_4
.end method

.method private open()Ljava/io/RandomAccessFile;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 287
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->getExternalStorageAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 288
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 289
    .local v4, "parent":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ".com.aviary.android.feather"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->filename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 293
    new-instance v0, Ljava/io/File;

    const-string/jumbo v6, ".com.aviary.android.feather"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v0, "destFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 299
    :cond_0
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "destFolder exists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->debug([Ljava/lang/Object;)V

    .line 301
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->filename:Ljava/lang/String;

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 305
    .end local v0    # "destFolder":Ljava/io/File;
    :cond_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rwd"

    invoke-direct {v5, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    .local v5, "result":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 310
    .local v2, "mtime":J
    iget-wide v6, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->max_age:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iget-wide v8, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->max_age:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 314
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "truncate. too old"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->debug([Ljava/lang/Object;)V

    .line 315
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 320
    :cond_2
    :goto_0
    return-object v5

    .line 318
    :cond_3
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "never expires"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->debug([Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mtime":J
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "result":Ljava/io/RandomAccessFile;
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "External storage not available"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private save(ILjava/util/Map;)V
    .locals 13
    .param p1, "tryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 441
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "save. try: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 443
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    .line 444
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "file is closed"

    aput-object v3, v2, v11

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 499
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 450
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    const/16 v1, 0x14

    if-le p1, v1, :cond_1

    .line 451
    invoke-static {v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 455
    :cond_1
    const/4 v10, 0x0

    .line 458
    .local v10, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 463
    :goto_1
    if-nez v10, :cond_2

    .line 464
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/utils/SystemUtils;->trySleep(J)V

    .line 465
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->save(ILjava/util/Map;)V

    goto :goto_0

    .line 459
    :catch_0
    move-exception v7

    .line 460
    .local v7, "e":Ljava/lang/Exception;
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v7, v2, v11

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_1

    .line 471
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 474
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 476
    sget-boolean v1, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v1, :cond_3

    .line 477
    # invokes: Lcom/aviary/android/feather/library/services/SettingsFileManager;->printMap(Ljava/util/Map;)V
    invoke-static {p2}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$1(Ljava/util/Map;)V

    .line 480
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 493
    :try_start_2
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 494
    :catch_1
    move-exception v1

    goto :goto_0

    .line 480
    :cond_5
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 481
    .local v8, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 484
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :goto_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 485
    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 488
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 489
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 493
    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 494
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 491
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 493
    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 497
    :goto_3
    throw v1

    .line 494
    :catch_4
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 343
    # getter for: Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->log_tag:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 347
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-static {v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    .line 350
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    :cond_0
    return-void
.end method

.method public load()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->load(I)Ljava/util/Map;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->save(ILjava/util/Map;)V

    .line 362
    :cond_0
    return-void
.end method
