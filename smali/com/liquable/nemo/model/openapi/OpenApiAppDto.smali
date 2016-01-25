.class public Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
.super Ljava/lang/Object;
.source "OpenApiAppDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5713a516e0bcb63L


# instance fields
.field private final apkUrl:Ljava/lang/String;

.field private final appBundle:Ljava/lang/String;

.field private final appPackage:Ljava/lang/String;

.field private final iPadStoreId:Ljava/lang/String;

.field private final iPadStoreUrl:Ljava/lang/String;

.field private final iPhoneStoreId:Ljava/lang/String;

.field private final iPhoneStoreUrl:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final openApiAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "openApiAppId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiAppId"
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "name"
        .end annotation
    .end param
    .param p3, "imageUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "imageUrl"
        .end annotation
    .end param
    .param p4, "appPackage"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appPackage"
        .end annotation
    .end param
    .param p5, "apkUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "apkUrl"
        .end annotation
    .end param
    .param p6, "appBundle"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appBundle"
        .end annotation
    .end param
    .param p7, "iPhoneStoreId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPhoneStoreId"
        .end annotation
    .end param
    .param p8, "iPhoneStoreUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPhoneStoreUrl"
        .end annotation
    .end param
    .param p9, "iPadStoreId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPadStoreId"
        .end annotation
    .end param
    .param p10, "iPadStoreUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPadStoreUrl"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    .line 52
    iput-object p10, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 66
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    .line 69
    .local v0, "other":Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 70
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 77
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 84
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 91
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 92
    goto :goto_0

    .line 94
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 98
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 102
    goto/16 :goto_0

    .line 104
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 105
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 106
    goto/16 :goto_0

    .line 108
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 109
    goto/16 :goto_0

    .line 111
    :cond_f
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 112
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v1, v2

    .line 113
    goto/16 :goto_0

    .line 115
    :cond_10
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 116
    goto/16 :goto_0

    .line 118
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 119
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_13

    move v1, v2

    .line 120
    goto/16 :goto_0

    .line 122
    :cond_12
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 123
    goto/16 :goto_0

    .line 125
    :cond_13
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 126
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    if-eqz v3, :cond_15

    move v1, v2

    .line 127
    goto/16 :goto_0

    .line 129
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_15
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 133
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 134
    goto/16 :goto_0

    .line 136
    :cond_16
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 137
    goto/16 :goto_0
.end method

.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBundle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getiPadStoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getiPadStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getiPhoneStoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getiPhoneStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 184
    const/16 v0, 0x1f

    .line 185
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 186
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 187
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 188
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 189
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 190
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 191
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 192
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 193
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 194
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 195
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    if-nez v4, :cond_9

    :goto_9
    add-int v1, v2, v3

    .line 196
    return v1

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 190
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 191
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 192
    :cond_6
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 193
    :cond_7
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 194
    :cond_8
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 195
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenApiAppDto [openApiAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appBundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->apkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPhoneStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPhoneStoreUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPhoneStoreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPadStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPadStoreUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->iPadStoreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
