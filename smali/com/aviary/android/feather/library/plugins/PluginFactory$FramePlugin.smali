.class public final Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;
.super Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
.source "PluginFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FramePlugin"
.end annotation


# instance fields
.field private bordersSizeCache:[I

.field private final version:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pack"    # Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V

    .line 572
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->getPluginVersion(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->version:I

    .line 573
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->dispose()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->bordersSizeCache:[I

    .line 579
    return-void
.end method

.method public getPackageIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 603
    const-string/jumbo v0, "ic_borders"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->getDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPackageLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 593
    const-string/jumbo v0, "border_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->loadLabel(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getResourceLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "resId"    # Ljava/lang/CharSequence;

    .prologue
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "feather_plugin_border_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->loadLabel(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 609
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 610
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 612
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x4

    return v0
.end method

.method public listBorders()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 625
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->itemsCache:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 627
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    .line 635
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 628
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v2, "borders_list"

    const-string/jumbo v3, "array"

    invoke-virtual {p0, v0, v2, v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 629
    .local v1, "res_id":I
    if-eqz v1, :cond_2

    .line 630
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->itemsCache:[Ljava/lang/String;

    .line 635
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "res_id":I
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->itemsCache:[Ljava/lang/String;

    goto :goto_0

    .line 632
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "res_id":I
    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public listBordersWidths()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 646
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->bordersSizeCache:[I

    if-nez v2, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 648
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    new-array v2, v4, [I

    .line 656
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 649
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v2, "borders_size"

    const-string/jumbo v3, "array"

    invoke-virtual {p0, v0, v2, v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 650
    .local v1, "res_id":I
    if-eqz v1, :cond_2

    .line 651
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->bordersSizeCache:[I

    .line 656
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "res_id":I
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->bordersSizeCache:[I

    goto :goto_0

    .line 653
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "res_id":I
    :cond_2
    new-array v2, v4, [I

    goto :goto_0
.end method

.method public openThumbnail(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "small_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->openRawResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->listBorders()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
