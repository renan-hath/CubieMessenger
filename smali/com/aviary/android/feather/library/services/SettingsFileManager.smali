.class public Lcom/aviary/android/feather/library/services/SettingsFileManager;
.super Ljava/lang/Object;
.source "SettingsFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;
    }
.end annotation


# static fields
.field private static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# instance fields
.field private file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

.field private final filename:Ljava/lang/String;

.field private log_tag:Ljava/lang/String;

.field private final persistent:Z

.field private final safeLock:Ljava/lang/Object;

.field private settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "settings-file-manager"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "persisten"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->safeLock:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->filename:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->persistent:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->log_tag:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->reload(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic access$0()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-object v0
.end method

.method static synthetic access$1(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->printMap(Ljava/util/Map;)V

    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static printMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->debug([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->safeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->close()V

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    .line 243
    monitor-exit v1

    .line 249
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    sget-object v0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->log_tag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "flush"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 223
    invoke-static {p1}, Lcom/aviary/android/feather/library/utils/SystemUtils;->throwIfNonUiThread(Landroid/content/Context;)V

    .line 225
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->safeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->save(Ljava/util/Map;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->close()V

    .line 233
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    .line 225
    monitor-exit v1

    .line 235
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 168
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 139
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public loaded()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    :cond_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/services/SettingsFileManager;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public reload(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v1, Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->log_tag:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "reload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/aviary/android/feather/library/utils/SystemUtils;->throwIfNonUiThread(Landroid/content/Context;)V

    .line 79
    iget-object v3, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->safeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 82
    :try_start_1
    new-instance v4, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    iget-object v5, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->filename:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->persistent:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, -0x1

    :goto_0
    invoke-direct {v4, v5, v1, v2}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->file:Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/SettingsFileManager$SettingsFileAccess;->load()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    .line 79
    :cond_1
    monitor-exit v3

    .line 92
    :goto_1
    return-void

    .line 82
    :cond_2
    const-wide/32 v1, 0x5265c00

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    monitor-exit v3

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->log_tag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/SettingsFileManager;->settings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    return-void
.end method
