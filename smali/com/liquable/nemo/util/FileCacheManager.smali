.class public Lcom/liquable/nemo/util/FileCacheManager;
.super Ljava/lang/Object;
.source "FileCacheManager.java"


# static fields
.field private static final INTERVAL_TRIM_TEMP:I = 0xa4cb80

.field private static final MAX_SIZE_OF_TEMP_DIR:J = 0x500000L

.field public static final SHARED_TEMP_DIR:Ljava/lang/String; = "temp"

.field private static final fileFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private static final fileLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

.field private static final logger:Lcom/liquable/nemo/util/Logger;

.field private static final maxNumberOfFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/android/service/MediaType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x1f4

    .line 156
    const-class v0, Lcom/liquable/nemo/util/FileCacheManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/FileCacheManager;->logger:Lcom/liquable/nemo/util/Logger;

    .line 158
    invoke-static {}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->getLogger()Lcom/liquable/nemo/util/RemoteAccessLog;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/FileCacheManager;->fileLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    .line 165
    sget-object v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->VISIBLE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    sput-object v0, Lcom/liquable/nemo/util/FileCacheManager;->fileFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/FileCacheManager;->maxNumberOfFiles:Ljava/util/Map;

    .line 172
    sget-object v0, Lcom/liquable/nemo/util/FileCacheManager;->maxNumberOfFiles:Ljava/util/Map;

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->VOICE:Lcom/liquable/nemo/android/service/MediaType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/liquable/nemo/util/FileCacheManager;->maxNumberOfFiles:Ljava/util/Map;

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->PICTURE:Lcom/liquable/nemo/android/service/MediaType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/liquable/nemo/util/FileCacheManager;->maxNumberOfFiles:Ljava/util/Map;

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->PAINT:Lcom/liquable/nemo/android/service/MediaType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/liquable/nemo/util/FileCacheManager;->maxNumberOfFiles:Ljava/util/Map;

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->VIDEO:Lcom/liquable/nemo/android/service/MediaType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/liquable/nemo/util/FileCacheManager;->maxNumberOfFiles:Ljava/util/Map;

    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->MAP:Lcom/liquable/nemo/android/service/MediaType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanDir(Ljava/io/File;J)V
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "bytesNeedToDelete"    # J

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .local v0, "bytesDeleted":J
    sget-object v4, Lcom/liquable/nemo/util/FileCacheManager;->fileFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 34
    invoke-static {}, Lcom/liquable/nemo/util/FileCacheManager;->getDirFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v5

    .line 32
    invoke-static {p0, v4, v5}, Lorg/apache/commons/io/FileUtils;->iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/util/FileCacheManager;->sortedByLastModified(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v3

    .line 36
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 37
    .local v2, "file":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 38
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 40
    cmp-long v4, v0, p1

    if-ltz v4, :cond_0

    .line 44
    .end local v2    # "file":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method

.method private static getDirFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/io/filefilter/IOFileFilter;>;"
    new-instance v2, Lorg/apache/commons/io/filefilter/NameFileFilter;

    const-string/jumbo v3, "default"

    invoke-direct {v2, v3}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "uid":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Lorg/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    new-instance v2, Lorg/apache/commons/io/filefilter/NotFileFilter;

    new-instance v3, Lorg/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v3, v0}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v2
.end method

.method private static getDirSize(Ljava/io/File;)J
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 60
    const-wide/16 v2, 0x0

    .line 62
    .local v2, "size":J
    sget-object v4, Lcom/liquable/nemo/util/FileCacheManager;->fileFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {}, Lcom/liquable/nemo/util/FileCacheManager;->getDirFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lorg/apache/commons/io/FileUtils;->iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 65
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 66
    goto :goto_0

    .line 67
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method public static needToTrimTempDir()Z
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getLastTrimTempCacheTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static purgeTempDir()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v1

    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 76
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 77
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->saveLastTrimTempCacheTime()V

    .line 78
    return-void
.end method

.method public static removeMediaFiles(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "someDeleted":Z
    sget-object v2, Lcom/liquable/nemo/util/FileCacheManager;->maxNumberOfFiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/android/service/MediaType;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/service/MediaType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/liquable/nemo/util/FileCacheManager;->removeMediaFiles(Landroid/content/Context;Lcom/liquable/nemo/android/service/MediaType;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 84
    goto :goto_0

    .line 85
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/liquable/nemo/android/service/MediaType;Ljava/lang/Integer;>;"
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastScanGallery()V

    .line 88
    :cond_1
    return-void
.end method

.method public static removeMediaFiles(Landroid/content/Context;Lcom/liquable/nemo/android/service/MediaType;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/liquable/nemo/android/service/MediaType;
    .param p2, "trimToNumber"    # I

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v6

    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/MediaType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 94
    .local v4, "folder":Ljava/io/File;
    invoke-static {v4}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v5

    .line 97
    :cond_1
    sget-object v6, Lcom/liquable/nemo/util/FileCacheManager;->fileFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lorg/apache/commons/io/FileUtils;->iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;

    move-result-object v6

    invoke-static {v6}, Lcom/liquable/nemo/util/FileCacheManager;->sortedByLastModified(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v3

    .line 101
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 102
    .local v0, "before":I
    sget-object v6, Lcom/liquable/nemo/util/FileCacheManager;->fileLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " before:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FileCacheManager.removeMediaFiles"

    invoke-interface {v6, v7, v8}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, p2, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-interface {v3, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "deleted":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 109
    .local v2, "file":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    goto :goto_1

    .line 112
    .end local v2    # "file":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    :cond_2
    sget-object v5, Lcom/liquable/nemo/util/FileCacheManager;->fileLogger:Lcom/liquable/nemo/util/RemoteAccessLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " after:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FileCacheManager.removeMediaFiles"

    invoke-interface {v5, v6, v7}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static sortedByLastModified(Ljava/util/Iterator;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 120
    .local v0, "file":Ljava/io/File;
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Lcom/liquable/nemo/util/FileCacheManager$1;

    invoke-direct {v2}, Lcom/liquable/nemo/util/FileCacheManager$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    return-object v1
.end method

.method private static trim(Ljava/lang/String;J)V
    .locals 11
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "maxSize"    # J

    .prologue
    .line 135
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 136
    .local v4, "dir":Ljava/io/File;
    invoke-static {v4}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {v4}, Lcom/liquable/nemo/util/FileCacheManager;->getDirSize(Ljava/io/File;)J

    move-result-wide v5

    .line 142
    .local v5, "size":J
    sget-object v7, Lcom/liquable/nemo/util/FileCacheManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "before :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 143
    cmp-long v7, v5, p1

    if-lez v7, :cond_0

    .line 144
    long-to-double v7, p1

    const-wide v9, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v7, v9

    double-to-long v2, v7

    .line 145
    .local v2, "deleteBufferSize":J
    sub-long v7, v5, p1

    add-long v0, v7, v2

    .line 146
    .local v0, "bytesNeedToDelete":J
    invoke-static {v4, v0, v1}, Lcom/liquable/nemo/util/FileCacheManager;->cleanDir(Ljava/io/File;J)V

    .line 147
    sget-object v7, Lcom/liquable/nemo/util/FileCacheManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "after :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/liquable/nemo/util/FileCacheManager;->getDirSize(Ljava/io/File;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trimTempDir()V
    .locals 3

    .prologue
    .line 152
    const-string/jumbo v0, "temp"

    const-wide/32 v1, 0x500000

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/FileCacheManager;->trim(Ljava/lang/String;J)V

    .line 153
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->saveLastTrimTempCacheTime()V

    .line 154
    return-void
.end method
