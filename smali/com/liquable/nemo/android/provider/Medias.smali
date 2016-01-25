.class public Lcom/liquable/nemo/android/provider/Medias;
.super Ljava/lang/Object;
.source "Medias.java"


# static fields
.field public static final IMAGE_NOT_FOUND_ID:I = -0x1

.field private static final LIST_ALBUMS_LIMIT:I = 0x7d0

.field private static final MAX_ALBUM_COUNT:I = 0x64

.field private static final PICTURE_COUNT_PER_PAGE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeCursorQuietly(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 28
    :cond_0
    return-void
.end method

.method private static createExcludeSQL([Ljava/io/File;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "excludeDirs"    # [Ljava/io/File;

    .prologue
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    array-length v3, p0

    if-lez v3, :cond_2

    .line 33
    const-string/jumbo v3, "bucket_id not in ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "i":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p0, v3

    .line 36
    .local v0, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 37
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    const-string/jumbo v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .end local v1    # "i":I
    :cond_2
    return-object v2
.end method

.method public static deleteOneImageAfter(Landroid/content/Context;I)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "afterMediaId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 51
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v10

    .line 55
    :cond_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v10

    const-string/jumbo v0, "datetaken"

    aput-object v0, v2, v3

    .line 56
    .local v2, "imageColumns":[Ljava/lang/String;
    const-string/jumbo v9, "_id > ? "

    .line 57
    .local v9, "imageWhere":Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 59
    .local v4, "imageArguments":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 61
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "_id > ? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 67
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 68
    .local v10, "totalDeleteCount":I
    if-eqz v7, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 73
    .local v6, "cr":Landroid/content/ContentResolver;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 76
    .local v8, "id":I
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    int-to-long v12, v8

    .line 78
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    .line 76
    invoke-virtual {v6, v0, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 82
    .end local v8    # "id":I
    :cond_2
    invoke-static {v7}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v6    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static extractExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const-string/jumbo v1, ""

    .line 102
    :cond_0
    :goto_0
    return-object v1

    .line 96
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 97
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "fileNameWithSuffix":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 99
    .local v1, "suffix":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 100
    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static findFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 106
    const/4 v6, 0x0

    .line 108
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 109
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    invoke-static {v6}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .end local v2    # "projection":[Ljava/lang/String;
    :goto_0
    return-object v10

    .line 114
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "filePath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    .end local v8    # "file":Ljava/io/File;
    :goto_1
    invoke-static {v6}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    move-object v10, v8

    goto :goto_0

    .restart local v8    # "file":Ljava/io/File;
    :cond_2
    move-object v8, v10

    .line 117
    goto :goto_1

    .line 118
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 121
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {v6}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "album_id"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "artist"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "mime_type"

    aput-object v2, v3, v1

    .line 139
    .restart local v3    # "projection":[Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 140
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 142
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 143
    :cond_0
    const/4 v4, 0x0

    .line 175
    invoke-static {v12}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .end local v12    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v4

    .line 130
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 131
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "orientation"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "mime_type"

    aput-object v2, v3, v1

    .restart local v3    # "projection":[Ljava/lang/String;
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 134
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mime_type"

    aput-object v2, v3, v1

    .restart local v3    # "projection":[Ljava/lang/String;
    goto :goto_0

    .line 136
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 145
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    const-string/jumbo v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 147
    .local v13, "idx":I
    const-string/jumbo v1, "title"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 149
    .local v15, "titleIdx":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 150
    const-string/jumbo v1, "_data"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 151
    .local v14, "path":Ljava/lang/String;
    invoke-static {v14}, Lcom/liquable/nemo/android/provider/Medias;->extractExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 152
    .local v11, "suffix":Ljava/lang/String;
    new-instance v4, Lcom/liquable/nemo/android/provider/AudioInfo;

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "album_id"

    .line 155
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "artist"

    .line 156
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "mime_type"

    .line 157
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/liquable/nemo/android/provider/AudioInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-static {v12}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 159
    .end local v11    # "suffix":Ljava/lang/String;
    .end local v14    # "path":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 160
    new-instance v4, Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "orientation"

    .line 163
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v1, "mime_type"

    .line 164
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/liquable/nemo/android/provider/PictureInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    invoke-static {v12}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 165
    :cond_6
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 166
    new-instance v4, Lcom/liquable/nemo/android/provider/VideoInfo;

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "mime_type"

    .line 169
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/liquable/nemo/android/provider/VideoInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    invoke-static {v12}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 171
    :cond_7
    const/4 v4, 0x0

    .line 175
    invoke-static {v12}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .end local v13    # "idx":I
    .end local v15    # "titleIdx":I
    :catchall_0
    move-exception v1

    invoke-static {v12}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static getLastImageId(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v0

    .line 185
    .local v2, "imageColumns":[Ljava/lang/String;
    const-string/jumbo v7, "_id DESC"

    .line 186
    .local v7, "imageOrderBy":Ljava/lang/String;
    const/4 v3, 0x0

    .line 187
    .local v3, "imageWhere":Ljava/lang/String;
    const/4 v4, 0x0

    .line 189
    .local v4, "imageArguments":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 191
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 204
    invoke-static {v6}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    :goto_0
    return v0

    .line 201
    :cond_0
    const/4 v0, -0x1

    .line 204
    invoke-static {v6}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static isFileExists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/liquable/nemo/android/provider/Medias;->findFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listAlbums(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/gallery/AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 213
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 214
    .local v1, "uri":Landroid/net/Uri;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "bucket_display_name"

    aput-object v3, v2, v0

    const-string/jumbo v0, "COUNT(*)"

    aput-object v0, v2, v5

    const-string/jumbo v0, "MAX(_id)"

    aput-object v0, v2, v6

    const/4 v0, 0x4

    const-string/jumbo v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v3, "mime_type"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "datetaken"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v3, "orientation"

    aput-object v3, v2, v0

    .line 218
    .local v2, "projection":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v12, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/gallery/AlbumInfo;>;"
    const/4 v13, 0x0

    .line 228
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "1) GROUP BY 1 HAVING (MAX(_id)=_id"

    const/4 v4, 0x0

    const-string/jumbo v5, "MAX(datetaken) DESC  LIMIT 2000"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 234
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    .line 236
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "id":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/gallery/AlbumInfo;

    .line 238
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v0, "title"

    .line 239
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "orientation"

    .line 240
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v0, "mime_type"

    .line 241
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "bucket_id"

    .line 242
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "bucket_display_name"

    .line 243
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x2

    .line 244
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-direct/range {v3 .. v11}, Lcom/liquable/nemo/gallery/AlbumInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    .end local v4    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v13}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_0
    invoke-static {v13}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 251
    return-object v12
.end method

.method public static listPicturesByAlbum(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 258
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v5

    const-string/jumbo v0, "title"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string/jumbo v5, "mime_type"

    aput-object v5, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v5, "datetaken"

    aput-object v5, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "orientation"

    aput-object v5, v2, v0

    .line 261
    .local v2, "projection":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    const/4 v10, 0x0

    .line 265
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bucket_id = ? "

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "datetaken DESC  LIMIT 60 OFFSET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 275
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 276
    const/4 v9, 0x0

    .line 277
    .local v9, "count":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    if-ge v9, v0, :cond_0

    .line 278
    const-string/jumbo v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "id":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 280
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v0, "title"

    .line 281
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "orientation"

    .line 282
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v0, "mime_type"

    .line 283
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/liquable/nemo/android/provider/PictureInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    .local v3, "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    add-int/lit8 v9, v9, 0x1

    .line 286
    goto :goto_0

    .line 289
    .end local v3    # "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    .end local v4    # "id":Ljava/lang/String;
    .end local v9    # "count":I
    :cond_0
    invoke-static {v10}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 291
    return-object v11

    .line 289
    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static listRecentMusics(Landroid/content/Context;I[Ljava/io/File;)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # I
    .param p2, "excludeDirs"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/AudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 298
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v5, "title"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v5, "mime_type"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v5, "date_added"

    aput-object v5, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v5, "album_id"

    aput-object v5, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v5, "artist"

    aput-object v5, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v5, "_data"

    aput-object v5, v3, v1

    .line 301
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "date_added desc "

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 308
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 309
    const/4 v12, 0x0

    .line 310
    .local v12, "count":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/AudioInfo;>;"
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v0, p1

    if-ge v12, v0, :cond_0

    .line 312
    const-string/jumbo v1, "_data"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 313
    .local v15, "path":Ljava/lang/String;
    invoke-static {v15}, Lcom/liquable/nemo/android/provider/Medias;->extractExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "suffix":Ljava/lang/String;
    const-string/jumbo v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 315
    .local v14, "id":Ljava/lang/String;
    new-instance v4, Lcom/liquable/nemo/android/provider/AudioInfo;

    const-string/jumbo v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v2, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v1, "title"

    .line 317
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "album_id"

    .line 318
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "artist"

    .line 319
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "mime_type"

    .line 320
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v11}, Lcom/liquable/nemo/android/provider/AudioInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .local v4, "musicInfo":Lcom/liquable/nemo/android/provider/AudioInfo;
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    add-int/lit8 v12, v12, 0x1

    .line 324
    goto :goto_0

    .line 328
    .end local v4    # "musicInfo":Lcom/liquable/nemo/android/provider/AudioInfo;
    .end local v11    # "suffix":Ljava/lang/String;
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {v13}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 330
    .end local v12    # "count":I
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/AudioInfo;>;"
    :goto_1
    return-object v16

    .line 328
    :cond_1
    invoke-static {v13}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    goto :goto_1

    .line 328
    :catchall_0
    move-exception v1

    invoke-static {v13}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static listRecentPictures(Landroid/content/Context;I[Ljava/io/File;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # I
    .param p2, "excludeDirs"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 342
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v5, "title"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "mime_type"

    aput-object v5, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v5, "datetaken"

    aput-object v5, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "orientation"

    aput-object v5, v2, v0

    .line 345
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    invoke-static {p2}, Lcom/liquable/nemo/android/provider/Medias;->createExcludeSQL([Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "date_added desc "

    .line 345
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 352
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 353
    const/4 v9, 0x0

    .line 354
    .local v9, "count":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge v9, p1, :cond_0

    .line 357
    const-string/jumbo v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "id":Ljava/lang/String;
    new-instance v3, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 359
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v0, "title"

    .line 360
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "orientation"

    .line 361
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v0, "mime_type"

    .line 362
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/liquable/nemo/android/provider/PictureInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    .local v3, "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    add-int/lit8 v9, v9, 0x1

    .line 365
    goto :goto_0

    .line 369
    .end local v3    # "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    invoke-static {v10}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 371
    .end local v9    # "count":I
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    :goto_1
    return-object v11

    .line 369
    :cond_1
    invoke-static {v10}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_1

    .line 369
    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static listRecentVideos(Landroid/content/Context;I[Ljava/io/File;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # I
    .param p2, "excludeDirs"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/VideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 382
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "mime_type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "datetaken"

    aput-object v3, v2, v0

    .line 385
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    invoke-static {p2}, Lcom/liquable/nemo/android/provider/Medias;->createExcludeSQL([Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "date_added desc "

    .line 385
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 392
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 393
    const/4 v6, 0x0

    .line 394
    .local v6, "count":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/VideoInfo;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge v6, p1, :cond_0

    .line 397
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, "id":Ljava/lang/String;
    new-instance v10, Lcom/liquable/nemo/android/provider/VideoInfo;

    .line 399
    invoke-static {v1, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "title"

    .line 400
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mime_type"

    .line 401
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v8, v0, v3, v4}, Lcom/liquable/nemo/android/provider/VideoInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v10, "videoInfo":Lcom/liquable/nemo/android/provider/VideoInfo;
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    add-int/lit8 v6, v6, 0x1

    .line 404
    goto :goto_0

    .line 408
    .end local v8    # "id":Ljava/lang/String;
    .end local v10    # "videoInfo":Lcom/liquable/nemo/android/provider/VideoInfo;
    :cond_0
    invoke-static {v7}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 410
    .end local v6    # "count":I
    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/VideoInfo;>;"
    :goto_1
    return-object v9

    .line 408
    :cond_1
    invoke-static {v7}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    .line 410
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_1

    .line 408
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/liquable/nemo/android/provider/Medias;->closeCursorQuietly(Landroid/database/Cursor;)V

    throw v0
.end method
