.class public Lcom/aviary/android/feather/headless/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 190
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 193
    return-void

    .line 191
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x400

    .line 216
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 217
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-le v2, v3, :cond_2

    move v2, v3

    :goto_0
    new-array v0, v2, [B

    .line 219
    .local v0, "buffer":[B
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 225
    .end local v0    # "buffer":[B
    .end local v1    # "read":I
    :cond_1
    return-void

    .line 217
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    goto :goto_0

    .line 220
    .restart local v0    # "buffer":[B
    .restart local v1    # "read":I
    :cond_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-le v2, v3, :cond_4

    move v2, v3

    :goto_2
    new-array v0, v2, [B

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    goto :goto_2
.end method

.method public static ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 361
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 362
    invoke-static {p0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 363
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 371
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-object p0
.end method

.method public static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 318
    if-nez p1, :cond_0

    .line 338
    :goto_0
    return-object v3

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 323
    .local v7, "data":Ljava/lang/String;
    if-nez v9, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_1
    move-object v3, v7

    .line 338
    goto :goto_0

    .line 324
    :cond_2
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 326
    goto :goto_1

    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 329
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 331
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_4

    .line 332
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 335
    .end local v8    # "index":I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static mkdir(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 415
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0
.end method

.method public static mkdirs(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "dirname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "destFolder":Ljava/io/File;
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "paths":[Ljava/lang/String;
    array-length v5, v3

    if-le v5, v6, :cond_3

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_2

    .line 64
    .end local v2    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    .end local v0    # "destFolder":Ljava/io/File;
    .end local v3    # "paths":[Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v0

    .line 57
    .restart local v0    # "destFolder":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "paths":[Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/io/File;

    aget-object v5, v3, v2

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .end local v0    # "destFolder":Ljava/io/File;
    .local v1, "destFolder":Ljava/io/File;
    const-string/jumbo v5, "io-utils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    .end local v1    # "destFolder":Ljava/io/File;
    .restart local v0    # "destFolder":Ljava/io/File;
    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_3
    array-length v5, v3

    if-ne v5, v6, :cond_0

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0    # "destFolder":Ljava/io/File;
    .restart local v1    # "destFolder":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "destFolder":Ljava/io/File;
    .restart local v0    # "destFolder":Ljava/io/File;
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .end local v0    # "destFolder":Ljava/io/File;
    .end local v3    # "paths":[Ljava/lang/String;
    :cond_6
    move-object v0, v4

    .line 74
    goto :goto_2
.end method

.method public static readFileFromZip(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 2
    .param p0, "stream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 92
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-static {p0, p2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 98
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 99
    const/4 v1, 0x1

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0
.end method

.method public static final readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "pInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 288
    .local v1, "sc":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 289
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readSystemFileAsInt(Ljava/lang/String;)I
    .locals 8
    .param p0, "pSystemFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v2, 0x0

    .line 275
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "/system/bin/cat"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 277
    .local v3, "process":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 278
    invoke-static {v2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 280
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "destFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "destination folder is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_0
    if-nez p0, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Input is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_1
    const-string/jumbo v3, "io-utils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unzip to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "success":Z
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 384
    .local v2, "zipFile":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .local v1, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_2

    .line 389
    invoke-static {v2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 391
    if-nez v0, :cond_3

    .line 392
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "invalid zip file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    :cond_2
    invoke-static {v1, v2, p1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->unzipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipInputStream;Ljava/io/File;)V

    .line 386
    const/4 v0, 0x1

    .line 387
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 394
    :cond_3
    return-void
.end method

.method private static unzipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipInputStream;Ljava/io/File;)V
    .locals 3
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .param p1, "zip"    # Ljava/util/zip/ZipInputStream;
    .param p2, "baseDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->mkdirs(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 412
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    .local v0, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->mkdir(Ljava/io/File;)Z

    .line 408
    :cond_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 409
    .local v1, "outputStream":Ljava/io/BufferedOutputStream;
    invoke-static {p1, v1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 410
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 411
    invoke-static {v1}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0
.end method
