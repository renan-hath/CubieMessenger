.class public Lcom/aviary/android/feather/utils/SimpleBitmapCache;
.super Ljava/lang/Object;
.source "SimpleBitmapCache.java"


# static fields
.field private static final sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mPurger:Ljava/lang/Runnable;

.field private final purgeHandler:Landroid/os/Handler;

.field private final sHardBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->purgeHandler:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/aviary/android/feather/utils/SimpleBitmapCache$1;

    const/4 v1, 0x2

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/aviary/android/feather/utils/SimpleBitmapCache$1;-><init>(Lcom/aviary/android/feather/utils/SimpleBitmapCache;IFZ)V

    iput-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    .line 80
    new-instance v0, Lcom/aviary/android/feather/utils/SimpleBitmapCache$2;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/utils/SimpleBitmapCache$2;-><init>(Lcom/aviary/android/feather/utils/SimpleBitmapCache;)V

    iput-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->mPurger:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v1

    .line 66
    :cond_0
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    sget-object v0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v3, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 40
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 41
    iget-object v2, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    monitor-exit v3

    move-object v2, v0

    .line 57
    :goto_0
    return-object v2

    .line 45
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v2, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 48
    .local v1, "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 51
    goto :goto_0

    .line 45
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 53
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    sget-object v2, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public resetPurgeTimer()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->mPurger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    iget-object v0, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->mPurger:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method
