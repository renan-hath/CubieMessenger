.class public Lcom/liquable/nemo/model/ads/ImageAdItemDto;
.super Ljava/lang/Object;
.source "ImageAdItemDto.java"

# interfaces
.implements Lcom/liquable/nemo/model/ads/IAdItemDto;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x345caaeef67e61e1L


# instance fields
.field private final adId:Ljava/lang/Long;

.field private final endTime:J

.field private final imageUrl:Ljava/lang/String;

.field private final linkUrl:Ljava/lang/String;

.field private final maxDisplayCount:I

.field private final startTime:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0
    .param p1, "adId"    # Ljava/lang/Long;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "adId"
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p3, "imageUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "imageUrl"
        .end annotation
    .end param
    .param p4, "linkUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "linkUrl"
        .end annotation
    .end param
    .param p5, "maxDisplayCount"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "maxDisplayCount"
        .end annotation
    .end param
    .param p6, "startTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "startTime"
        .end annotation
    .end param
    .param p8, "endTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "endTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->maxDisplayCount:I

    .line 41
    iput-wide p6, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    .line 42
    iput-wide p8, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 54
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;

    .line 57
    .local v0, "other":Lcom/liquable/nemo/model/ads/ImageAdItemDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    if-nez v3, :cond_4

    .line 58
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    if-eqz v3, :cond_5

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 75
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_a
    iget v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->maxDisplayCount:I

    iget v4, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->maxDisplayCount:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_b
    iget-wide v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    move v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 88
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 92
    goto/16 :goto_0
.end method

.method public getAdId()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDisplayCount()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 120
    iget v0, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->maxDisplayCount:I

    return v0
.end method

.method public getStartTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 135
    const/16 v0, 0x1f

    .line 136
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 137
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 138
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 139
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 140
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 141
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->maxDisplayCount:I

    add-int v1, v2, v4

    .line 142
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 143
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 144
    return v1

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isExceedDisplayCount(I)Z
    .locals 2
    .param p1, "displayCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->getMaxDisplayCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->getMaxDisplayCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExpire(Ljava/util/Date;)Z
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 158
    .local v0, "time":J
    iget-wide v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageAdItemDto [adId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->adId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", linkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxDisplayCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->maxDisplayCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
