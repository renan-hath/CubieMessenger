.class public Lcom/liquable/nemo/model/sticker/StickerRootDto;
.super Ljava/lang/Object;
.source "StickerRootDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x572d74f9b50d6752L


# instance fields
.field private final canNotVisiblePackageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final canSends:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerCategoryDto;",
            ">;"
        }
    .end annotation
.end field

.field private final revision:J

.field private final stickerVersion:I

.field private final upgradeNotice:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p1, "stickerVersion"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "stickerVersion"
        .end annotation
    .end param
    .param p2, "revision"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "revision"
        .end annotation
    .end param
    .param p4, "upgradeNotice"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "upgradeNotice"
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "categories"
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "canSends"
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "canNotVisiblePackageCodes"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerCategoryDto;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 49
    .local p5, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerCategoryDto;>;"
    .local p6, "canSends":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p7, "canNotVisiblePackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->stickerVersion:I

    .line 51
    iput-wide p2, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->revision:J

    .line 52
    iput-object p4, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    .line 54
    iput-object p6, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    .line 55
    iput-object p7, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public canSend(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCanSends()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    .local v0, "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const/4 v1, 0x1

    .line 64
    .end local v0    # "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canVisible(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCanNotVisiblePackageCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCanNotVisiblePackageCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 83
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    .line 86
    .local v0, "other":Lcom/liquable/nemo/model/sticker/StickerRootDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    if-nez v3, :cond_4

    .line 87
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    if-eqz v3, :cond_5

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    if-nez v3, :cond_6

    .line 94
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    if-eqz v3, :cond_7

    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    if-nez v3, :cond_8

    .line 101
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    if-eqz v3, :cond_9

    move v1, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 105
    goto :goto_0

    .line 107
    :cond_9
    iget-wide v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->revision:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->revision:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    move v1, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_a
    iget v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->stickerVersion:I

    iget v4, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->stickerVersion:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 114
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 115
    goto :goto_0

    .line 117
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public final getCanNotVisiblePackageCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    return-object v0
.end method

.method public final getCanSends()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    return-object v0
.end method

.method public final getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerCategoryDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    return-object v0
.end method

.method public final getRevision()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->revision:J

    return-wide v0
.end method

.method public final getStickerVersion()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 145
    iget v0, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->stickerVersion:I

    return v0
.end method

.method public final getUpgradeNotice()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 155
    const/16 v0, 0x1f

    .line 156
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 157
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    if-nez v2, :cond_0

    move v2, v3

    .line 158
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 159
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 160
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 161
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->revision:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->revision:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 162
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->stickerVersion:I

    add-int v1, v2, v4

    .line 163
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 164
    return v1

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    .line 158
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_1

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2

    .line 163
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerRootDto [stickerVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->stickerVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->revision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", upgradeNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->upgradeNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canSends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSends:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canNotVisiblePackageCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canNotVisiblePackageCodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
