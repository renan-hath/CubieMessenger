.class public Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;
.super Ljava/lang/Object;
.source "AdwaysCampaignRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EXPIRE_IN_ONE_DAY:I = 0x5265c00

.field private static final serialVersionUID:J = -0x697db8377d80fdf3L


# instance fields
.field private final campaignId:Ljava/lang/String;

.field private final createTime:J

.field private final packageCode:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final productName:Ljava/lang/String;

.field private final thumbnailPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "campaignId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "campaignId"
        .end annotation
    .end param
    .param p2, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
        .end annotation
    .end param
    .param p3, "productName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productName"
        .end annotation
    .end param
    .param p4, "packageCode"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "packageCode"
        .end annotation
    .end param
    .param p5, "thumbnailPath"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailPath"
        .end annotation
    .end param
    .param p6, "createTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "createTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    .line 37
    iput-wide p6, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->createTime:J

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 49
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;

    .line 52
    .local v0, "other":Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 53
    iget-object v3, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->createTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->createTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 63
    iget-object v3, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 70
    iget-object v3, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 77
    iget-object v3, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 84
    iget-object v3, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 88
    goto/16 :goto_0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->createTime:J

    return-wide v0
.end method

.method public getPackageCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 125
    const/16 v0, 0x1f

    .line 126
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 127
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->createTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->createTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 129
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 130
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 131
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 132
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 133
    return v1

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 132
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getCreateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdwaysCampaignRecord [campaignId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->campaignId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->packageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
