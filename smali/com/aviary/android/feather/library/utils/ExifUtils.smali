.class public Lcom/aviary/android/feather/library/utils/ExifUtils;
.super Ljava/lang/Object;
.source "ExifUtils.java"


# static fields
.field private static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "ExifUtils"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/utils/ExifUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    sget-object v0, Lcom/aviary/android/feather/library/utils/ExifUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getExifOrientation(context,uri): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 52
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v12, 0x0

    .line 108
    :goto_0
    return v12

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_2

    const-string/jumbo v0, "file"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/utils/ExifUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v12

    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "orientation"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 69
    .local v10, "result":Landroid/database/Cursor;
    if-nez v10, :cond_4

    .line 70
    const/4 v12, 0x0

    goto :goto_0

    .line 64
    .end local v10    # "result":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 65
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 v12, 0x0

    goto :goto_0

    .line 73
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "result":Landroid/database/Cursor;
    :cond_4
    const-string/jumbo v0, "orientation"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 74
    .local v8, "orientationColumnIndex":I
    const-string/jumbo v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 77
    .local v6, "dataColumnIndex":I
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 78
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    const/4 v11, 0x0

    .line 81
    .local v11, "rotationFromCursor":I
    const/4 v12, 0x0

    .line 83
    .local v12, "rotationFromFile":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_5

    .line 84
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 87
    :cond_5
    const/4 v0, -0x1

    if-le v6, v0, :cond_6

    .line 88
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "path":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 90
    invoke-static {v9}, Lcom/aviary/android/feather/library/utils/ExifUtils;->getExifOrientation(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 94
    .end local v9    # "path":Ljava/lang/String;
    :cond_6
    if-eqz v12, :cond_7

    .line 105
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 98
    :cond_7
    if-eqz v11, :cond_8

    .line 105
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v12, v11

    .line 99
    goto :goto_0

    .line 105
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 102
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 104
    .end local v11    # "rotationFromCursor":I
    .end local v12    # "rotationFromFile":I
    :catchall_0
    move-exception v0

    .line 105
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 106
    throw v0

    .line 105
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 108
    .end local v6    # "dataColumnIndex":I
    .end local v8    # "orientationColumnIndex":I
    .end local v10    # "result":Landroid/database/Cursor;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 28
    sget-object v4, Lcom/aviary/android/feather/library/utils/ExifUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getExifOrientation(filepath): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 29
    if-nez p0, :cond_0

    move v0, v3

    .line 38
    :goto_0
    return v0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 32
    .local v2, "exif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    :try_start_0
    new-instance v2, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;

    .end local v2    # "exif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    invoke-direct {v2, p0}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .restart local v2    # "exif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    invoke-virtual {v2}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->getOrientation()I

    move-result v0

    .line 37
    .local v0, "degrees":I
    sget-object v4, Lcom/aviary/android/feather/library/utils/ExifUtils;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "degress: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    .end local v0    # "degrees":I
    .end local v2    # "exif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v0, v3

    .line 34
    goto :goto_0
.end method
