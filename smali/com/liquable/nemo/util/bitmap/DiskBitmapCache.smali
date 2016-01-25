.class public Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;
.super Ljava/lang/Object;
.source "DiskBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$Utils;,
        Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0xa00000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x1400

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DiskBitmapCache"

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final imageLoder:Lcom/liquable/nemo/util/ImageLoader;

.field private mCacheParams:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const-class v0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "cacheParams"    # Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;
    .param p2, "imageLoder"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheStarting:Z

    .line 297
    iput-object p2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->imageLoder:Lcom/liquable/nemo/util/ImageLoader;

    .line 298
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->init(Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;)V

    .line 299
    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v0, p0, v3

    .line 140
    .local v0, "b":B
    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 142
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "b":B
    .end local v1    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBitmapSize(Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 3
    .param p0, "value"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$Utils;->hasHoneycombMR1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 163
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string/jumbo v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 180
    .local v1, "mounted":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    :cond_0
    invoke-static {p0}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "cacheDir":Ljava/io/File;
    sget-object v3, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDiskCacheDir - getExternalCacheDir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 190
    if-nez v0, :cond_2

    .line 191
    sget-object v3, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "could not obtain disk cache dir"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 194
    .end local v0    # "cacheDir":Ljava/io/File;
    :goto_0
    return-object v2

    .line 186
    :cond_1
    sget-object v3, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "getDiskCacheDir - no external storage found, abort"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-static {}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 5
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 224
    invoke-static {}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$Utils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    .line 228
    :goto_0
    return-wide v1

    .line 227
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    goto :goto_0
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 239
    .local v2, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 240
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    .end local v2    # "mDigest":Ljava/security/MessageDigest;
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 241
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cacheKey":Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;)V
    .locals 1
    .param p1, "cacheParams"    # Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mCacheParams:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    .line 491
    iget-boolean v0, p1, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->initDiskCache()V

    .line 495
    :cond_0
    return-void
.end method

.method public static isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBitmapToCache(Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "diskCacheStrategy"    # Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 310
    if-eqz p1, :cond_2

    move v5, v6

    :goto_0
    const-string/jumbo v8, "not allow null data while add bitmap"

    invoke-static {v5, v8}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 311
    if-eqz p2, :cond_3

    :goto_1
    const-string/jumbo v5, "not allow null data while add bitmap"

    invoke-static {v6, v5}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 313
    iget-object v6, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 315
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    if-eqz v5, :cond_1

    .line 316
    invoke-interface {p1}, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->getDiskKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 317
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 319
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->get(Ljava/lang/String;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;

    move-result-object v4

    .line 320
    .local v4, "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    if-nez v4, :cond_4

    .line 321
    iget-object v5, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->edit(Ljava/lang/String;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;

    move-result-object v1

    .line 322
    .local v1, "editor":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    if-eqz v1, :cond_0

    .line 323
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 325
    invoke-interface {p1, p2, v3}, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->compress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z

    .line 327
    invoke-virtual {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;->commit()V

    .line 328
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .end local v1    # "editor":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Editor;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 340
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 345
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :cond_1
    :goto_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 346
    return-void

    :cond_2
    move v5, v7

    .line 310
    goto :goto_0

    :cond_3
    move v6, v7

    .line 311
    goto :goto_1

    .line 331
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :cond_4
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 333
    .end local v4    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v5, "DiskBitmapCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    if-eqz v3, :cond_1

    .line 340
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 342
    :catch_1
    move-exception v5

    goto :goto_3

    .line 335
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v5, "DiskBitmapCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 339
    if-eqz v3, :cond_1

    .line 340
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 342
    :catch_3
    move-exception v5

    goto :goto_3

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 339
    if-eqz v3, :cond_5

    .line 340
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 342
    :cond_5
    :goto_4
    :try_start_a
    throw v5

    .line 345
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v5

    .line 342
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v4    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :catch_5
    move-exception v7

    goto :goto_4
.end method

.method public clearCache()V
    .locals 5

    .prologue
    .line 353
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheStarting:Z

    .line 355
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 357
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    .line 365
    invoke-virtual {p0}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->initDiskCache()V

    .line 367
    :cond_0
    monitor-exit v2

    .line 368
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "DiskBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 5

    .prologue
    .line 375
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 378
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->close()V

    .line 380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 390
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "DiskBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 397
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 400
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 409
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "DiskBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBitmapFromDiskCache(Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "diskCacheStrategy"    # Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 419
    if-eqz p1, :cond_0

    :goto_0
    const-string/jumbo v11, "not allow null data while get bitmap"

    invoke-static {v10, v11}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 420
    invoke-interface {p1}, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->getDiskKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 423
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 424
    :goto_1
    :try_start_0
    iget-boolean v10, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_1

    .line 426
    :try_start_1
    iget-object v10, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 427
    :catch_0
    move-exception v10

    goto :goto_1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    move v10, v11

    .line 419
    goto :goto_0

    .line 429
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v10, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_3

    .line 430
    const/4 v5, 0x0

    .line 432
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_3
    iget-object v10, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v10, v6}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->get(Ljava/lang/String;)Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;

    move-result-object v9

    .line 433
    .local v9, "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    if-eqz v9, :cond_2

    .line 437
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    .line 438
    if-eqz v5, :cond_2

    .line 439
    move-object v0, v5

    check-cast v0, Ljava/io/FileInputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 444
    .local v4, "fd":Ljava/io/FileDescriptor;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-ge v10, v12, :cond_4

    .line 445
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 470
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 471
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 476
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :cond_3
    :goto_3
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v1

    .line 447
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :cond_4
    :try_start_6
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 448
    .local v2, "boundOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 449
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4, v10, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 451
    iget-object v10, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->imageLoder:Lcom/liquable/nemo/util/ImageLoader;

    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v10, v12, v13}, Lcom/liquable/nemo/util/ImageLoader;->pollReusedBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 454
    .local v8, "reusedBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 456
    if-nez v8, :cond_5

    .line 457
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4, v10, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 459
    :cond_5
    const/4 v10, 0x1

    iput v10, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 460
    iput-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 461
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4, v10, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    goto :goto_2

    .line 466
    .end local v2    # "boundOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "reusedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :catch_1
    move-exception v3

    .line 467
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v10, "DiskBitmapCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getBitmapFromDiskCache - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 470
    if-eqz v5, :cond_3

    .line 471
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 473
    :catch_2
    move-exception v10

    goto :goto_3

    .line 469
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 470
    if-eqz v5, :cond_6

    .line 471
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 473
    :cond_6
    :goto_4
    :try_start_a
    throw v10

    .line 477
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v10

    .line 473
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :catch_3
    move-exception v10

    goto :goto_3

    .end local v9    # "snapshot":Lcom/liquable/nemo/util/bitmap/DiskLruCache$Snapshot;
    :catch_4
    move-exception v12

    goto :goto_4
.end method

.method public initDiskCache()V
    .locals 8

    .prologue
    .line 505
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 506
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mCacheParams:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    iget-object v0, v2, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 508
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mCacheParams:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    iget-boolean v2, v2, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 512
    :cond_1
    invoke-static {v0}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mCacheParams:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    iget v2, v2, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 514
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mCacheParams:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    iget v5, v5, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v5, v5

    invoke-static {v0, v2, v4, v5, v6}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    .end local v0    # "diskCacheDir":Ljava/io/File;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheStarting:Z

    .line 526
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 527
    monitor-exit v3

    .line 528
    return-void

    .line 518
    .restart local v0    # "diskCacheDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mCacheParams:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 520
    const-string/jumbo v2, "DiskBitmapCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public removeBitmap(Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;)Z
    .locals 6
    .param p1, "diskCacheStrategy"    # Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    .prologue
    const/4 v2, 0x0

    .line 538
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "not allow null data while remove bitmap"

    invoke-static {v1, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 541
    iget-object v3, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 544
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->mDiskLruCache:Lcom/liquable/nemo/util/bitmap/DiskLruCache;

    invoke-interface {p1}, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->getDiskKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/liquable/nemo/util/bitmap/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    .line 550
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 538
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "DiskBitmapCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeBitmap - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
