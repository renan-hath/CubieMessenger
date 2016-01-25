.class Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;
.super Landroid/os/AsyncTask;
.source "BordersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginInstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
        ">;>;"
    }
.end annotation


# instance fields
.field mErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCount:I

.field private mFirstValidIndex:I

.field private mInstalledCount:I

.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    const/4 v0, 0x0

    .line 1422
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1425
    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mInstalledCount:I

    .line 1426
    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    .line 1427
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mFirstValidIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1422
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 33
    .param p1, "params"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 1444
    .local v27, "pluginType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$200(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1445
    const/16 v18, 0x0

    .line 1447
    .local v18, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/PluginService;->isUpdated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1449
    const-wide/16 v8, 0x32

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v12, "waiting for plugin service"

    aput-object v12, v8, v9

    invoke-interface {v3, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v19

    .line 1451
    .local v19, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1458
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/16 v18, 0x0

    .line 1459
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/PluginService;->isExternalUpdated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1460
    add-int/lit8 v18, v18, 0x1

    .line 1461
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Lcom/aviary/android/feather/library/utils/SystemUtils;->trySleep(J)V

    .line 1462
    const/16 v3, 0x32

    move/from16 v0, v18

    if-le v0, v3, :cond_1

    .line 1466
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v8

    invoke-interface {v8}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    move/from16 v0, v27

    invoke-virtual {v3, v8, v0}, Lcom/aviary/android/feather/library/services/PluginService;->getInstalled(Landroid/content/Context;I)[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    move-result-object v23

    .line 1467
    .local v23, "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/aviary/android/feather/library/services/PluginService;->getAvailable(I)[Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    move-result-object v17

    .line 1479
    .end local v18    # "count":I
    .local v17, "availablePacks":[Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mInstalledCount:I

    .line 1482
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    .line 1484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v28

    .line 1485
    .local v28, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mInstalledPackages:Ljava/util/List;
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$700(Lcom/aviary/android/feather/effects/BordersPanel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$200(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$000(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v3

    const/4 v8, 0x4

    if-ne v3, v8, :cond_5

    .line 1490
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    move-object/from16 v0, v23

    array-length v3, v0

    if-nez v3, :cond_3

    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v9, 0x1

    if-eq v3, v9, :cond_9

    :cond_3
    move-object/from16 v0, v23

    array-length v3, v0

    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    move-object/from16 v0, v17

    array-length v3, v0

    if-eqz v3, :cond_9

    :cond_4
    const/4 v3, 0x1

    :goto_3
    # setter for: Lcom/aviary/android/feather/effects/BordersPanel;->mShowGetMoreView:Z
    invoke-static {v8, v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$802(Lcom/aviary/android/feather/effects/BordersPanel;Z)Z

    .line 1493
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mShowGetMoreView:Z
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$800(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1494
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    .line 1495
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    sget-object v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->GET_MORE:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-direct {v3, v8}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;)V

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    :cond_6
    const/16 v22, 0x0

    .line 1500
    .local v22, "index":I
    const/16 v26, 0x0

    .line 1503
    .local v26, "pack_index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$200(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mFeaturedCount:I
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$900(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v3

    move-object/from16 v0, v17

    array-length v8, v0

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1505
    .local v29, "size":I
    if-lez v29, :cond_a

    .line 1506
    add-int/lit8 v21, v29, -0x1

    .local v21, "i":I
    :goto_4
    if-ltz v21, :cond_a

    .line 1507
    aget-object v25, v17, v21

    .line 1508
    .local v25, "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I
    invoke-static {v8}, Lcom/aviary/android/feather/effects/BordersPanel;->access$000(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v8

    move-object/from16 v0, v25

    invoke-static {v3, v0, v8}, Lcom/aviary/android/feather/library/plugins/PluginFactory;->create(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherPack;I)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    move-result-object v10

    check-cast v10, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 1509
    .local v10, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    invoke-virtual {v10}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1510
    .local v4, "packagename":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1511
    .local v5, "label":Ljava/lang/CharSequence;
    new-instance v2, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    sget-object v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->EXTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;)V

    .line 1512
    .local v2, "effectPack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    .line 1514
    add-int/lit8 v22, v22, 0x1

    .line 1506
    add-int/lit8 v21, v21, -0x1

    goto :goto_4

    .line 1470
    .end local v2    # "effectPack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .end local v4    # "packagename":Ljava/lang/CharSequence;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v10    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    .end local v17    # "availablePacks":[Lcom/aviary/android/feather/library/plugins/FeatherPack;
    .end local v21    # "i":I
    .end local v22    # "index":I
    .end local v23    # "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    .end local v25    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    .end local v26    # "pack_index":I
    .end local v28    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    .end local v29    # "size":I
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_8

    .line 1471
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v8

    invoke-interface {v8}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->getDefault(Landroid/content/Context;)Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    move-result-object v8

    aput-object v8, v23, v3

    .line 1475
    .restart local v23    # "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    :goto_5
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    move-object/from16 v17, v0

    .restart local v17    # "availablePacks":[Lcom/aviary/android/feather/library/plugins/FeatherPack;
    goto/16 :goto_2

    .line 1473
    .end local v17    # "availablePacks":[Lcom/aviary/android/feather/library/plugins/FeatherPack;
    .end local v23    # "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    :cond_8
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    move-object/from16 v23, v0

    .restart local v23    # "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    goto :goto_5

    .line 1490
    .restart local v17    # "availablePacks":[Lcom/aviary/android/feather/library/plugins/FeatherPack;
    .restart local v28    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1520
    .restart local v22    # "index":I
    .restart local v26    # "pack_index":I
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    if-lez v3, :cond_b

    .line 1521
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    sget-object v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->RIGHT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-direct {v3, v8}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;)V

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->isActive()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1630
    :cond_c
    :goto_6
    return-object v28

    .line 1526
    :cond_d
    const/16 v22, 0x0

    .line 1529
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    const/4 v3, 0x0

    move/from16 v31, v3

    :goto_7
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_14

    aget-object v25, v23, v31

    .line 1530
    .restart local v25    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    if-eqz v3, :cond_13

    .line 1531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I
    invoke-static {v8}, Lcom/aviary/android/feather/effects/BordersPanel;->access$000(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v8

    move-object/from16 v0, v25

    invoke-static {v3, v0, v8}, Lcom/aviary/android/feather/library/plugins/PluginFactory;->create(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherPack;I)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    move-result-object v10

    check-cast v10, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    .line 1532
    .local v10, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    invoke-virtual {v10}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1533
    .restart local v4    # "packagename":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1535
    .restart local v5    # "label":Ljava/lang/CharSequence;
    const/4 v15, -0x1

    .line 1536
    .local v15, "status":I
    const/16 v16, 0x0

    .line 1538
    .local v16, "errorMessage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1539
    .local v6, "pluginItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 1542
    .local v7, "pluginIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->installed()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "**** "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ****"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-interface {v3, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1544
    instance-of v3, v10, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;

    if-eqz v3, :cond_e

    .line 1546
    :try_start_1
    move-object v0, v10

    check-cast v0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v8}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v8

    invoke-interface {v8}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v9, v9, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-interface {v3, v8, v9}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;->installAndLoad(Landroid/content/Context;Lcom/aviary/android/feather/library/services/PluginService;)Z
    :try_end_1
    .catch Lcom/aviary/android/feather/library/services/PluginService$PluginException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-nez v3, :cond_15

    .line 1547
    const/4 v15, 0x6

    .line 1567
    :cond_e
    :goto_8
    const/4 v3, -0x1

    if-eq v15, v3, :cond_17

    .line 1570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1571
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "pluginItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .restart local v6    # "pluginItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v8, "-1"

    invoke-virtual {v10}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "pluginIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .restart local v7    # "pluginIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    new-instance v11, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v11 .. v16}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1577
    .local v11, "error":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mErrors:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    .end local v11    # "error":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    :cond_f
    :goto_9
    if-eqz v6, :cond_12

    if-eqz v7, :cond_12

    .line 1598
    new-instance v2, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    sget-object v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->INTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    move v8, v15

    move-object/from16 v9, v16

    invoke-direct/range {v2 .. v10}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;)V

    .line 1599
    .restart local v2    # "effectPack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mInstalledPackages:Ljava/util/List;
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$700(Lcom/aviary/android/feather/effects/BordersPanel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    if-lez v26, :cond_10

    .line 1603
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    sget-object v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->PACK_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    :cond_10
    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    const/4 v3, -0x1

    if-ne v15, v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mFirstValidIndex:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_11

    .line 1610
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mFirstValidIndex:I

    .line 1612
    :cond_11
    add-int/lit8 v26, v26, 0x1

    .line 1614
    .end local v2    # "effectPack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    :cond_12
    add-int/lit8 v22, v22, 0x1

    .line 1618
    .end local v4    # "packagename":Ljava/lang/CharSequence;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "pluginItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "pluginIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .end local v15    # "status":I
    .end local v16    # "errorMessage":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->isActive()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1623
    .end local v25    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mInstalledPackages:Ljava/util/List;
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$700(Lcom/aviary/android/feather/effects/BordersPanel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mInstalledCount:I

    if-lez v3, :cond_c

    .line 1624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$200(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mShowGetMoreView:Z
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$800(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1625
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    sget-object v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->LEFT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-direct {v3, v8}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;)V

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    sget-object v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->GET_MORE:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-direct {v3, v8}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;)V

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1549
    .restart local v4    # "packagename":Ljava/lang/CharSequence;
    .restart local v5    # "label":Ljava/lang/CharSequence;
    .restart local v6    # "pluginItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "pluginIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .restart local v15    # "status":I
    .restart local v16    # "errorMessage":Ljava/lang/String;
    .restart local v25    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_15
    const/4 v15, -0x1

    goto/16 :goto_8

    .line 1551
    :catch_1
    move-exception v19

    .line 1552
    .local v19, "e":Lcom/aviary/android/feather/library/services/PluginService$PluginException;
    invoke-virtual/range {v19 .. v19}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->printStackTrace()V

    .line 1553
    invoke-virtual/range {v19 .. v19}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->getErrorCode()I

    move-result v15

    .line 1554
    invoke-virtual/range {v19 .. v19}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 1559
    goto/16 :goto_8

    .line 1555
    .end local v19    # "e":Lcom/aviary/android/feather/library/services/PluginService$PluginException;
    :catch_2
    move-exception v30

    .line 1556
    .local v30, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1557
    const/4 v15, 0x0

    .line 1558
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 1559
    goto/16 :goto_8

    .line 1562
    .end local v30    # "t":Ljava/lang/Throwable;
    :cond_16
    const/16 v15, 0x8

    .line 1563
    const-string/jumbo v16, "Plugin not installed"

    goto/16 :goto_8

    .line 1580
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3, v10}, Lcom/aviary/android/feather/effects/BordersPanel;->loadPluginItems(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;)Ljava/util/List;

    move-result-object v6

    .line 1581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3, v10}, Lcom/aviary/android/feather/effects/BordersPanel;->loadPluginIds(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;)Ljava/util/List;

    move-result-object v7

    .line 1583
    if-nez v22, :cond_19

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->getOptionalEffectsValues()[Ljava/lang/CharSequence;

    move-result-object v20

    .line 1585
    .local v20, "f":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->getOptionalEffectsLabels()[Ljava/lang/CharSequence;

    move-result-object v24

    .line 1586
    .local v24, "n":[Ljava/lang/CharSequence;
    if-eqz v20, :cond_19

    if-eqz v24, :cond_19

    move-object/from16 v0, v20

    array-length v3, v0

    move-object/from16 v0, v24

    array-length v8, v0

    if-ne v3, v8, :cond_19

    .line 1588
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_a
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_19

    .line 1589
    const/4 v9, 0x0

    aget-object v3, v20, v21

    check-cast v3, Ljava/lang/String;

    aget-object v8, v24, v21

    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v6, v9, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1590
    if-eqz v7, :cond_18

    const/4 v3, 0x0

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1588
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1594
    .end local v20    # "f":[Ljava/lang/CharSequence;
    .end local v21    # "i":I
    .end local v24    # "n":[Ljava/lang/CharSequence;
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mInstalledCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mInstalledCount:I

    goto/16 :goto_9

    .line 1529
    .end local v4    # "packagename":Ljava/lang/CharSequence;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "pluginItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "pluginIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .end local v15    # "status":I
    .end local v16    # "errorMessage":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v31, 0x1

    move/from16 v31, v3

    goto/16 :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1422
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1635
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1637
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mErrors:Ljava/util/List;

    iget v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mInstalledCount:I

    iget v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mExternalCount:I

    iget v5, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mFirstValidIndex:I

    move-object v1, p1

    # invokes: Lcom/aviary/android/feather/effects/BordersPanel;->onEffectListUpdated(Ljava/util/List;Ljava/util/List;III)V
    invoke-static/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel;->access$1000(Lcom/aviary/android/feather/effects/BordersPanel;Ljava/util/List;Ljava/util/List;III)V

    .line 1638
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    const/4 v1, 0x0

    # setter for: Lcom/aviary/android/feather/effects/BordersPanel;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/aviary/android/feather/effects/BordersPanel;->access$1102(Lcom/aviary/android/feather/effects/BordersPanel;Z)Z

    .line 1639
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1431
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->mErrors:Ljava/util/List;

    .line 1433
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/BordersPanel;->access$500(Lcom/aviary/android/feather/effects/BordersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->clearCache()V

    .line 1434
    return-void
.end method
