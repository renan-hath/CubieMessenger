.class public Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;
.super Ljava/lang/Object;
.source "ReactivationStickerSystemNoticeDto.java"

# interfaces
.implements Lcom/liquable/nemo/notice/ISystemNoticeDto;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f36782957b4b842L


# instance fields
.field private final packageCode:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final publishTime:J

.field private final systemId:Ljava/lang/String;

.field private final thumbnailUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p2, "systemId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "systemId"
        .end annotation
    .end param
    .param p3, "publishTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "publishTime"
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailUrls"
        .end annotation
    .end param
    .param p6, "packageCode"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "packageCode"
        .end annotation
    .end param
    .param p7, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 33
    .local p5, "thumbnailUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    .line 36
    iput-wide p3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->publishTime:J

    .line 37
    iput-object p5, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    .line 38
    iput-object p6, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private getThumbnailUrls()Ljava/util/List;
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
    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 51
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;

    .line 54
    .local v0, "other":Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;
    iget-wide v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->publishTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->publishTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 58
    iget-object v3, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 65
    iget-object v3, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 72
    iget-object v3, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    if-nez v3, :cond_b

    .line 79
    iget-object v3, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    if-eqz v3, :cond_c

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 86
    iget-object v3, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 90
    goto/16 :goto_0
.end method

.method public getPackageCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->publishTime:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 129
    const/16 v0, 0x1f

    .line 130
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 131
    .local v1, "result":I
    iget-wide v4, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->publishTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->publishTime:J

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit8 v1, v2, 0x1f

    .line 132
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 133
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 134
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 135
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 136
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 137
    return v1

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3

    .line 136
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public resolveThumbnailUrls(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "imageEndPathDecoration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "thumbnailUrl":Ljava/lang/String;
    const-string/jumbo v3, "\\.png$"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\\.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\.jpg$"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "thumbnailUrl":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReactivationStickerSystemNoticeDto [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->publishTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->thumbnailUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->packageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/ReactivationStickerSystemNoticeDto;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
