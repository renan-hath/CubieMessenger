.class public Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;
.super Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
.source "PluginUpdaterTask.java"


# annotations
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
.field private static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "PluginUpdaterTask"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method private printBundle(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 147
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string/jumbo v6, "APPLICATION_CONTEXT"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "app_context":Ljava/lang/String;
    const-string/jumbo v6, "IS_STICKER"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 151
    .local v4, "is_sticker":I
    const-string/jumbo v6, "IS_FILTER"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 152
    .local v3, "is_filter":I
    const-string/jumbo v6, "IS_BORDER"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "is_border":I
    const-string/jumbo v6, "PACKAGE_NAME"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "packagename":Ljava/lang/String;
    const-string/jumbo v6, "ACTION"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "printBundle ==============="

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 157
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "context:    "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 158
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "package:    "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 159
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "action:     "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 160
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "is_sticker: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 162
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "is_filter:  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 163
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "is_border:  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 165
    sget-object v6, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "==========================="

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized call(Lcom/aviary/android/feather/library/services/IAviaryController;Landroid/os/Bundle;)Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    .locals 29
    .param p1, "controller"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 56
    .local v15, "t1":J
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v21, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    invoke-interface/range {p1 .. p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    .line 60
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->fetchInstalledPlugins(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v13

    .line 62
    .local v13, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    if-eqz p2, :cond_1

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->printBundle(Landroid/os/Bundle;)V

    .line 65
    const-string/jumbo v23, "APPLICATION_CONTEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "app_context":Ljava/lang/String;
    const-string/jumbo v23, "IS_STICKER"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 67
    .local v9, "is_sticker":I
    const-string/jumbo v23, "IS_FILTER"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 68
    .local v8, "is_filter":I
    const-string/jumbo v23, "IS_TOOL"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 69
    .local v10, "is_tool":I
    const-string/jumbo v23, "IS_BORDER"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 70
    .local v7, "is_border":I
    const-string/jumbo v23, "PACKAGE_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "packagename":Ljava/lang/String;
    const-string/jumbo v23, "ACTION"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v23, "PACKAGE_VERSION"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 74
    .local v22, "versionCode":I
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 76
    const/16 v20, 0x0

    .line 77
    .local v20, "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_2

    const/16 v23, 0x1

    move/from16 v24, v23

    .line 78
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_3

    const/16 v23, 0x2

    .line 77
    :goto_1
    or-int v24, v24, v23

    .line 79
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_4

    const/16 v23, 0x4

    .line 77
    :goto_2
    or-int v24, v24, v23

    .line 80
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    const/16 v23, 0x8

    .line 77
    :goto_3
    or-int v19, v24, v23

    .line 83
    .local v19, "type":I
    const-string/jumbo v23, "aviary.android.intent.ACTION_PLUGIN_ADDED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 85
    new-instance v20, Lcom/aviary/android/feather/library/plugins/UpdateType;

    .end local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    const-string/jumbo v23, "aviary.android.intent.ACTION_PLUGIN_ADDED"

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v19

    move-object/from16 v3, v23

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/aviary/android/feather/library/plugins/UpdateType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 87
    .restart local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 89
    .local v11, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    .end local v11    # "msg":Landroid/os/Message;
    :cond_0
    :goto_4
    if-eqz v20, :cond_1

    .line 118
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "app_context":Ljava/lang/String;
    .end local v7    # "is_border":I
    .end local v8    # "is_filter":I
    .end local v9    # "is_sticker":I
    .end local v10    # "is_tool":I
    .end local v12    # "packagename":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .end local v22    # "versionCode":I
    :cond_1
    new-instance v14, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    invoke-direct {v14, v13}, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;-><init>(Ljava/util/Map;)V

    .line 124
    .local v14, "result":Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    iget-object v0, v14, Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;->delta:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string/jumbo v24, "delta"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 127
    .local v17, "t2":J
    sget-object v23, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "completed in "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v27, v17, v15

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-interface/range {v23 .. v24}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-object v14

    .line 77
    .end local v14    # "result":Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;
    .end local v17    # "t2":J
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v5    # "app_context":Ljava/lang/String;
    .restart local v7    # "is_border":I
    .restart local v8    # "is_filter":I
    .restart local v9    # "is_sticker":I
    .restart local v10    # "is_tool":I
    .restart local v12    # "packagename":Ljava/lang/String;
    .restart local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .restart local v22    # "versionCode":I
    :cond_2
    const/16 v23, 0x0

    move/from16 v24, v23

    goto/16 :goto_0

    .line 78
    :cond_3
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 79
    :cond_4
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 80
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 92
    .restart local v19    # "type":I
    :cond_6
    :try_start_1
    const-string/jumbo v23, "aviary.android.intent.ACTION_PLUGIN_REPLACED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 94
    new-instance v20, Lcom/aviary/android/feather/library/plugins/UpdateType;

    .end local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    const-string/jumbo v23, "aviary.android.intent.ACTION_PLUGIN_REPLACED"

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v19

    move-object/from16 v3, v23

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/aviary/android/feather/library/plugins/UpdateType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 96
    .restart local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 99
    .restart local v11    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 53
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "app_context":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "is_border":I
    .end local v8    # "is_filter":I
    .end local v9    # "is_sticker":I
    .end local v10    # "is_tool":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "packagename":Ljava/lang/String;
    .end local v13    # "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    .end local v15    # "t1":J
    .end local v19    # "type":I
    .end local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .end local v21    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    .end local v22    # "versionCode":I
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 102
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v5    # "app_context":Ljava/lang/String;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "is_border":I
    .restart local v8    # "is_filter":I
    .restart local v9    # "is_sticker":I
    .restart local v10    # "is_tool":I
    .restart local v12    # "packagename":Ljava/lang/String;
    .restart local v13    # "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    .restart local v15    # "t1":J
    .restart local v19    # "type":I
    .restart local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .restart local v21    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    .restart local v22    # "versionCode":I
    :cond_7
    :try_start_2
    const-string/jumbo v23, "aviary.android.intent.ACTION_PLUGIN_REMOVED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->getApplicationType(Ljava/util/Map;Ljava/lang/String;)I

    move-result v19

    .line 109
    new-instance v20, Lcom/aviary/android/feather/library/plugins/UpdateType;

    .end local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    const/16 v23, 0x0

    const-string/jumbo v24, "aviary.android.intent.ACTION_PLUGIN_REMOVED"

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v19

    move-object/from16 v3, v24

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/aviary/android/feather/library/plugins/UpdateType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 111
    .restart local v20    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 113
    .restart local v11    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method public bridge synthetic call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;->call(Lcom/aviary/android/feather/library/services/IAviaryController;Landroid/os/Bundle;)Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationType(Ljava/util/Map;Ljava/lang/String;)I
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/ApplicationType;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/plugins/ApplicationType;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/plugins/ApplicationType;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPluginType()I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
