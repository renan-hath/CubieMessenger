.class public final Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;
.super Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
.source "PluginFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StickerPlugin"
.end annotation


# instance fields
.field private final version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pack"    # Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V

    .line 418
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->getPluginVersion(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->version:I

    .line 419
    return-void
.end method

.method private listStickersAssets(Lcom/aviary/android/feather/library/services/PluginService$StickerType;)[Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "files":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v1, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    if-ne p1, v3, :cond_4

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stickers"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->listAssets(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_2

    .line 498
    :cond_1
    const-string/jumbo v3, "stickers"

    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->listAssets(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_2
    if-eqz v0, :cond_3

    .line 502
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_5

    .line 509
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 493
    :cond_4
    sget-object v3, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Large:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    if-ne p1, v3, :cond_0

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stickers"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "large"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->listAssets(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    .restart local v2    # "i":I
    :cond_5
    const-string/jumbo v3, "large"

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "small"

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 502
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    :cond_7
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private listStickersRaw(Lcom/aviary/android/feather/library/services/PluginService$StickerType;)[Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    .prologue
    .line 480
    const-string/jumbo v1, "stickers_list"

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "stickers":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 484
    .end local v0    # "stickers":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "stickers":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private openStickerAssetStream(Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    sget-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Preview:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    if-ne p2, v0, :cond_1

    .line 549
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stickers"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 553
    :cond_1
    sget-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Large:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    if-ne p2, v0, :cond_2

    .line 555
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stickers"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 560
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stickers"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 551
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private openStickerRawStream(Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 536
    sget-object v1, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Large:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    if-ne p2, v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "finalname":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->openRawResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 538
    .end local v0    # "finalname":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    if-ne p2, v1, :cond_1

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .restart local v0    # "finalname":Ljava/lang/String;
    goto :goto_0

    .line 541
    .end local v0    # "finalname":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "small_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "finalname":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getPackageIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 443
    const-string/jumbo v0, "ic_stickers"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPackageLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 433
    const-string/jumbo v0, "sticker_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->loadLabel(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getResourceLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # Ljava/lang/CharSequence;

    .prologue
    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 470
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 471
    iget v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->version:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 472
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 476
    :goto_0
    return-object v1

    .line 474
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStickerStream(Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/aviary/android/feather/library/services/PluginService$StickerType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->openStickerRawStream(Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->openStickerAssetStream(Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x2

    return v0
.end method

.method public listStickers()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->itemsCache:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x2

    iget v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->version:I

    if-ne v0, v1, :cond_1

    .line 454
    sget-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->listStickersRaw(Lcom/aviary/android/feather/library/services/PluginService$StickerType;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->itemsCache:[Ljava/lang/String;

    .line 459
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->itemsCache:[Ljava/lang/String;

    return-object v0

    .line 456
    :cond_1
    sget-object v0, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->listStickersAssets(Lcom/aviary/android/feather/library/services/PluginService$StickerType;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->itemsCache:[Ljava/lang/String;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->listStickers()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
