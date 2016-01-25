.class public Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;
.super Ljava/lang/Object;
.source "OpenApiTransactionSumDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x169a261d0a74267aL


# instance fields
.field private final currency:Ljava/lang/String;

.field private final openApiAppId:Ljava/lang/String;

.field private final totalCount:J

.field private final totalPrice:Ljava/math/BigDecimal;

.field private final yearMonth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/math/BigDecimal;)V
    .locals 0
    .param p1, "openApiAppId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiAppId"
        .end annotation
    .end param
    .param p2, "yearMonth"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "yearMonth"
        .end annotation
    .end param
    .param p3, "currency"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "currency"
        .end annotation
    .end param
    .param p4, "totalCount"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "totalCount"
        .end annotation
    .end param
    .param p6, "totalPrice"    # Ljava/math/BigDecimal;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "totalPrice"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    .line 28
    iput-wide p4, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalCount:J

    .line 29
    iput-object p6, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 41
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;

    .line 44
    .local v0, "other":Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 45
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_7
    iget-wide v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalCount:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalCount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    if-nez v3, :cond_9

    .line 62
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    if-eqz v3, :cond_a

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalCount:J

    return-wide v0
.end method

.method public getTotalPrice()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getYearMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 100
    const/16 v0, 0x1f

    .line 101
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 102
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 103
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 104
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalCount:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalCount:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 105
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 106
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 107
    return v1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->currency:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->totalPrice:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->hashCode()I

    move-result v2

    goto :goto_2

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionSumDto;->yearMonth:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method
