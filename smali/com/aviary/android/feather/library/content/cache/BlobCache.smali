.class public Lcom/aviary/android/feather/library/content/cache/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mPath:Ljava/lang/String;

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxEntries"    # I
    .param p3, "maxBytes"    # I
    .param p4, "reset"    # Z
    .param p5, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mBlobHeader:[B

    .line 63
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 402
    new-instance v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mLookupRequest:Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;

    .line 77
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BlobCache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mPath:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 82
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 83
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 84
    iput p5, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mVersion:I

    .line 86
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 87
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "data file 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "data file 1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    if-nez p4, :cond_3

    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    :cond_2
    return-void

    .line 96
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->resetCache(II)V

    .line 98
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->closeAll()V

    .line 100
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6
    .param p1, "hashStart"    # I

    .prologue
    const/16 v5, 0x400

    .line 344
    new-array v2, v5, [B

    .line 345
    .local v2, "zero":[B
    iget-object v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 346
    iget v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    .local v0, "count":I
    :goto_0
    if-gtz v0, :cond_0

    .line 351
    return-void

    .line 347
    :cond_0
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 348
    .local v1, "todo":I
    iget-object v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 349
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private closeAll()V
    .locals 2

    .prologue
    .line 161
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "closeAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 165
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 166
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 167
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 168
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 613
    if-nez p0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 615
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-boolean v1, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 139
    const-string/jumbo v1, "blob-cache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteFilesSilently: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "blob-cache"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteFiles: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    .line 323
    const/4 v0, 0x4

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    .line 325
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 326
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 327
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 328
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->updateIndexHeader()V

    .line 330
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->setActiveVariables()V

    .line 331
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->clearHash(I)V

    .line 332
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->syncIndex()V

    .line 333
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;)Z
    .locals 14
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "offset"    # I
    .param p3, "req"    # Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v5, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mBlobHeader:[B

    .line 470
    .local v5, "header":[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    .line 472
    .local v7, "oldPosition":J
    move/from16 v0, p2

    int-to-long v11, v0

    :try_start_0
    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 473
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    const/16 v12, 0x14

    if-eq v11, v12, :cond_1

    .line 474
    sget-boolean v11, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "blob-cache"

    const-string/jumbo v12, "cannot read blob header"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_0
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 475
    const/4 v11, 0x0

    .line 511
    :goto_0
    return v11

    .line 477
    :cond_1
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v5, v11}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readLong([BI)J

    move-result-wide v2

    .line 478
    .local v2, "blobKey":J
    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->key:J

    cmp-long v11, v2, v11

    if-eqz v11, :cond_3

    .line 479
    sget-boolean v11, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "blob-cache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "blob key does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :cond_2
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 480
    const/4 v11, 0x0

    goto :goto_0

    .line 482
    :cond_3
    const/16 v11, 0x8

    :try_start_2
    invoke-static {v5, v11}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v9

    .line 483
    .local v9, "sum":I
    const/16 v11, 0xc

    invoke-static {v5, v11}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v4

    .line 484
    .local v4, "blobOffset":I
    move/from16 v0, p2

    if-eq v4, v0, :cond_5

    .line 485
    sget-boolean v11, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v11, :cond_4

    const-string/jumbo v11, "blob-cache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "blob offset does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    :cond_4
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 486
    const/4 v11, 0x0

    goto :goto_0

    .line 488
    :cond_5
    const/16 v11, 0x10

    :try_start_3
    invoke-static {v5, v11}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v6

    .line 489
    .local v6, "length":I
    if-ltz v6, :cond_6

    iget v11, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    sub-int v11, v11, p2

    add-int/lit8 v11, v11, -0x14

    if-le v6, v11, :cond_8

    .line 490
    :cond_6
    sget-boolean v11, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v11, :cond_7

    const-string/jumbo v11, "blob-cache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "invalid blob length: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    :cond_7
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 491
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 493
    :cond_8
    :try_start_4
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->buffer:[B

    if-eqz v11, :cond_9

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->buffer:[B

    array-length v11, v11

    if-ge v11, v6, :cond_a

    .line 494
    :cond_9
    new-array v11, v6, [B

    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->buffer:[B

    .line 497
    :cond_a
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->buffer:[B

    .line 498
    .local v1, "blob":[B
    move-object/from16 v0, p3

    iput v6, v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->length:I

    .line 500
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    if-eq v11, v6, :cond_c

    .line 501
    sget-boolean v11, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v11, :cond_b

    const-string/jumbo v11, "blob-cache"

    const-string/jumbo v12, "cannot read blob data"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    :cond_b
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 502
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 504
    :cond_c
    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v11, v6}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->checkSum([BII)I

    move-result v11

    if-eq v11, v9, :cond_e

    .line 505
    sget-boolean v11, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v11, :cond_d

    const-string/jumbo v11, "blob-cache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "blob checksum does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 513
    :cond_d
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 506
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 513
    :cond_e
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 508
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 509
    .end local v1    # "blob":[B
    .end local v2    # "blobKey":J
    .end local v4    # "blobOffset":I
    .end local v6    # "length":I
    .end local v9    # "sum":I
    :catch_0
    move-exception v10

    .line 510
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v11, "blob-cache"

    const-string/jumbo v12, "getBlob failed."

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 513
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 511
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 512
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 513
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 514
    throw v11
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .param p1, "key"    # J
    .param p3, "data"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 378
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mBlobHeader:[B

    .line 379
    .local v0, "header":[B
    invoke-virtual {p0, p3}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->checkSum([B)I

    move-result v1

    .line 380
    .local v1, "sum":I
    invoke-static {v0, v4, p1, p2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeLong([BIJ)V

    .line 381
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 382
    const/16 v2, 0xc

    iget v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 383
    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 384
    iget-object v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 385
    iget-object v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 387
    iget-object v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 388
    iget-object v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 389
    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    .line 390
    iget-object v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 391
    return-void
.end method

.method private loadIndex()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 175
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 176
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    iget-object v6, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    .line 179
    .local v6, "buf":[B
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 180
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v10

    .line 270
    .end local v6    # "buf":[B
    :goto_0
    return v0

    .line 184
    .restart local v6    # "buf":[B
    :cond_1
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_3

    .line 185
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v10

    .line 186
    goto :goto_0

    .line 189
    :cond_3
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_5

    .line 190
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v10

    .line 191
    goto :goto_0

    .line 194
    :cond_5
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    .line 195
    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    .line 196
    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    .line 197
    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    .line 198
    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    .line 200
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_6

    .line 201
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "max exntries: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "max bytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "active entries: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "active bytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_6
    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v9

    .line 208
    .local v9, "sum":I
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_8

    .line 209
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v10

    .line 210
    goto/16 :goto_0

    .line 214
    :cond_8
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_a

    .line 215
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v0, v10

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_a
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_c

    .line 219
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v0, v10

    .line 220
    goto/16 :goto_0

    .line 222
    :cond_c
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_e

    .line 223
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v0, v10

    .line 224
    goto/16 :goto_0

    .line 226
    :cond_e
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_11

    .line 227
    :cond_f
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v0, v10

    .line 228
    goto/16 :goto_0

    .line 230
    :cond_11
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_12

    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_14

    .line 231
    :cond_12
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v0, v10

    .line 232
    goto/16 :goto_0

    .line 234
    :cond_14
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 235
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move v0, v10

    .line 236
    goto/16 :goto_0

    .line 240
    :cond_16
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 241
    .local v8, "magic":[B
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_18

    .line 242
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move v0, v10

    .line 243
    goto/16 :goto_0

    .line 245
    :cond_18
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_1a

    .line 246
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move v0, v10

    .line 247
    goto/16 :goto_0

    .line 249
    :cond_1a
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_1c

    .line 250
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move v0, v10

    .line 251
    goto/16 :goto_0

    .line 253
    :cond_1c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_1e

    .line 254
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move v0, v10

    .line 255
    goto/16 :goto_0

    .line 259
    :cond_1e
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 260
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 261
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 263
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->setActiveVariables()V

    .line 264
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_1f

    .line 265
    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "loadIndex OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1f
    move v0, v11

    .line 267
    goto/16 :goto_0

    .line 268
    .end local v6    # "buf":[B
    .end local v8    # "magic":[B
    .end local v9    # "sum":I
    :catch_0
    move-exception v7

    .line 269
    .local v7, "ex":Ljava/io/IOException;
    const-string/jumbo v0, "blob-cache"

    const-string/jumbo v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 270
    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 9
    .param p1, "key"    # J
    .param p3, "hashStart"    # I

    .prologue
    const/4 v6, 0x0

    .line 528
    iget v7, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    int-to-long v7, v7

    rem-long v7, p1, v7

    long-to-int v4, v7

    .line 529
    .local v4, "slot":I
    if-gez v4, :cond_0

    iget v7, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v7

    .line 530
    :cond_0
    move v5, v4

    .line 532
    .local v5, "slotBegin":I
    :cond_1
    :goto_0
    mul-int/lit8 v7, v4, 0xc

    add-int v3, p3, v7

    .line 533
    .local v3, "offset":I
    iget-object v7, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 534
    .local v0, "candidateKey":J
    iget-object v7, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 535
    .local v2, "candidateOffset":I
    if-nez v2, :cond_2

    .line 536
    iput v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mSlotOffset:I

    .line 541
    :goto_1
    return v6

    .line 538
    :cond_2
    cmp-long v7, v0, p1

    if-nez v7, :cond_3

    .line 539
    iput v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mSlotOffset:I

    .line 540
    iput v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mFileOffset:I

    .line 541
    const/4 v6, 0x1

    goto :goto_1

    .line 543
    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    if-lt v4, v7, :cond_4

    .line 544
    const/4 v4, 0x0

    .line 546
    :cond_4
    if-ne v4, v5, :cond_1

    .line 547
    const-string/jumbo v7, "blob-cache"

    const-string/jumbo v8, "corrupted index: clear the slot."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v7, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v4, 0xc

    add-int/2addr v8, p3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 622
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 623
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 622
    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 627
    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v1, v3

    .line 628
    .local v1, "result":J
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 631
    return-wide v1

    .line 629
    :cond_0
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 628
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private resetCache(II)V
    .locals 9
    .param p1, "maxEntries"    # I
    .param p2, "maxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v7, 0x4

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 291
    sget-boolean v1, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v1, "blob-cache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resetCache. maxEntries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 295
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 296
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 297
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    .line 298
    .local v0, "buf":[B
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 299
    invoke-static {v0, v7, p1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 300
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 301
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 302
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 303
    const/16 v1, 0x14

    invoke-static {v0, v1, v7}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 304
    const/16 v1, 0x18

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 305
    invoke-virtual {p0, v0, v4, v8}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 306
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 310
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 311
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 312
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 313
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 314
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 315
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 316
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 317
    return-void
.end method

.method private setActiveVariables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 275
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 276
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 277
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 278
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 280
    iput v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveHashStart:I

    .line 281
    iput v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mInactiveHashStart:I

    .line 283
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 284
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mInactiveHashStart:I

    .line 288
    :goto_2
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 286
    :cond_2
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 338
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 340
    return-void
.end method

.method static writeInt([BII)V
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 635
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 639
    return-void

    .line 636
    :cond_0
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 637
    shr-int/lit8 p2, p2, 0x8

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static writeLong([BIJ)V
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 646
    return-void

    .line 643
    :cond_0
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 644
    shr-long/2addr p2, v4

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkSum([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 601
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 602
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 603
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "nbytes"    # I

    .prologue
    .line 607
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 608
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 609
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close(Z)V
    .locals 3
    .param p1, "save"    # Z

    .prologue
    .line 151
    sget-boolean v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "blob-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "close. save: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->syncAll()V

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->closeAll()V

    .line 158
    return-void
.end method

.method public insert(J[B)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->flipRegion()V

    .line 363
    :cond_2
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    .line 367
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 370
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->insertInternal(J[BI)V

    .line 371
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->updateIndexHeader()V

    .line 372
    return-void
.end method

.method public lookup(Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;)Z
    .locals 7
    .param p1, "req"    # Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-wide v3, p1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v2

    .line 435
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mSlotOffset:I

    .line 438
    .local v0, "insertOffset":I
    iget-wide v3, p1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    iget-object v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    iget v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->length:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxBytes:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mMaxEntries:I

    if-ge v3, v4, :cond_0

    .line 446
    iput v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mSlotOffset:I

    .line 448
    :try_start_0
    iget-wide v3, p1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->key:J

    iget-object v5, p1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->buffer:[B

    iget v6, p1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->insertInternal(J[BI)V

    .line 449
    iget v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    .line 450
    iget-object v3, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexHeader:[B

    const/16 v4, 0x10

    iget v5, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mActiveEntries:I

    invoke-static {v3, v4, v5}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->writeInt([BII)V

    .line 451
    invoke-direct {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "blob-cache"

    const-string/jumbo v4, "cannot copy over"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 2
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 405
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mLookupRequest:Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;

    iput-wide p1, v1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->key:J

    .line 406
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mLookupRequest:Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;

    iput-object v0, v1, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->buffer:[B

    .line 407
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mLookupRequest:Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->lookup(Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mLookupRequest:Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/aviary/android/feather/library/content/cache/BlobCache$LookupRequest;->buffer:[B

    .line 410
    :cond_0
    return-object v0
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 563
    sget-boolean v1, Lcom/aviary/android/feather/library/content/cache/BlobCache;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 564
    const-string/jumbo v1, "blob-cache"

    const-string/jumbo v2, "syncAll"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->syncIndex()V

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_1
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "blob-cache"

    const-string/jumbo v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 574
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 575
    .restart local v0    # "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "blob-cache"

    const-string/jumbo v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/content/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "blob-cache"

    const-string/jumbo v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
