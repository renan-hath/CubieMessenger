.class public Lcom/aviary/android/feather/library/services/PluginService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "PluginService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;,
        Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;,
        Lcom/aviary/android/feather/library/services/PluginService$PluginException;,
        Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$aviary$android$feather$headless$moa$Moa$CPUArchAbi:[I

.field private static final CONTENT_BASE_URL:Ljava/lang/String;

.field public static final CONTENT_DEFAULT_URL:Ljava/lang/String;

.field public static final CONTENT_JSON_URL:Ljava/lang/String;


# instance fields
.field private mAllExternalPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/library/plugins/ExternalType;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableExternalPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;",
            ">;"
        }
    .end annotation
.end field

.field private mBorders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalPluginsLock:Ljava/lang/Object;

.field private mExternalUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalUpdateTime:J

.field private volatile mExternalUpdated:Z

.field private mFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginsLock:Ljava/lang/Object;

.field private mStickers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUpdated:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$aviary$android$feather$headless$moa$Moa$CPUArchAbi()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/aviary/android/feather/library/services/PluginService;->$SWITCH_TABLE$com$aviary$android$feather$headless$moa$Moa$CPUArchAbi:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->values()[Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_ARM5:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_ARM7:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_NONE:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_X86:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService;->$SWITCH_TABLE$com$aviary$android$feather$headless$moa$Moa$CPUArchAbi:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "http://assets.aviary.com.s3.amazonaws.com"

    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_BASE_URL:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_BASE_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_DEFAULT_URL:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_BASE_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/assets_android_v04"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_JSON_URL:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 2
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mPluginsLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalPluginsLock:Ljava/lang/Object;

    .line 186
    iput-boolean v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mUpdated:Z

    .line 188
    iput-boolean v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdated:Z

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    .line 220
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mFilters:Ljava/util/Map;

    .line 221
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mBorders:Ljava/util/Map;

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mStickers:Ljava/util/Map;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAllExternalPlugins:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method private checkLibraryVersion(Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;)I
    .locals 8
    .param p1, "pack"    # Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 821
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->getProclistVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->fromString(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;

    move-result-object v0

    .line 822
    .local v0, "internalVersion":Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;
    if-nez v0, :cond_0

    .line 823
    new-instance v0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;

    .end local v0    # "internalVersion":Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;
    invoke-direct {v0, v7, v6, v6}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;-><init>(III)V

    .line 825
    .restart local v0    # "internalVersion":Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "internal version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 827
    invoke-virtual {p1}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getProclistVersion()Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;

    move-result-object v1

    .line 829
    .local v1, "pluginVersion":Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;
    if-eqz v1, :cond_2

    .line 830
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "plugin version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 832
    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->supports(Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    const/4 v2, -0x1

    .line 838
    :goto_0
    return v2

    .line 835
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 838
    :cond_2
    const/4 v2, 0x5

    goto :goto_0
.end method

.method private dispatchExternalUpdate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 464
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    monitor-enter v5

    .line 465
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "dispatchExternalUpdate: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 466
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;>;"
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 468
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 464
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 478
    return-void

    .line 469
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;

    .line 470
    .local v0, "item":Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    .end local v0    # "item":Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;>;"
    .end local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 474
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;>;"
    .restart local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;

    .line 475
    .local v2, "listener":Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "dispatch update to listener..."

    aput-object v7, v6, v10

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 476
    invoke-interface {v2, p0}, Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;->onExternalUpdate(Lcom/aviary/android/feather/library/services/PluginService;)V

    goto :goto_1
.end method

.method private dispatchUpdate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "updateDelta"    # Landroid/os/Bundle;

    .prologue
    .line 447
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    monitor-enter v5

    .line 448
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;>;"
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 450
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 459
    return-void

    .line 451
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;

    .line 452
    .local v0, "item":Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v0    # "item":Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;>;"
    .end local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 456
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;>;"
    .restart local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;

    .line 457
    .local v2, "listener":Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;
    invoke-interface {v2, p0, p1}, Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;->onUpdate(Lcom/aviary/android/feather/library/services/PluginService;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private getAvailableByType(Ljava/util/ArrayList;I)[Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    .locals 4
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;",
            ">;I)[",
            "Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    return-object v2

    .line 384
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    .line 385
    .local v0, "current":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getPluginType()I

    move-result v2

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static getCDSContentUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 855
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->getCpuBuild()Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    move-result-object v0

    .line 856
    .local v0, "build":Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
    invoke-static {}, Lcom/aviary/android/feather/library/services/PluginService;->$SWITCH_TABLE$com$aviary$android$feather$headless$moa$Moa$CPUArchAbi()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 865
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_JSON_URL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".arm.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 858
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_JSON_URL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".arm7.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 861
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_JSON_URL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".x86.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getOriginalExternalPluginList()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 322
    new-instance v1, Lcom/aviary/android/feather/library/plugins/ExternalType;

    const-string/jumbo v2, "com.aviary.android.feather.plugins.filters.original"

    const-string/jumbo v3, "Original"

    const-wide/16 v4, 0x0

    .line 323
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x9

    const/16 v9, 0x9

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 322
    invoke-direct/range {v1 .. v11}, Lcom/aviary/android/feather/library/plugins/ExternalType;-><init>(Ljava/lang/String;Ljava/lang/String;JIZIIII)V

    .line 324
    .local v1, "originalFilters":Lcom/aviary/android/feather/library/plugins/ExternalType;
    const-string/jumbo v4, "original_filters_icon.png"

    invoke-virtual {v1, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setIconUrl(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v4, "Enjoy the awesome look and feel of the original Aviary effects with this pack of 12 classics."

    invoke-virtual {v1, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setDescription(Ljava/lang/String;)V

    .line 327
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setNumFilters(I)V

    .line 328
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "singe"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "vivid"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "sancarmen"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "purple"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "thresh"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "aqua"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "andy"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "edgewood"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 329
    const-string/jumbo v6, "joecool"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "softfocus"

    aput-object v6, v4, v5

    .line 328
    invoke-virtual {v1, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setItems([Ljava/lang/String;)V

    .line 331
    new-instance v15, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    invoke-direct {v15, v1}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;-><init>(Lcom/aviary/android/feather/library/plugins/ExternalType;)V

    .line 334
    .local v15, "defaultFilter":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    new-instance v2, Lcom/aviary/android/feather/library/plugins/ExternalType;

    const-string/jumbo v3, "com.aviary.android.feather.plugins.borders.free"

    const-string/jumbo v4, "Original"

    const-wide/16 v5, 0x0

    .line 335
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 334
    invoke-direct/range {v2 .. v12}, Lcom/aviary/android/feather/library/plugins/ExternalType;-><init>(Ljava/lang/String;Ljava/lang/String;JIZIIII)V

    .line 336
    .local v2, "originalBorders":Lcom/aviary/android/feather/library/plugins/ExternalType;
    const-string/jumbo v4, "free_borders_icon.png"

    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setIconUrl(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v4, "Get started with this free pack of beautiful, high resolution frames."

    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setDescription(Ljava/lang/String;)V

    .line 338
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setNumBorders(I)V

    .line 339
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "border1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "border2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "border3"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "border4"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "border5"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "border6"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "border7"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 340
    const-string/jumbo v6, "border8"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "border9"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "border11"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "border12"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "border13"

    aput-object v6, v4, v5

    .line 339
    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setItems([Ljava/lang/String;)V

    .line 342
    new-instance v14, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    invoke-direct {v14, v2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;-><init>(Lcom/aviary/android/feather/library/plugins/ExternalType;)V

    .line 345
    .local v14, "defaultBorder":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    new-instance v3, Lcom/aviary/android/feather/library/plugins/ExternalType;

    const-string/jumbo v4, "com.aviary.android.feather.plugins.stickers.free_stickers"

    const-string/jumbo v5, "Original"

    const-wide/16 v6, 0x0

    .line 346
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/4 v13, -0x1

    .line 345
    invoke-direct/range {v3 .. v13}, Lcom/aviary/android/feather/library/plugins/ExternalType;-><init>(Ljava/lang/String;Ljava/lang/String;JIZIIII)V

    .line 347
    .local v3, "originalSticker":Lcom/aviary/android/feather/library/plugins/ExternalType;
    const-string/jumbo v4, "default_stickers_icon.png"

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setIconUrl(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v4, "Get started with this fun and free pack of high resolution stickers."

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setDescription(Ljava/lang/String;)V

    .line 349
    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setNumStickers(I)V

    .line 350
    const/16 v4, 0x18

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "sombrero"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "helicopter"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "crown"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "fez"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "3d_glasses"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "hipster_glasses"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 351
    const-string/jumbo v6, "disguise"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "aviators"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "eyepatch"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "bowtie"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "tie"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "pipe"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "cigar"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "arrow"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "green_bubble"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "orange_bubble"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    .line 352
    const-string/jumbo v6, "blue_bubble"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "pink_bubble"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "star"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "heart"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string/jumbo v6, "red_arrow"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string/jumbo v6, "blue_arrow"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string/jumbo v6, "green_circle"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string/jumbo v6, "orange_square"

    aput-object v6, v4, v5

    .line 350
    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/library/plugins/ExternalType;->setItems([Ljava/lang/String;)V

    .line 354
    new-instance v16, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;-><init>(Lcom/aviary/android/feather/library/plugins/ExternalType;)V

    .line 356
    .local v16, "defaultSticker":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v1    # "originalFilters":Lcom/aviary/android/feather/library/plugins/ExternalType;
    .end local v2    # "originalBorders":Lcom/aviary/android/feather/library/plugins/ExternalType;
    .end local v3    # "originalSticker":Lcom/aviary/android/feather/library/plugins/ExternalType;
    .end local v14    # "defaultBorder":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    .end local v15    # "defaultFilter":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    .end local v16    # "defaultSticker":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    return-object v4
.end method

.method private handlePackage(Lcom/aviary/android/feather/library/plugins/ApplicationType;)V
    .locals 11
    .param p1, "info"    # Lcom/aviary/android/feather/library/plugins/ApplicationType;

    .prologue
    .line 561
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->isSticker()Z

    move-result v3

    .line 562
    .local v3, "is_sticker":Z
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->isFilter()Z

    move-result v2

    .line 563
    .local v2, "is_filter":Z
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->isTool()Z

    move-result v4

    .line 564
    .local v4, "is_tool":Z
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->isBorder()Z

    move-result v1

    .line 565
    .local v1, "is_border":Z
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "packagename":Ljava/lang/String;
    new-instance v0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    invoke-direct {v0, p1}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;-><init>(Lcom/aviary/android/feather/library/plugins/ApplicationType;)V

    .line 568
    .local v0, "information":Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "handlePackage: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 570
    if-eqz v3, :cond_0

    .line 571
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->mStickers:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    if-eqz v2, :cond_1

    .line 576
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->mFilters:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_1
    if-eqz v1, :cond_2

    .line 581
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->mBorders:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_2
    if-eqz v4, :cond_3

    .line 586
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_3
    return-void
.end method

.method private isValidExternalPlugin(Lcom/aviary/android/feather/library/plugins/ExternalType;J)Z
    .locals 11
    .param p1, "item"    # Lcom/aviary/android/feather/library/plugins/ExternalType;
    .param p2, "ctime"    # J

    .prologue
    .line 623
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Checking plugin: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 625
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->getVersion()I

    move-result v2

    .line 627
    .local v2, "moaVersion":I
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getMinMoaVersion()I

    move-result v1

    .line 628
    .local v1, "filtersVersionMin":I
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getMaxMoaVersion()I

    move-result v0

    .line 629
    .local v0, "filtersVersionMax":I
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getStickerVersion()I

    move-result v5

    .line 630
    .local v5, "stickersVersion":I
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getReleaseDate()J

    move-result-wide v3

    .line 632
    .local v3, "releaseDate":J
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "release date: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", now is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 634
    cmp-long v6, v3, p2

    if-lez v6, :cond_0

    .line 635
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "release date invalid: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 636
    const/4 v6, 0x0

    .line 653
    :goto_0
    return v6

    .line 639
    :cond_0
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 640
    if-ltz v5, :cond_1

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 641
    :cond_1
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invalid sticker version: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 642
    const/4 v6, 0x0

    goto :goto_0

    .line 646
    :cond_2
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    .line 647
    if-lt v2, v1, :cond_3

    if-le v2, v0, :cond_4

    .line 648
    :cond_3
    iget-object v6, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invalid moa version: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 649
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 648
    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 650
    const/4 v6, 0x0

    goto :goto_0

    .line 653
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private merge()V
    .locals 8

    .prologue
    .line 595
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "merge"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 599
    .local v0, "ctime":J
    iget-object v5, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalPluginsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 600
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAllExternalPlugins:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAllExternalPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 601
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 603
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAllExternalPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 604
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    iget-boolean v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdated:Z

    if-eqz v4, :cond_2

    .line 617
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/PluginService;->dispatchExternalUpdate()V

    .line 619
    :cond_2
    return-void

    .line 605
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/plugins/ExternalType;

    .line 606
    .local v3, "pack":Lcom/aviary/android/feather/library/plugins/ExternalType;
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 608
    invoke-direct {p0, v3, v0, v1}, Lcom/aviary/android/feather/library/services/PluginService;->isValidExternalPlugin(Lcom/aviary/android/feather/library/plugins/ExternalType;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 609
    iget-object v4, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAvailableExternalPlugins:Ljava/util/ArrayList;

    new-instance v6, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    invoke-direct {v6, v3}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;-><init>(Lcom/aviary/android/feather/library/plugins/ExternalType;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 599
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    .end local v3    # "pack":Lcom/aviary/android/feather/library/plugins/ExternalType;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 845
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 846
    return-void
.end method

.method public getAvailable(I)[Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 375
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalPluginsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 376
    :try_start_0
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/PluginService;->getOriginalExternalPluginList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 375
    .local v0, "cloneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-direct {p0, v0, p1}, Lcom/aviary/android/feather/library/services/PluginService;->getAvailableByType(Ljava/util/ArrayList;I)[Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    move-result-object v1

    return-object v1

    .line 375
    .end local v0    # "cloneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getInstalled(Landroid/content/Context;I)[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {p1}, Lcom/aviary/android/feather/library/utils/SystemUtils;->throwIfNonUiThread(Landroid/content/Context;)V

    .line 282
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mPluginsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    invoke-static {p2}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isFilter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mFilters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->mFilters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    monitor-exit v1

    .line 290
    :goto_0
    return-object v0

    .line 285
    :cond_0
    invoke-static {p2}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isSticker(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mStickers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->mStickers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    monitor-exit v1

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 287
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isBorder(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mBorders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->mBorders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    monitor-exit v1

    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "pluginType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aviary/android/feather/library/services/PluginService$PluginException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static/range {p4 .. p4}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isFilter(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 671
    const/4 v10, 0x1

    .line 757
    :goto_0
    return v10

    .line 674
    :cond_0
    iget-object v10, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "install: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 680
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 681
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 682
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 683
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "temp"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 682
    invoke-static {v10, v11}, Lcom/aviary/android/feather/headless/utils/IOUtils;->mkdirs(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 691
    .local v8, "tempDir":Ljava/io/File;
    :goto_1
    if-nez v8, :cond_2

    .line 692
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const-string/jumbo v11, "Cannot create temporary folder"

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 685
    .end local v8    # "tempDir":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "temp"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/aviary/android/feather/headless/utils/IOUtils;->mkdirs(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8    # "tempDir":Ljava/io/File;
    goto :goto_1

    .line 687
    .end local v8    # "tempDir":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 688
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/Throwable;I)V

    throw v10

    .line 697
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "tempDir":Ljava/io/File;
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v8, v2}, Lcom/aviary/android/feather/library/providers/cds/ContentResolverDownloader;->downloadAndExtract(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 707
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/PluginService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v10

    const-class v11, Lcom/aviary/android/feather/library/services/CDSService;

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aviary/android/feather/library/services/CDSService;

    .line 708
    .local v6, "service":Lcom/aviary/android/feather/library/services/CDSService;
    invoke-virtual {v6}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v6}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 710
    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v6, v0, v1, v2}, Lcom/aviary/android/feather/library/services/CDSService;->installed(Ljava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 711
    iget-object v10, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, ", already installed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 712
    iget-object v10, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "the package will be replaced"

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 717
    :cond_4
    new-instance v5, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v8}, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 720
    .local v5, "parser":Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;
    :try_start_3
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;->getPack()Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v4

    .line 729
    .local v4, "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    if-eqz v4, :cond_a

    .line 731
    invoke-virtual {v4}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->valid()Z

    move-result v10

    if-nez v10, :cond_5

    .line 732
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const-string/jumbo v11, "Invalid plugin manifest"

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 698
    .end local v4    # "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    .end local v5    # "parser":Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;
    .end local v6    # "service":Lcom/aviary/android/feather/library/services/CDSService;
    :catch_1
    move-exception v3

    .line 699
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const/4 v11, 0x3

    invoke-direct {v10, v3, v11}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/Throwable;I)V

    throw v10

    .line 700
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 701
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const/4 v11, 0x6

    invoke-direct {v10, v3, v11}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/Throwable;I)V

    throw v10

    .line 721
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "parser":Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;
    .restart local v6    # "service":Lcom/aviary/android/feather/library/services/CDSService;
    :catch_3
    move-exception v3

    .line 722
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const/4 v11, 0x5

    invoke-direct {v10, v3, v11}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/Throwable;I)V

    throw v10

    .line 723
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v3

    .line 724
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const/4 v11, 0x5

    invoke-direct {v10, v3, v11}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/Throwable;I)V

    throw v10

    .line 725
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 726
    .local v3, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const/4 v11, 0x5

    invoke-direct {v10, v3, v11}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/Throwable;I)V

    throw v10

    .line 735
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "pack":Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
    :cond_5
    const/4 v7, 0x0

    .line 737
    .local v7, "success":Z
    invoke-virtual {v4}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackTypeInt()I

    move-result v10

    move/from16 v0, p4

    if-eq v10, v0, :cond_6

    .line 738
    iget-object v10, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "plugin type is not valid!: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getPackType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " != "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 739
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const-string/jumbo v11, "Invalid plugin type"

    const/4 v12, 0x7

    invoke-direct {v10, v11, v12}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 742
    :cond_6
    invoke-direct {p0, v4}, Lcom/aviary/android/feather/library/services/PluginService;->checkLibraryVersion(Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;)I

    move-result v9

    .line 743
    .local v9, "versionError":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 744
    iget-object v10, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "version check failed! "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 745
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const-string/jumbo v11, "Plugin version not compatible"

    invoke-direct {v10, v11, v9}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 748
    :cond_7
    invoke-virtual {v6}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v6}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 749
    :cond_8
    invoke-virtual {v6, v5}, Lcom/aviary/android/feather/library/services/CDSService;->install(Lcom/aviary/android/feather/library/providers/cds/CDSContentParser;)Z

    move-result v7

    .line 750
    if-nez v7, :cond_9

    .line 751
    new-instance v10, Lcom/aviary/android/feather/library/services/PluginService$PluginException;

    const-string/jumbo v11, "failed to write database"

    const/4 v12, 0x6

    invoke-direct {v10, v11, v12}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 753
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 757
    .end local v7    # "success":Z
    .end local v9    # "versionError":I
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public installed(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersionCode"    # I
    .param p3, "type"    # I

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/PluginService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/CDSService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/CDSService;

    .line 807
    .local v0, "service":Lcom/aviary/android/feather/library/services/CDSService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 808
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/aviary/android/feather/library/services/CDSService;->installed(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public isExternalUpdated()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdated:Z

    return v0
.end method

.method public isUpdated()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mUpdated:Z

    return v0
.end method

.method public load(Ljava/lang/String;II)Lcom/aviary/android/feather/library/services/CDSPackage;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersionCode"    # I
    .param p3, "type"    # I

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/PluginService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/CDSService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/CDSService;

    .line 791
    .local v0, "service":Lcom/aviary/android/feather/library/services/CDSService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 792
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/aviary/android/feather/library/services/CDSService;->load(Ljava/lang/String;II)Lcom/aviary/android/feather/library/services/CDSPackage;

    move-result-object v1

    return-object v1
.end method

.method public registerOnExternalUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;

    .prologue
    .line 416
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_0
    monitor-exit v1

    .line 421
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    monitor-exit v1

    .line 407
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOnExternalUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    monitor-exit v1

    .line 442
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOnUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;

    .prologue
    .line 429
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    monitor-exit v1

    .line 434
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 772
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uninstall: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 774
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/PluginService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/CDSService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/CDSService;

    .line 775
    .local v0, "service":Lcom/aviary/android/feather/library/services/CDSService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 776
    :cond_0
    invoke-virtual {v0, p2}, Lcom/aviary/android/feather/library/services/CDSService;->uninstall(Ljava/lang/String;)Z

    .line 777
    return v6
.end method

.method public update(Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 13
    .param p2, "updateDelta"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/ApplicationType;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "installedPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 528
    iget-object v7, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v10, [Ljava/lang/Object;

    const-string/jumbo v9, "update"

    aput-object v9, v8, v12

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 530
    .local v3, "t1":J
    iget-boolean v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->mUpdated:Z

    .line 532
    .local v1, "needToDispatchUpdate":Z
    iget-object v8, p0, Lcom/aviary/android/feather/library/services/PluginService;->mPluginsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 533
    :try_start_0
    iget-object v7, p0, Lcom/aviary/android/feather/library/services/PluginService;->mFilters:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 534
    iget-object v7, p0, Lcom/aviary/android/feather/library/services/PluginService;->mStickers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 535
    iget-object v7, p0, Lcom/aviary/android/feather/library/services/PluginService;->mBorders:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 536
    iget-object v7, p0, Lcom/aviary/android/feather/library/services/PluginService;->mInstalledPlugins:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 538
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 539
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 532
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/PluginService;->merge()V

    .line 546
    iput-boolean v10, p0, Lcom/aviary/android/feather/library/services/PluginService;->mUpdated:Z

    .line 548
    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/aviary/android/feather/library/services/PluginService;->dispatchUpdate(Landroid/os/Bundle;)V

    .line 550
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 551
    .local v5, "t2":J
    iget-object v7, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v10, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "update completed in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v5, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 553
    return-void

    .line 540
    .end local v5    # "t2":J
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 541
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aviary/android/feather/library/plugins/ApplicationType;

    invoke-direct {p0, v7}, Lcom/aviary/android/feather/library/services/PluginService;->handlePackage(Lcom/aviary/android/feather/library/plugins/ApplicationType;)V

    goto :goto_0

    .line 532
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;>;"
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public updateExternalPackages(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 487
    if-nez p1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/PluginService;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "result is null"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 505
    :goto_0
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 494
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    const-string/jumbo v1, "list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 495
    const-string/jumbo v1, "list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 498
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalPluginsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 499
    :try_start_0
    iput-object v0, p0, Lcom/aviary/android/feather/library/services/PluginService;->mAllExternalPlugins:Ljava/util/ArrayList;

    .line 500
    const-string/jumbo v1, "update-time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdateTime:J

    .line 498
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    iput-boolean v5, p0, Lcom/aviary/android/feather/library/services/PluginService;->mExternalUpdated:Z

    .line 504
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/PluginService;->merge()V

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
