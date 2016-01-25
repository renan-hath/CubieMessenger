.class public Lcom/liquable/nemo/model/sticker/StickerShopDto;
.super Ljava/lang/Object;
.source "StickerShopDto.java"

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
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private final revision:J

.field private final stickerVersion:I

.field private final tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerTabDto;",
            ">;"
        }
    .end annotation
.end field

.field private final upgradeNotice:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
            value = "tabs"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "items"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerTabDto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 40
    .local p5, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerTabDto;>;"
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->stickerVersion:I

    .line 42
    iput-wide p2, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->revision:J

    .line 43
    iput-object p4, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    .line 45
    iput-object p6, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 57
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;

    .line 60
    .local v0, "other":Lcom/liquable/nemo/model/sticker/StickerShopDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    if-nez v3, :cond_4

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    if-eqz v3, :cond_5

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->revision:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->revision:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_6
    iget v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->stickerVersion:I

    iget v4, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->stickerVersion:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    if-nez v3, :cond_8

    .line 74
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    if-eqz v3, :cond_9

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 81
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getRevision()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->revision:J

    return-wide v0
.end method

.method public getStickerItemByPackageCode(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .locals 3
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 102
    .local v0, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    .end local v0    # "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStickerItemsByTab(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "tabCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 112
    .local v1, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTabCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v1    # "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    :cond_1
    return-object v0
.end method

.method public final getStickerVersion()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 121
    iget v0, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->stickerVersion:I

    return v0
.end method

.method public final getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerTabDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public final getUpgradeNotice()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 136
    const/16 v0, 0x1f

    .line 137
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 138
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 139
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->revision:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->revision:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 140
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->stickerVersion:I

    add-int v1, v2, v4

    .line 141
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 142
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 143
    return v1

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerShopDto [stickerVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->stickerVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->revision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", upgradeNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->upgradeNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->tabs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerShopDto;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
