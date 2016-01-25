.class public Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
.super Lcom/aviary/android/feather/library/plugins/FeatherPack;
.source "FeatherInternalPack.java"


# static fields
.field private static mDefault:Lcom/aviary/android/feather/library/plugins/FeatherPack;


# instance fields
.field private final mBorderVersion:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageVersion:I

.field private final mPluginType:I

.field private final mStickerVersion:I


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/plugins/ApplicationType;)V
    .locals 1
    .param p1, "type"    # Lcom/aviary/android/feather/library/plugins/ApplicationType;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/aviary/android/feather/library/plugins/FeatherPack;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mPackageName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPackageVersionCode()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mPackageVersion:I

    .line 20
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getPluginType()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mPluginType:I

    .line 21
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getStickerVersion()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mStickerVersion:I

    .line 22
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getBorderVersion()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mBorderVersion:I

    .line 23
    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v2, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mDefault:Lcom/aviary/android/feather/library/plugins/FeatherPack;

    if-nez v1, :cond_0

    .line 63
    invoke-static {p0}, Lcom/aviary/android/feather/library/plugins/ApplicationType;->getDefault(Landroid/content/Context;)Lcom/aviary/android/feather/library/plugins/ApplicationType;

    move-result-object v0

    .line 64
    .local v0, "appType":Lcom/aviary/android/feather/library/plugins/ApplicationType;
    new-instance v1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    invoke-direct {v1, v0}, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;-><init>(Lcom/aviary/android/feather/library/plugins/ApplicationType;)V

    sput-object v1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mDefault:Lcom/aviary/android/feather/library/plugins/FeatherPack;

    .line 66
    .end local v0    # "appType":Lcom/aviary/android/feather/library/plugins/ApplicationType;
    :cond_0
    sget-object v1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mDefault:Lcom/aviary/android/feather/library/plugins/FeatherPack;

    check-cast v1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mPackageVersion:I

    return v0
.end method

.method public getPluginVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 47
    invoke-static {p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isBorder(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mBorderVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isFilter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mPackageVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isSticker(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;->mStickerVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method
