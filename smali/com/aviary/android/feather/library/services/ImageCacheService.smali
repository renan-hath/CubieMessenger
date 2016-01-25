.class public Lcom/aviary/android/feather/library/services/ImageCacheService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;,
        Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z

.field private static final mCacheLock:Ljava/lang/Object;


# instance fields
.field private mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 7
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 41
    invoke-interface {p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->Image:Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;

    const-wide/32 v2, 0x19bfcc00

    const/16 v4, 0xc8

    const/high16 v5, 0x3200000

    const/4 v6, 0x3

    invoke-static/range {v0 .. v6}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->getCache(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;JIII)Lcom/aviary/android/feather/library/content/cache/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    .line 42
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z

    return v0
.end method

.method static isSameKey([B[B)Z
    .locals 5
    .param p0, "key"    # [B
    .param p1, "buffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 169
    array-length v1, p0

    .line 170
    .local v1, "n":I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v2

    .line 173
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 178
    const/4 v2, 0x1

    goto :goto_0

    .line 174
    :cond_2
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static makeKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/headless/utils/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .locals 3
    .param p1, "save"    # Z

    .prologue
    .line 51
    sget-object v1, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/ImageCacheService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/ImageCacheService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->Image:Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;

    invoke-static {v0, v2, p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->close(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;Z)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    .line 51
    monitor-exit v1

    .line 57
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/services/ImageCacheService;->close(Z)V

    .line 184
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
    .line 188
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/ImageCacheService;->dispose()V

    .line 189
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    return-void
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 63
    const-string/jumbo v0, "0"

    invoke-virtual {p0, p1, v0, p2}, Lcom/aviary/android/feather/library/services/ImageCacheService;->getBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/library/services/ImageCacheService;->getImageData(Ljava/lang/String;Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;

    move-result-object v0

    .line 98
    .local v0, "data":Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;
    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    iget-object v2, v0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mData:[B

    iget v3, v0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mOffset:I

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mData:[B

    array-length v4, v4

    iget v5, v0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mOffset:I

    sub-int/2addr v4, v5

    invoke-static {v2, v3, v4, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getImageData(Ljava/lang/String;Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    if-nez v6, :cond_1

    .line 117
    sget-boolean v6, Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z

    if-eqz v6, :cond_0

    .line 118
    const-string/jumbo v6, "image-cache-service"

    const-string/jumbo v7, "getImageData. cache is not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-object v5

    .line 123
    :cond_1
    invoke-static {p1, p2}, Lcom/aviary/android/feather/library/services/ImageCacheService;->makeKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 124
    .local v2, "key":[B
    invoke-static {v2}, Lcom/aviary/android/feather/headless/utils/StringUtils;->crc64Long([B)J

    move-result-wide v0

    .line 126
    .local v0, "cacheKey":J
    const/4 v4, 0x0

    .line 127
    .local v4, "value":[B
    :try_start_0
    sget-object v7, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    invoke-virtual {v6, v0, v1}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->lookup(J)[B

    move-result-object v4

    .line 127
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v4, :cond_0

    .line 131
    :try_start_2
    invoke-static {v2, v4}, Lcom/aviary/android/feather/library/services/ImageCacheService;->isSameKey([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    array-length v3, v2

    .line 133
    .local v3, "offset":I
    new-instance v6, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;

    invoke-direct {v6, v4, v3}, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 127
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

    .line 135
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    const-string/jumbo v0, "0"

    invoke-virtual {p0, p1, v0, p2}, Lcom/aviary/android/feather/library/services/ImageCacheService;->putBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public putBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 73
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-static {p3, v1, v2}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    .line 74
    .local v0, "array":[B
    invoke-virtual {p0, p1, p2, v0}, Lcom/aviary/android/feather/library/services/ImageCacheService;->putImageData(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v1, 0x1

    .line 78
    .end local v0    # "array":[B
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v1

    .line 78
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putImageData(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 141
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    if-nez v5, :cond_1

    .line 142
    sget-boolean v5, Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z

    if-eqz v5, :cond_0

    .line 143
    const-string/jumbo v5, "image-cache-service"

    const-string/jumbo v6, "putImageData. cache is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p1, p2}, Lcom/aviary/android/feather/library/services/ImageCacheService;->makeKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 149
    .local v4, "key":[B
    invoke-static {v4}, Lcom/aviary/android/feather/headless/utils/StringUtils;->crc64Long([B)J

    move-result-wide v1

    .line 151
    .local v1, "cacheKey":J
    array-length v5, v4

    array-length v6, p3

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 152
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    sget-object v6, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 156
    :try_start_0
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/ImageCacheService;->mCache:Lcom/aviary/android/feather/library/content/cache/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v5, v1, v2, v7}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
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

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public requestRemoteBitmap(Ljava/lang/String;)Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 216
    sget-boolean v0, Lcom/aviary/android/feather/library/services/ImageCacheService;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "image-cache-service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestRemoteBitmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;

    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/library/services/ImageCacheService$SimpleCachedRemoteBitmap;-><init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Ljava/lang/String;)V

    return-object v0
.end method
