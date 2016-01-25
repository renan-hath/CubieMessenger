.class Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;
.super Landroid/os/AsyncTask;
.source "StickersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/StickersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginInstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mExternalCount:I

.field private mFirstValidIndex:I

.field private mInstalledCount:I

.field final synthetic this$0:Lcom/aviary/android/feather/effects/StickersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    const/4 v0, 0x0

    .line 1275
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1277
    iput v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mInstalledCount:I

    .line 1278
    iput v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    .line 1279
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mFirstValidIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1275
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1290
    const/4 v10, 0x0

    .line 1291
    .local v10, "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    const/4 v6, 0x0

    .line 1293
    .local v6, "availablePacks":[Lcom/aviary/android/feather/library/plugins/FeatherPack;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1294
    const/4 v12, 0x0

    .line 1394
    :cond_0
    :goto_0
    return-object v12

    .line 1297
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 1298
    .local v7, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 1300
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;>;"
    if-eqz v7, :cond_3

    .line 1302
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$500(Lcom/aviary/android/feather/effects/StickersPanel;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1303
    :goto_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$600(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/services/PluginService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/PluginService;->isUpdated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1305
    const-wide/16 v13, 0x32

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :goto_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "waiting for plugin service..."

    aput-object v14, v4, v13

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 1306
    :catch_0
    move-exception v8

    .line 1307
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1312
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$600(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/services/PluginService;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v7, v4}, Lcom/aviary/android/feather/library/services/PluginService;->getInstalled(Landroid/content/Context;I)[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    move-result-object v10

    .line 1313
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$600(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/services/PluginService;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/aviary/android/feather/library/services/PluginService;->getAvailable(I)[Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    move-result-object v6

    .line 1321
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$700(Lcom/aviary/android/feather/effects/StickersPanel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1323
    const/4 v1, 0x0

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mInstalledCount:I

    .line 1324
    const/4 v1, 0x0

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    .line 1325
    const/4 v1, -0x1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mFirstValidIndex:I

    .line 1329
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$500(Lcom/aviary/android/feather/effects/StickersPanel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1330
    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    .line 1331
    new-instance v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    sget-object v4, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->GET_MORE_FIRST:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    invoke-direct {v1, v4}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_4
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$500(Lcom/aviary/android/feather/effects/StickersPanel;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v7, :cond_5

    .line 1337
    if-eqz v6, :cond_5

    .line 1338
    const/4 v9, 0x0

    .line 1339
    .local v9, "index":I
    array-length v14, v6

    const/4 v1, 0x0

    move v13, v1

    :goto_4
    if-ge v13, v14, :cond_5

    aget-object v11, v6, v13

    .line 1340
    .local v11, "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mFeaturedCount:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$800(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v1

    if-lt v9, v1, :cond_a

    .line 1354
    .end local v9    # "index":I
    .end local v11    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_5
    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    if-lez v1, :cond_6

    .line 1355
    new-instance v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    sget-object v4, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->RIGHT_DIVIDER:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    invoke-direct {v1, v4}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_6
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1360
    const/4 v9, 0x0

    .line 1363
    .restart local v9    # "index":I
    if-eqz v7, :cond_b

    if-eqz v10, :cond_b

    .line 1364
    array-length v14, v10

    const/4 v1, 0x0

    move v13, v1

    :goto_5
    if-ge v13, v14, :cond_b

    aget-object v11, v10, v13

    .line 1365
    .restart local v11    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    instance-of v1, v11, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    if-eqz v1, :cond_8

    .line 1366
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v11, v4}, Lcom/aviary/android/feather/library/plugins/PluginFactory;->create(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherPack;I)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    move-result-object v5

    check-cast v5, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    .line 1368
    .local v5, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1369
    .local v2, "packagename":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1371
    .local v3, "label":Ljava/lang/CharSequence;
    new-instance v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    sget-object v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->INTERNAL:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;)V

    .line 1373
    .local v0, "effectPack":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$700(Lcom/aviary/android/feather/effects/StickersPanel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mFirstValidIndex:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_7

    .line 1377
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mFirstValidIndex:I

    .line 1380
    :cond_7
    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mInstalledCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mInstalledCount:I

    .line 1382
    .end local v0    # "effectPack":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    .end local v2    # "packagename":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v5    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 1364
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_5

    .line 1315
    .end local v9    # "index":I
    .end local v11    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_9
    const/4 v1, 0x1

    new-array v10, v1, [Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .end local v10    # "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v4}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->getDefault(Landroid/content/Context;)Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    move-result-object v4

    aput-object v4, v10, v1

    .line 1316
    .restart local v10    # "installedPacks":[Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    const/4 v1, 0x0

    new-array v6, v1, [Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    goto/16 :goto_3

    .line 1341
    .restart local v9    # "index":I
    .restart local v11    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_a
    const/4 v1, 0x2

    invoke-static {v7, v11, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory;->create(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherPack;I)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    move-result-object v5

    check-cast v5, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 1343
    .local v5, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1344
    .restart local v2    # "packagename":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1346
    .restart local v3    # "label":Ljava/lang/CharSequence;
    new-instance v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    sget-object v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->EXTERNAL:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;)V

    .line 1347
    .restart local v0    # "effectPack":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    .line 1349
    add-int/lit8 v9, v9, 0x1

    .line 1339
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_4

    .line 1386
    .end local v0    # "effectPack":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    .end local v2    # "packagename":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v5    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    .end local v11    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_b
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$700(Lcom/aviary/android/feather/effects/StickersPanel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$700(Lcom/aviary/android/feather/effects/StickersPanel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$500(Lcom/aviary/android/feather/effects/StickersPanel;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mInstalledCount:I

    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    .line 1390
    new-instance v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    sget-object v4, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->LEFT_DIVIDER:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    invoke-direct {v1, v4}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    new-instance v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    sget-object v4, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->GET_MORE_LAST:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    invoke-direct {v1, v4}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1275
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1399
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1400
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    const/4 v1, 0x0

    # setter for: Lcom/aviary/android/feather/effects/StickersPanel;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$902(Lcom/aviary/android/feather/effects/StickersPanel;Z)Z

    .line 1401
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mInstalledCount:I

    iget v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mExternalCount:I

    iget v3, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->mFirstValidIndex:I

    # invokes: Lcom/aviary/android/feather/effects/StickersPanel;->onStickersPackListUpdated(Ljava/util/List;III)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1000(Lcom/aviary/android/feather/effects/StickersPanel;Ljava/util/List;III)V

    .line 1402
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1283
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1284
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->access$400(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->clearCache()V

    .line 1285
    return-void
.end method
