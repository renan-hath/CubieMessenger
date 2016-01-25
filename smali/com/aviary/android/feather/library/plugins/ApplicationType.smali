.class public Lcom/aviary/android/feather/library/plugins/ApplicationType;
.super Ljava/lang/Object;
.source "ApplicationType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static mThisType:Lcom/aviary/android/feather/library/plugins/ApplicationType;


# instance fields
.field protected final mBorderVersion:I

.field protected final mPackageName:Ljava/lang/String;

.field protected final mPluginType:I

.field protected final mStickerVersion:I

.field protected final packageVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "pluginType"    # I
    .param p3, "stickerVersion"    # I
    .param p4, "borderVersion"    # I
    .param p5, "versionCode"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPackageName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPluginType:I

    .line 29
    iput p3, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mStickerVersion:I

    .line 30
    iput p4, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mBorderVersion:I

    .line 31
    iput p5, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->packageVersionCode:I

    .line 32
    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Lcom/aviary/android/feather/library/plugins/ApplicationType;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-class v7, Lcom/aviary/android/feather/library/plugins/ApplicationType;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mThisType:Lcom/aviary/android/feather/library/plugins/ApplicationType;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 88
    .local v6, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-static {p0, v0, v1, v3}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;[I[I)I

    move-result v2

    .line 89
    .local v2, "type":I
    new-instance v0, Lcom/aviary/android/feather/library/plugins/ApplicationType;

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/library/plugins/ApplicationType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mThisType:Lcom/aviary/android/feather/library/plugins/ApplicationType;

    .line 91
    .end local v2    # "type":I
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mThisType:Lcom/aviary/android/feather/library/plugins/ApplicationType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public getBorderVersion()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mBorderVersion:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->packageVersionCode:I

    return v0
.end method

.method public getPluginType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPluginType:I

    return v0
.end method

.method public getStickerVersion()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mStickerVersion:I

    return v0
.end method

.method public isBorder()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPluginType:I

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isBorder(I)Z

    move-result v0

    return v0
.end method

.method public isFilter()Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPluginType:I

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isFilter(I)Z

    move-result v0

    return v0
.end method

.method public isSticker()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPluginType:I

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isSticker(I)Z

    move-result v0

    return v0
.end method

.method public isTool()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPluginType:I

    invoke-static {v0}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isTool(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ApplicationType{ package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/library/plugins/ApplicationType;->mPluginType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
