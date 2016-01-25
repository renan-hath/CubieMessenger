.class public Lcom/aviary/android/feather/library/plugins/ExternalType;
.super Lcom/aviary/android/feather/library/plugins/ApplicationType;
.source "ExternalType.java"


# instance fields
.field mDescription:Ljava/lang/String;

.field public mIconUrl:Ljava/lang/String;

.field mItems:Lorg/json/JSONArray;

.field public mLabel:Ljava/lang/String;

.field public mMaxMoaVersion:I

.field public mMinMoaVersion:I

.field public mNeedsPurchase:Z

.field public mNumBorders:I

.field public mNumFilters:I

.field public mNumStickers:I

.field public mNumTools:I

.field mOrder:I

.field public mReleaseDate:J

.field mStringItems:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZIIII)V
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "releaseDate"    # J
    .param p5, "pluginType"    # I
    .param p6, "purchase"    # Z
    .param p7, "minMoa"    # I
    .param p8, "maxMoa"    # I
    .param p9, "stickerVersion"    # I
    .param p10, "borderVersion"    # I

    .prologue
    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move v3, p9

    move/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/library/plugins/ApplicationType;-><init>(Ljava/lang/String;IIII)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumFilters:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumStickers:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumTools:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumBorders:I

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mDescription:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mLabel:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mReleaseDate:J

    .line 38
    iput p7, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mMinMoaVersion:I

    .line 39
    iput p8, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mMaxMoaVersion:I

    .line 40
    iput-boolean p6, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNeedsPurchase:Z

    .line 41
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mStringItems:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mItems:Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mItems:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mStringItems:[Ljava/lang/String;

    .line 58
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mStringItems:[Ljava/lang/String;

    return-object v3

    .line 50
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mItems:Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxMoaVersion()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mMaxMoaVersion:I

    return v0
.end method

.method public final getMinMoaVersion()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mMinMoaVersion:I

    return v0
.end method

.method public final getNumBorders()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumBorders:I

    return v0
.end method

.method public final getNumFilters()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumFilters:I

    return v0
.end method

.method public final getNumStickers()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumStickers:I

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mOrder:I

    return v0
.end method

.method public final getReleaseDate()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mReleaseDate:J

    return-wide v0
.end method

.method public final isNeedsPurchase()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNeedsPurchase:Z

    return v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mDescription:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mIconUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public final setItems(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "items"    # Lorg/json/JSONArray;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mItems:Lorg/json/JSONArray;

    .line 139
    return-void
.end method

.method public final setItems([Ljava/lang/String;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mStringItems:[Ljava/lang/String;

    .line 143
    return-void
.end method

.method public final setNumBorders(I)V
    .locals 0
    .param p1, "mNumBorders"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumBorders:I

    .line 127
    return-void
.end method

.method public final setNumFilters(I)V
    .locals 0
    .param p1, "mNumFilters"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumFilters:I

    .line 115
    return-void
.end method

.method public final setNumStickers(I)V
    .locals 0
    .param p1, "mNumStickers"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumStickers:I

    .line 119
    return-void
.end method

.method public final setNumTools(I)V
    .locals 0
    .param p1, "mNumTools"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mNumTools:I

    .line 123
    return-void
.end method

.method public final setOrder(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/aviary/android/feather/library/plugins/ExternalType;->mOrder:I

    .line 111
    return-void
.end method
