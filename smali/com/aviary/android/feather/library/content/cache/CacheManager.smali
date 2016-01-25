.class public Lcom/aviary/android/feather/library/content/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final LOG_ENABLED:Z

.field private static mMaxCacheAge:[J

.field private static sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;",
            "Lcom/aviary/android/feather/library/content/cache/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldCheckDone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/aviary/android/feather/library/content/cache/CacheManager;->LOG_ENABLED:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sCacheMap:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sOldCheckDone:Ljava/util/HashMap;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aviary/android/feather/library/content/cache/CacheManager;->DEBUG:Z

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [J

    sput-object v0, Lcom/aviary/android/feather/library/content/cache/CacheManager;->mMaxCacheAge:[J

    return-void
.end method

.method public static close(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;
    .param p2, "save"    # Z

    .prologue
    .line 76
    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 77
    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;

    .line 79
    .local v0, "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->close(Z)V

    .line 76
    .end local v0    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    :cond_0
    monitor-exit v2

    .line 84
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCache(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;JIII)Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;
    .param p2, "maxCacheAge"    # J
    .param p4, "maxEntries"    # I
    .param p5, "maxBytes"    # I
    .param p6, "version"    # I

    .prologue
    .line 46
    sget-object v9, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 47
    :try_start_0
    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sOldCheckDone:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 48
    .local v7, "checked":Ljava/lang/Boolean;
    if-nez v7, :cond_1

    .line 49
    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->mMaxCacheAge:[J

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->ordinal()I

    move-result v3

    aput-wide p2, v2, v3

    .line 50
    sget-boolean v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 51
    const-string/jumbo v2, "cache-manager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "max age for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;)V

    .line 54
    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sOldCheckDone:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    sget-boolean v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 58
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->removeCacheFiles(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;)V

    .line 61
    :cond_2
    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aviary/android/feather/library/content/cache/BlobCache;

    .line 62
    .local v6, "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    if-nez v6, :cond_3

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "feather-cache-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 65
    .local v1, "path":Ljava/lang/String;
    :try_start_1
    new-instance v0, Lcom/aviary/android/feather/library/content/cache/BlobCache;

    const/4 v4, 0x0

    move v2, p4

    move v3, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/library/content/cache/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v6    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .local v0, "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    :try_start_2
    sget-object v2, Lcom/aviary/android/feather/library/content/cache/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    :try_start_3
    monitor-exit v9

    return-object v0

    .line 67
    .end local v0    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v6    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    :catch_0
    move-exception v8

    move-object v0, v6

    .line 68
    .end local v6    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .restart local v0    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .local v8, "e":Ljava/io/IOException;
    :goto_1
    const-string/jumbo v2, "cache-manager"

    const-string/jumbo v3, "Cannot instantiate cache!"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    .end local v0    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .end local v1    # "path":Ljava/lang/String;
    .end local v7    # "checked":Ljava/lang/Boolean;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 67
    .restart local v0    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v7    # "checked":Ljava/lang/Boolean;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .end local v1    # "path":Ljava/lang/String;
    .restart local v6    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    :cond_3
    move-object v0, v6

    .end local v6    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    .restart local v0    # "cache":Lcom/aviary/android/feather/library/content/cache/BlobCache;
    goto :goto_0
.end method

.method public static getRootPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeCacheFiles(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;

    .prologue
    .line 119
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "feather-cache-up-to-date"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    invoke-static {p0}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "feather-cache-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/library/content/cache/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static removeOldFilesIfNecessary(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;

    .prologue
    .line 96
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 97
    .local v6, "pref":Landroid/content/SharedPreferences;
    const-wide/16 v4, 0x0

    .line 99
    .local v4, "n":J
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "feather-cache-up-to-date"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 102
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, "current":J
    sub-long v2, v0, v4

    .line 106
    .local v2, "diff":J
    sget-boolean v7, Lcom/aviary/android/feather/library/content/cache/CacheManager;->LOG_ENABLED:Z

    if-eqz v7, :cond_0

    .line 107
    const-string/jumbo v7, "cache-manager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "time difference: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/aviary/android/feather/library/content/cache/CacheManager;->mMaxCacheAge:[J

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->ordinal()I

    move-result v10

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    sget-object v7, Lcom/aviary/android/feather/library/content/cache/CacheManager;->mMaxCacheAge:[J

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;->ordinal()I

    move-result v8

    aget-wide v7, v7, v8

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 111
    sget-boolean v7, Lcom/aviary/android/feather/library/content/cache/CacheManager;->LOG_ENABLED:Z

    if-eqz v7, :cond_1

    .line 112
    const-string/jumbo v7, "cache-manager"

    const-string/jumbo v8, "deleting image cache files..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    invoke-static {p0, p1}, Lcom/aviary/android/feather/library/content/cache/CacheManager;->removeCacheFiles(Landroid/content/Context;Lcom/aviary/android/feather/library/content/cache/CacheManager$Type;)V

    .line 116
    :cond_2
    return-void

    .line 100
    .end local v0    # "current":J
    .end local v2    # "diff":J
    :catch_0
    move-exception v7

    goto :goto_0
.end method
