.class public Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;
.super Ljava/lang/Object;
.source "OpenApiAppFullDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x5713a516e0bcb63L


# instance fields
.field private final apkUrl:Ljava/lang/String;

.field private final appBundle:Ljava/lang/String;

.field private final appKey:Ljava/lang/String;

.field private final appPackage:Ljava/lang/String;

.field private final iPadStoreId:Ljava/lang/String;

.field private final iPadStoreUrl:Ljava/lang/String;

.field private final iPhoneStoreId:Ljava/lang/String;

.field private final iPhoneStoreUrl:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final openApiAppId:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;

.field private final signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "openApiAppId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiAppId"
        .end annotation
    .end param
    .param p2, "appKey"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appKey"
        .end annotation
    .end param
    .param p3, "secretKey"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "secretKey"
        .end annotation
    .end param
    .param p4, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "name"
        .end annotation
    .end param
    .param p5, "imageUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "imageUrl"
        .end annotation
    .end param
    .param p6, "appPackage"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appPackage"
        .end annotation
    .end param
    .param p7, "apkUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "apkUrl"
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "signatures"
        .end annotation
    .end param
    .param p9, "appBundle"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appBundle"
        .end annotation
    .end param
    .param p10, "iPhoneStoreId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPhoneStoreId"
        .end annotation
    .end param
    .param p11, "iPhoneStoreUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPhoneStoreUrl"
        .end annotation
    .end param
    .param p12, "iPadStoreId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPadStoreId"
        .end annotation
    .end param
    .param p13, "iPadStoreUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iPadStoreUrl"
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 49
    .local p8, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    .line 56
    iput-object p9, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    .line 57
    iput-object p10, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    .line 58
    iput-object p11, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    .line 59
    iput-object p12, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    .line 60
    iput-object p13, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 74
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;

    .line 77
    .local v0, "other":Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 78
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 85
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 92
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 96
    goto :goto_0

    .line 98
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 99
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 100
    goto :goto_0

    .line 102
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 106
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 110
    goto/16 :goto_0

    .line 112
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 113
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 114
    goto/16 :goto_0

    .line 116
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 117
    goto/16 :goto_0

    .line 119
    :cond_f
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 120
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v1, v2

    .line 121
    goto/16 :goto_0

    .line 123
    :cond_10
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 124
    goto/16 :goto_0

    .line 126
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 127
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    if-eqz v3, :cond_13

    move v1, v2

    .line 128
    goto/16 :goto_0

    .line 130
    :cond_12
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 131
    goto/16 :goto_0

    .line 133
    :cond_13
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 134
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_15

    move v1, v2

    .line 135
    goto/16 :goto_0

    .line 137
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 138
    goto/16 :goto_0

    .line 140
    :cond_15
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 141
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    if-eqz v3, :cond_17

    move v1, v2

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_16
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move v1, v2

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_17
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 148
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    if-eqz v3, :cond_19

    move v1, v2

    .line 149
    goto/16 :goto_0

    .line 151
    :cond_18
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    move v1, v2

    .line 152
    goto/16 :goto_0

    .line 154
    :cond_19
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 155
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    if-eqz v3, :cond_1b

    move v1, v2

    .line 156
    goto/16 :goto_0

    .line 158
    :cond_1a
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    move v1, v2

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_1b
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    if-nez v3, :cond_1c

    .line 162
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    if-eqz v3, :cond_0

    move v1, v2

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_1c
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 166
    goto/16 :goto_0
.end method

.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBundle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
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

    .prologue
    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    return-object v0
.end method

.method public getiPadStoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getiPadStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getiPhoneStoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getiPhoneStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 225
    const/16 v0, 0x1f

    .line 226
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 227
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 228
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 229
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 230
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 231
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 232
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 233
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 234
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 235
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 236
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 237
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 238
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 239
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    if-nez v4, :cond_c

    :goto_c
    add-int v1, v2, v3

    .line 240
    return v1

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 231
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 232
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 233
    :cond_6
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 234
    :cond_7
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 235
    :cond_8
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 236
    :cond_9
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 237
    :cond_a
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    .line 238
    :cond_b
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    .line 239
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenApiAppFullDto [openApiAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appBundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->apkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPhoneStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPhoneStoreUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPhoneStoreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPadStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iPadStoreUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->iPadStoreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secretKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->secretKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiAppFullDto;->signatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
