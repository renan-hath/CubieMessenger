.class Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;
.super Lcom/liquable/nemo/util/crop/BaseCancelable;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddImageCancelable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/crop/BaseCancelable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCr:Landroid/content/ContentResolver;

.field private final mJpegData:[B

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "orientation"    # I
    .param p4, "source"    # Landroid/graphics/Bitmap;
    .param p5, "jpegData"    # [B

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/BaseCancelable;-><init>()V

    .line 53
    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    .line 57
    iput-object p2, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    .line 58
    iput-object p5, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mJpegData:[B

    .line 59
    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 63
    const/4 v7, 0x0

    .line 65
    .local v7, "complete":Z
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "mini_thumb_magic"

    aput-object v1, v2, v0

    .line 66
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 68
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 72
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "mini_thumb_magic"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    const/4 v9, 0x0

    .line 77
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_3
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 78
    if-eqz v9, :cond_0

    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mJpegData:[B

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 85
    :cond_0
    :try_start_4
    invoke-static {v9}, Lcom/liquable/nemo/util/crop/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    :goto_0
    const/4 v7, 0x1

    .line 90
    if-nez v7, :cond_1

    .line 92
    :try_start_5
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 95
    :cond_1
    :goto_1
    return-object v11

    .line 70
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 90
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-nez v7, :cond_2

    .line 92
    :try_start_7
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 95
    :cond_2
    :goto_2
    throw v0

    .line 81
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 83
    .local v8, "ex":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot open file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 85
    :try_start_9
    invoke-static {v9}, Lcom/liquable/nemo/util/crop/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    invoke-static {v9}, Lcom/liquable/nemo/util/crop/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 93
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    goto :goto_2

    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v0

    goto :goto_1
.end method
