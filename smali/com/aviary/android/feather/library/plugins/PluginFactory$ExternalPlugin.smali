.class public final Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
.super Ljava/lang/Object;
.source "PluginFactory.java"

# interfaces
.implements Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPlugin"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private isfree:Z

.field private final items:[Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private packagename:Ljava/lang/String;

.field private final packageversioncode:I

.field private pluginType:I

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pack"    # Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->label:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->description:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getItems()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->items:[Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getPackageVersionCode()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->packageversioncode:I

    .line 116
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->iconUrl:Ljava/lang/String;

    .line 117
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getPluginType()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->pluginType:I

    .line 118
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->packagename:Ljava/lang/String;

    .line 119
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->isFree()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->isfree:Z

    .line 120
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getPluginType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->getPluginVersion(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->version:Ljava/lang/String;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->items:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->pluginType:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->items:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
