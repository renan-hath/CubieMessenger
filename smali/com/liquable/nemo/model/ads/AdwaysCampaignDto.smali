.class public Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;
.super Ljava/lang/Object;
.source "AdwaysCampaignDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3c2dd6cb521e6daeL


# instance fields
.field private final advertisementPoint:I

.field private final detail:Ljava/lang/String;

.field private final icon:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final location:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final remark:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "advertisementPoint"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "advertisementPoint"
        .end annotation
    .end param
    .param p2, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "name"
        .end annotation
    .end param
    .param p4, "icon"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "icon"
        .end annotation
    .end param
    .param p5, "location"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "location"
        .end annotation
    .end param
    .param p6, "detail"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "detail"
        .end annotation
    .end param
    .param p7, "remark"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "remark"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->advertisementPoint:I

    .line 37
    iput-object p2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 102
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
    check-cast v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;

    .line 57
    .local v0, "other":Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;
    iget v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->advertisementPoint:I

    iget v4, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->advertisementPoint:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 75
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 82
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 89
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    if-eqz v3, :cond_e

    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 93
    goto/16 :goto_0

    .line 95
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 96
    iget-object v3, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 97
    goto/16 :goto_0

    .line 99
    :cond_f
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 100
    goto/16 :goto_0
.end method

.method public getAdvertisementPoint()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->advertisementPoint:I

    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 142
    const/16 v0, 0x1f

    .line 143
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 144
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->advertisementPoint:I

    add-int/lit8 v1, v2, 0x1f

    .line 145
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 146
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 147
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 148
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 149
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 150
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    if-nez v4, :cond_5

    :goto_5
    add-int v1, v2, v3

    .line 151
    return v1

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 150
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdwaysCampaignDto [advertisementPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->advertisementPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
