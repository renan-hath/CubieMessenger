.class public Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;
.super Ljava/lang/Object;
.source "OpenApiTransactionDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x207431c0849f101L


# instance fields
.field private final appPurchaseId:Ljava/lang/String;

.field private final currency:Ljava/lang/String;

.field private final extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final itemName:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;

.field private final openApiAppId:Ljava/lang/String;

.field private final openApiTransactionId:Ljava/lang/String;

.field private final price:Ljava/math/BigDecimal;

.field private final purchaseDate:Ljava/util/Date;

.field private final rawPrice:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/math/BigDecimal;Ljava/lang/String;)V
    .locals 0
    .param p1, "openApiTransactionId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiTransactionId"
        .end annotation
    .end param
    .param p2, "openApiAppId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiAppId"
        .end annotation
    .end param
    .param p3, "username"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "username"
        .end annotation
    .end param
    .param p4, "nickname"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "nickname"
        .end annotation
    .end param
    .param p5, "appPurchaseId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appPurchaseId"
        .end annotation
    .end param
    .param p6, "itemName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "itemName"
        .end annotation
    .end param
    .param p7, "currency"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "currency"
        .end annotation
    .end param
    .param p8, "purchaseDate"    # Ljava/util/Date;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "purchaseDate"
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "extra"
        .end annotation
    .end param
    .param p10, "price"    # Ljava/math/BigDecimal;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "price"
        .end annotation
    .end param
    .param p11, "rawPrice"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "rawPrice"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 39
    .local p9, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    .line 48
    iput-object p9, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    .line 49
    iput-object p10, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    .line 50
    iput-object p11, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 62
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;

    .line 65
    .local v0, "other":Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 66
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 73
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    if-nez v3, :cond_8

    .line 80
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    if-eqz v3, :cond_9

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 87
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 94
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 98
    goto/16 :goto_0

    .line 100
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 101
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 102
    goto/16 :goto_0

    .line 104
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 105
    goto/16 :goto_0

    .line 107
    :cond_f
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 108
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v1, v2

    .line 109
    goto/16 :goto_0

    .line 111
    :cond_10
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 112
    goto/16 :goto_0

    .line 114
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    if-nez v3, :cond_12

    .line 115
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    if-eqz v3, :cond_13

    move v1, v2

    .line 116
    goto/16 :goto_0

    .line 118
    :cond_12
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 119
    goto/16 :goto_0

    .line 121
    :cond_13
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    if-nez v3, :cond_14

    .line 122
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    if-eqz v3, :cond_15

    move v1, v2

    .line 123
    goto/16 :goto_0

    .line 125
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 126
    goto/16 :goto_0

    .line 128
    :cond_15
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 129
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    if-eqz v3, :cond_17

    move v1, v2

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_16
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move v1, v2

    .line 133
    goto/16 :goto_0

    .line 135
    :cond_17
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 136
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 137
    goto/16 :goto_0

    .line 139
    :cond_18
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 140
    goto/16 :goto_0
.end method

.method public getAppPurchaseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPurchaseDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRawPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 191
    const/16 v0, 0x1f

    .line 192
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 193
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 194
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 195
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 196
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 197
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 198
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 199
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    .line 200
    :goto_6
    add-int v1, v4, v2

    .line 201
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 202
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 203
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 204
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    if-nez v4, :cond_a

    :goto_a
    add-int v1, v2, v3

    .line 205
    return v1

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_2

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 197
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 198
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 199
    :cond_6
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 201
    :cond_7
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->hashCode()I

    move-result v2

    goto :goto_7

    .line 202
    :cond_8
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_8

    .line 203
    :cond_9
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 204
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenApiTransactionDto [openApiTransactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openApiAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appPurchaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->appPurchaseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", itemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", purchaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->price:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rawPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiTransactionDto;->rawPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
