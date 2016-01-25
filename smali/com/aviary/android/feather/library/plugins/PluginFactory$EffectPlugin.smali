.class public final Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;
.super Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
.source "PluginFactory.java"

# interfaces
.implements Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EffectPlugin"
.end annotation


# instance fields
.field mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pack"    # Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .prologue
    .line 683
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V

    .line 684
    return-void
.end method


# virtual methods
.method public available(Lcom/aviary/android/feather/library/services/PluginService;)Z
    .locals 3
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/PluginService;

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getPackageVersionCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getType()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/aviary/android/feather/library/services/PluginService;->installed(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public getItemAt(I)Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 763
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/services/CDSPackage;->getItemAt(I)Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;

    move-result-object v0

    .line 764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 780
    const-string/jumbo v0, "ic_filters"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPackageLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSPackage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 770
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "filter_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->loadLabel(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # Ljava/lang/CharSequence;

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x1

    return v0
.end method

.method public install(Landroid/content/Context;Lcom/aviary/android/feather/library/services/PluginService;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/aviary/android/feather/library/services/PluginService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aviary/android/feather/library/services/PluginService$PluginException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getPackageVersionCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getType()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/aviary/android/feather/library/services/PluginService;->install(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    .line 745
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public installAndLoad(Landroid/content/Context;Lcom/aviary/android/feather/library/services/PluginService;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/aviary/android/feather/library/services/PluginService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aviary/android/feather/library/services/PluginService$PluginException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 694
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->loaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 698
    .local v0, "needsInstall":Z
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->available(Lcom/aviary/android/feather/library/services/PluginService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 700
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->load(Lcom/aviary/android/feather/library/services/PluginService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 725
    .end local v0    # "needsInstall":Z
    :cond_0
    :goto_0
    return v2

    .line 701
    .restart local v0    # "needsInstall":Z
    :cond_1
    const/4 v0, 0x1

    .line 707
    :goto_1
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->install(Landroid/content/Context;Lcom/aviary/android/feather/library/services/PluginService;)Z

    move-result v1

    .line 710
    .local v1, "status":Z
    if-eqz v1, :cond_3

    .line 711
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->load(Lcom/aviary/android/feather/library/services/PluginService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 712
    const-string/jumbo v2, "PluginFactory"

    const-string/jumbo v4, "installation was succesfull, but can\'t load the plugin!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 713
    goto :goto_0

    .line 703
    .end local v1    # "status":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .restart local v1    # "status":Z
    :cond_3
    move v2, v3

    .line 718
    goto :goto_0
.end method

.method public load(Lcom/aviary/android/feather/library/services/PluginService;)Z
    .locals 4
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/PluginService;

    .prologue
    const/4 v0, 0x1

    .line 736
    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    if-eqz v1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return v0

    .line 737
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getPackageVersionCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->getType()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/aviary/android/feather/library/services/PluginService;->load(Ljava/lang/String;II)Lcom/aviary/android/feather/library/services/CDSPackage;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    .line 738
    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loaded()Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;->mPackage:Lcom/aviary/android/feather/library/services/CDSPackage;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/CDSPackage;->size()I

    move-result v0

    .line 759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
