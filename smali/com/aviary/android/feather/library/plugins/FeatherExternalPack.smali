.class public Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
.super Lcom/aviary/android/feather/library/plugins/FeatherPack;
.source "FeatherExternalPack.java"


# instance fields
.field private items:[Ljava/lang/String;

.field private mBorderVersion:I

.field private mDescription:Ljava/lang/String;

.field private mIconUrl:Ljava/lang/String;

.field private mIsFree:Z

.field private mLabel:Ljava/lang/String;

.field private mNumBorders:I

.field private mNumFilters:I

.field private mNumStickers:I

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersionCode:I

.field private mPluginType:I

.field private mStickerVersion:I


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/plugins/ExternalType;)V
    .locals 1
    .param p1, "app"    # Lcom/aviary/android/feather/library/plugins/ExternalType;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/aviary/android/feather/library/plugins/FeatherPack;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mLabel:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getItems()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->items:[Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mDescription:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mPackageName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getPackageVersionCode()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mPackageVersionCode:I

    .line 30
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->isNeedsPurchase()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mIsFree:Z

    .line 31
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getNumFilters()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mNumFilters:I

    .line 32
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getNumStickers()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mNumStickers:I

    .line 33
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getNumBorders()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mNumBorders:I

    .line 34
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getPluginType()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mPluginType:I

    .line 35
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mIconUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getStickerVersion()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mStickerVersion:I

    .line 37
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getBorderVersion()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mBorderVersion:I

    .line 38
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->items:[Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mPackageVersionCode:I

    return v0
.end method

.method public getPluginType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mPluginType:I

    return v0
.end method

.method public getPluginVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 93
    invoke-static {p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isBorder(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mBorderVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isFilter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mPackageVersionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isSticker(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mStickerVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;->mIsFree:Z

    return v0
.end method
