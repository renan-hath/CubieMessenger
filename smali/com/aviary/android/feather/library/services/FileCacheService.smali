.class public Lcom/aviary/android/feather/library/services/FileCacheService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "FileCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;
    }
.end annotation


# static fields
.field private static final mCacheLock:Ljava/lang/Object;


# instance fields
.field private mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 7
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 35
    invoke-interface {p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->File:Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;

    const-wide/32 v2, 0xf731400

    const/16 v4, 0x64

    const/high16 v5, 0xa00000

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->getCache(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;JIII)Lcom/aviary/android/feather/library/content/cache/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    .line 36
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 3
    .param p1, "save"    # Z

    .prologue
    .line 45
    sget-object v1, Lcom/aviary/android/feather/library/services/FileCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/FileCacheService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/FileCacheService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->File:Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;

    invoke-static {v0, v2, p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->close(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;Z)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    .line 45
    monitor-exit v1

    .line 51
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createConnection(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;

    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/library/services/FileCacheService$SimpleCachedHttpUrlConnection;-><init>(Lcom/aviary/android/feather/library/services/FileCacheService;Ljava/lang/String;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/services/FileCacheService;->close(Z)V

    .line 143
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/FileCacheService;->dispose()V

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 149
    return-void
.end method

.method public readFileData(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    if-nez v6, :cond_1

    .line 63
    const-string/jumbo v6, "file-cache-service"

    const-string/jumbo v7, "readFileData. cache is not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return-object v5

    .line 67
    :cond_1
    const-string/jumbo v6, "0"

    invoke-static {p1, v6}, Lcom/aviary/android/feather/library/services/ImageCacheService;->makeKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 68
    .local v2, "key":[B
    invoke-static {v2}, Lcom/aviary/android/feather/headless/utils/StringUtils;->crc64Long([B)J

    move-result-wide v0

    .line 70
    .local v0, "cacheKey":J
    const/4 v4, 0x0

    .line 71
    .local v4, "value":[B
    :try_start_0
    sget-object v7, Lcom/aviary/android/feather/library/services/FileCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    invoke-virtual {v6, v0, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->lookup(J)[B

    move-result-object v4

    .line 71
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-eqz v4, :cond_0

    .line 75
    :try_start_2
    invoke-static {v2, v4}, Lcom/aviary/android/feather/library/services/ImageCacheService;->isSameKey([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    array-length v3, v2

    .line 77
    .local v3, "offset":I
    new-instance v6, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;

    invoke-direct {v6, v4, v3}, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 71
    .end local v3    # "offset":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public readStream(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/FileCacheService;->readFileData(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;

    move-result-object v0

    .line 85
    .local v0, "data":Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->data()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->offset()I

    move-result v3

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->size()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    if-nez v5, :cond_0

    .line 101
    const-string/jumbo v5, "file-cache-service"

    const-string/jumbo v6, "put. cache is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string/jumbo v5, "0"

    invoke-static {p1, v5}, Lcom/aviary/android/feather/library/services/ImageCacheService;->makeKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 106
    .local v4, "key":[B
    invoke-static {v4}, Lcom/aviary/android/feather/headless/utils/StringUtils;->crc64Long([B)J

    move-result-wide v1

    .line 107
    .local v1, "cacheKey":J
    array-length v5, v4

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-static {p2, v0}, Lcom/aviary/android/feather/headless/utils/IOUtils;->copyFile(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V

    .line 110
    sget-object v6, Lcom/aviary/android/feather/library/services/FileCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 112
    :try_start_0
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/FileCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v5, v1, v2, v7}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_1
    :try_start_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
