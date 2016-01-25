.class public Lcom/liquable/nemo/model/sticker/StickerDto;
.super Ljava/lang/Object;
.source "StickerDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2e5383f797b7d3deL


# instance fields
.field private final code:Ljava/lang/String;

.field private final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final height:I

.field private final thumbnailPath:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "code"
        .end annotation
    .end param
    .param p2, "width"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "width"
        .end annotation
    .end param
    .param p3, "height"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "height"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "frames"
        .end annotation
    .end param
    .param p5, "thumbnailPath"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailPath"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 71
    .local p4, "frames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->width:I

    .line 74
    iput p3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->height:I

    .line 75
    iput-object p4, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    .line 76
    iput-object p5, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 88
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 91
    .local v0, "other":Lcom/liquable/nemo/model/sticker/StickerDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 92
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 96
    goto :goto_0

    .line 98
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    if-nez v3, :cond_6

    .line 99
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    if-eqz v3, :cond_7

    move v1, v2

    .line 100
    goto :goto_0

    .line 102
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_7
    iget v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->height:I

    iget v4, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->height:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 106
    goto :goto_0

    .line 108
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 109
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_a
    iget v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->width:I

    iget v4, v0, Lcom/liquable/nemo/model/sticker/StickerDto;->width:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 133
    iget v0, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->height:I

    return v0
.end method

.method public final getThumbnailPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 143
    iget v0, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 148
    const/16 v0, 0x1f

    .line 149
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 150
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 151
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 152
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->height:I

    add-int v1, v2, v4

    .line 153
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 154
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->width:I

    add-int v1, v2, v3

    .line 155
    return v1

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public final resolvePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageCode"    # Ljava/lang/String;
    .param p2, "decoration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cubie/sticker/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/sticker_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v1
.end method

.method public final resolveThumbnailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageCode"    # Ljava/lang/String;
    .param p2, "decoration"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cubie/sticker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mini_sticker_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerDto [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->frames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
