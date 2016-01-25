.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method private readLines(Ljava/io/RandomAccessFile;)J
    .locals 14
    .param p1, "reader"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x1

    const/4 v11, 0x0

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 452
    .local v3, "pos":J
    move-wide v5, v3

    .line 455
    .local v5, "rePos":J
    const/4 v8, 0x0

    .line 456
    .local v8, "seenCR":Z
    :goto_0
    iget-boolean v9, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .local v2, "num":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 458
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v0, v9, v1

    .line 459
    .local v0, "ch":B
    packed-switch v0, :pswitch_data_0

    .line 473
    :pswitch_0
    if-eqz v8, :cond_0

    .line 474
    const/4 v8, 0x0

    .line 475
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 477
    int-to-long v9, v1

    add-long/2addr v9, v3

    add-long v5, v9, v12

    .line 479
    :cond_0
    int-to-char v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 461
    :pswitch_1
    const/4 v8, 0x0

    .line 462
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    int-to-long v9, v1

    add-long/2addr v9, v3

    add-long v5, v9, v12

    .line 465
    goto :goto_2

    .line 467
    :pswitch_2
    if-eqz v8, :cond_1

    .line 468
    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    :cond_1
    const/4 v8, 0x1

    .line 471
    goto :goto_2

    .line 483
    .end local v0    # "ch":B
    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_3
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    return-wide v5

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 337
    const/4 v8, 0x0

    .line 339
    .local v8, "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v1, 0x0

    .line 340
    .local v1, "last":J
    const-wide/16 v6, 0x0

    .local v6, "position":J
    move-object v9, v8

    .line 342
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .local v9, "reader":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_0
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    if-nez v9, :cond_2

    .line 344
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string/jumbo v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    if-nez v8, :cond_0

    .line 351
    :try_start_2
    iget-wide v11, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v8

    .line 353
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 352
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    move-object v9, v8

    .line 353
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 356
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_0
    :try_start_4
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 357
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 358
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v8

    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 356
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 362
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_3
    :try_start_5
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_7

    .line 364
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v11, v1, v2}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v5

    .line 367
    .local v5, "newer":Z
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 369
    .local v3, "length":J
    cmp-long v11, v3, v6

    if-gez v11, :cond_3

    .line 372
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 377
    move-object v10, v9

    .line 378
    .local v10, "save":Ljava/io/RandomAccessFile;
    :try_start_6
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string/jumbo v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v6, 0x0

    .line 381
    :try_start_7
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v9, v8

    .line 385
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 382
    :catch_2
    move-exception v0

    move-object v8, v9

    .line 384
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_8
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v9, v8

    .line 386
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 392
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "save":Ljava/io/RandomAccessFile;
    :cond_3
    cmp-long v11, v3, v6

    if-lez v11, :cond_6

    .line 395
    :try_start_9
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 412
    :cond_4
    :goto_5
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_5

    .line 413
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 416
    :cond_5
    :try_start_a
    iget-wide v11, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 419
    :goto_6
    :try_start_b
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_8

    .line 420
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string/jumbo v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 421
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :try_start_c
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_7
    move-object v9, v8

    .line 423
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 398
    :cond_6
    if-eqz v5, :cond_4

    .line 404
    const-wide/16 v6, 0x0

    .line 405
    :try_start_d
    invoke-virtual {v9, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v1

    goto :goto_5

    .line 430
    .end local v3    # "length":J
    .end local v5    # "newer":Z
    :cond_7
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 432
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_8
    return-void

    .line 425
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    move-object v8, v9

    .line 427
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_9
    :try_start_e
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 430
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_8

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v11

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_a
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    :catchall_1
    move-exception v11

    goto :goto_a

    .line 425
    :catch_4
    move-exception v0

    goto :goto_9

    .line 417
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "length":J
    .restart local v5    # "newer":Z
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v11

    goto :goto_6

    .line 382
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v10    # "save":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    goto :goto_4

    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .end local v10    # "save":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :cond_8
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_7
.end method
