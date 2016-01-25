.class public Lcom/aviary/android/feather/library/plugins/PluginFetchTask;
.super Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
.source "PluginFetchTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable",
        "<",
        "Landroid/os/Bundle;",
        "Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field protected static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "plugin-fetcher"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/plugins/PluginFetchTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized call(Lcom/aviary/android/feather/library/services/IAviaryController;Landroid/os/Bundle;)Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    .locals 16
    .param p1, "controller"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 53
    .local v5, "t1":J
    invoke-interface/range {p1 .. p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->fetchInstalledPlugins(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 56
    .local v3, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v9, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 64
    new-instance v4, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    invoke-direct {v4, v3}, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;-><init>(Ljava/util/Map;)V

    .line 65
    .local v4, "result":Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    iget-object v10, v4, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;->delta:Landroid/os/Bundle;

    const-string/jumbo v11, "delta"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 68
    .local v7, "t2":J
    sget-object v10, Lcom/aviary/android/feather/library/plugins/PluginFetchTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "completed in "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v14, v7, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-object v4

    .line 60
    .end local v4    # "result":Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    .end local v7    # "t2":J
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/plugins/ApplicationType;

    .line 61
    .local v0, "appType":Lcom/aviary/android/feather/library/plugins/ApplicationType;
    new-instance v10, Lcom/aviary/android/feather/library/plugins/UpdateType;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPackageVersionCode()I

    move-result v12

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPluginType()I

    move-result v13

    const-string/jumbo v14, "aviary.android.intent.ACTION_PLUGIN_ADDED"

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/aviary/android/feather/library/plugins/UpdateType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v0    # "appType":Lcom/aviary/android/feather/library/plugins/ApplicationType;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    .end local v3    # "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    .end local v5    # "t1":J
    .end local v9    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public bridge synthetic call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFetchTask;->call(Lcom/aviary/android/feather/library/services/IAviaryController;Landroid/os/Bundle;)Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    move-result-object v0

    return-object v0
.end method
