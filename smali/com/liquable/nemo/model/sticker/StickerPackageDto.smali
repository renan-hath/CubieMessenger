.class public Lcom/liquable/nemo/model/sticker/StickerPackageDto;
.super Ljava/lang/Object;
.source "StickerPackageDto.java"

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
.field private static final serialVersionUID:J = 0x4c4cfb682c42058fL


# instance fields
.field private final code:Ljava/lang/String;

.field private final stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerDto;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "code"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "stickers"
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerDto;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 35
    .local p2, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerDto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    if-nez v3, :cond_3

    move v1, v2

    .line 50
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 53
    .local v0, "other":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    if-nez v3, :cond_6

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    if-eqz v3, :cond_7

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getStickers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 94
    const/16 v0, 0x1f

    .line 95
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 96
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 97
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 98
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 99
    return v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerPackageDto [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stickers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->stickers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
