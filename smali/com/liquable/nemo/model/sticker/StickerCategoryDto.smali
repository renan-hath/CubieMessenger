.class public Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
.super Ljava/lang/Object;
.source "StickerCategoryDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c1706b7274b8a6eL


# instance fields
.field private final code:Ljava/lang/String;

.field private final iconPath:Ljava/lang/String;

.field private final pressedIconPath:Ljava/lang/String;

.field private final thumbnailPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "code"
        .end annotation
    .end param
    .param p2, "iconPath"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iconPath"
        .end annotation
    .end param
    .param p3, "pressedIconPath"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "pressedIconPath"
        .end annotation
    .end param
    .param p4, "thumbnailPath"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailPath"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 84
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 87
    .local v0, "other":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 88
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 92
    goto :goto_0

    .line 94
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 95
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 96
    goto :goto_0

    .line 98
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 102
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 106
    goto :goto_0

    .line 108
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 109
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 113
    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPressedIconPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 143
    const/16 v0, 0x1f

    .line 144
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 145
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 146
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 147
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 148
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 149
    return v1

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public final resolveIconPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "decoration"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getIconPath()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cubie/sticker/category/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public resolvePressedIconPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "decoration"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getPressedIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getPressedIconPath()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cubie/sticker/category/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_pressed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerCategoryDto [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->iconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pressedIconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->pressedIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
