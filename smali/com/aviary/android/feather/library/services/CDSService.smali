.class public Lcom/aviary/android/feather/library/services/CDSService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "CDSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/CDSService$OnCDSLoadComplete;
    }
.end annotation


# instance fields
.field mCreated:Z

.field mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 24
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    .line 25
    return-void
.end method

.method private throwIfNotOpened()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Database is not opened!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "close"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mCreated:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->close()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mCreated:Z

    .line 223
    :cond_0
    monitor-exit p0

    .line 229
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "dispose"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSService;->close()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    .line 236
    return-void
.end method

.method public install(Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;)Z
    .locals 18
    .param p1, "input"    # Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "install from input"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/library/services/CDSService;->throwIfNotOpened()V

    .line 104
    const/16 v16, 0x0

    .line 105
    .local v16, "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 106
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 108
    .local v17, "result":Z
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 112
    if-eqz p1, :cond_2

    .line 114
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->getPack()Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 116
    if-nez v16, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "endTransaction"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase()V

    .line 116
    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    .line 119
    :cond_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->valid()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackTypeInt()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->existsOrLoitering(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackTypeInt()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->deletePack(Ljava/lang/String;I)I

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getCodename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackVersionCode()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getMinVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackTypeInt()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->insertPack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J

    move-result-wide v2

    .line 126
    .local v2, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "added pack with id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 128
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 130
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getCount()I

    move-result v1

    if-lt v11, v1, :cond_3

    .line 147
    const/16 v17, 0x1

    .line 156
    .end local v2    # "id":J
    .end local v11    # "i":I
    :cond_2
    :goto_2
    if-eqz v17, :cond_7

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "commit!"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "endTransaction"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase()V

    move/from16 v1, v17

    .line 172
    goto/16 :goto_0

    .line 131
    .restart local v2    # "id":J
    .restart local v11    # "i":I
    :cond_3
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getItemAt(I)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;

    move-result-object v12

    .line 133
    .local v12, "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    invoke-virtual {v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 134
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .local v15, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    invoke-virtual {v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15}, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->loadItem(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->insertItem(JLjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide v13

    .line 144
    .local v13, "itemId":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\tadded item: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 130
    .end local v13    # "itemId":J
    .end local v15    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 138
    .restart local v15    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v10

    .line 139
    .local v10, "exception":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "endTransaction"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase()V

    .line 140
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 149
    .end local v10    # "exception":Ljava/io/IOException;
    .end local v11    # "i":I
    .end local v12    # "item":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    .end local v15    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_5
    const/16 v17, 0x0

    .line 151
    goto/16 :goto_2

    .line 152
    .end local v2    # "id":J
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 160
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "rollback!"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 163
    :catch_1
    move-exception v9

    .line 164
    .local v9, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "endTransaction"

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase()V

    .line 165
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 166
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "endTransaction"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v4}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase()V

    .line 170
    throw v1
.end method

.method public installed(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "packageversionCode"    # I
    .param p3, "plugintype"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/CDSService;->throwIfNotOpened()V

    .line 185
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->exists(Ljava/lang/String;II)Z

    move-result v0

    .line 186
    .local v0, "result":Z
    return v0
.end method

.method public load(Ljava/lang/String;II)Lcom/aviary/android/feather/library/services/CDSPackage;
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "packageversionCode"    # I
    .param p3, "plugintype"    # I

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/CDSService;->throwIfNotOpened()V

    .line 199
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->load(Ljava/lang/String;II)Lcom/aviary/android/feather/library/services/CDSPackage;

    move-result-object v0

    .line 200
    .local v0, "result":Lcom/aviary/android/feather/library/services/CDSPackage;
    return-object v0
.end method

.method public loadEntryContent(J)[B
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/CDSService;->throwIfNotOpened()V

    .line 211
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->loadEntryContent(J)[B

    move-result-object v0

    .line 212
    .local v0, "result":[B
    return-object v0
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "open"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/CDSService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/utils/SystemUtils;->throwIfNonUiThread(Landroid/content/Context;)V

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mCreated:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mCreated:Z

    .line 45
    :cond_0
    monitor-exit p0

    .line 53
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public opened()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/CDSService;->mCreated:Z

    return v0
.end method

.method public uninstall(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/CDSService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uninstall: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/CDSService;->throwIfNotOpened()V

    .line 89
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->deletePack(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 90
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/CDSService;->mHelper:Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSDatabaseHelper;->printDatabase()V

    .line 91
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    .line 89
    goto :goto_0
.end method
