.class public Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseResultDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x75fe81038482eb47L


# instance fields
.field private final developerPayload:Ljava/lang/String;

.field private final notificationId:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final productType:Lcom/liquable/nemo/model/purchase/ProductType;

.field private final purchaseState:I

.field private final resultType:Lcom/liquable/nemo/model/purchase/ResultType;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/purchase/ResultType;Lcom/liquable/nemo/model/purchase/ProductType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "resultType"    # Lcom/liquable/nemo/model/purchase/ResultType;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "resultType"
        .end annotation
    .end param
    .param p2, "productType"    # Lcom/liquable/nemo/model/purchase/ProductType;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productType"
        .end annotation
    .end param
    .param p3, "notificationId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "notificationId"
        .end annotation
    .end param
    .param p4, "orderId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "orderId"
        .end annotation
    .end param
    .param p5, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
        .end annotation
    .end param
    .param p6, "purchaseState"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "purchaseState"
        .end annotation
    .end param
    .param p7, "developerPayload"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "developerPayload"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->resultType:Lcom/liquable/nemo/model/purchase/ResultType;

    .line 31
    iput-object p2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    .line 32
    iput-object p3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    .line 35
    iput p6, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->purchaseState:I

    .line 36
    iput-object p7, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;

    .line 51
    .local v0, "other":Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 59
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 66
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 73
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_c
    iget v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->purchaseState:I

    iget v4, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->purchaseState:I

    if-eq v3, v4, :cond_d

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->resultType:Lcom/liquable/nemo/model/purchase/ResultType;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->resultType:Lcom/liquable/nemo/model/purchase/ResultType;

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 86
    goto/16 :goto_0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Lcom/liquable/nemo/model/purchase/ProductType;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 121
    iget v0, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->purchaseState:I

    return v0
.end method

.method public getResultType()Lcom/liquable/nemo/model/purchase/ResultType;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->resultType:Lcom/liquable/nemo/model/purchase/ResultType;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 131
    const/16 v0, 0x1f

    .line 132
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 133
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 134
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 135
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 136
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 137
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 138
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->purchaseState:I

    add-int v1, v2, v4

    .line 139
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->resultType:Lcom/liquable/nemo/model/purchase/ResultType;

    if-nez v4, :cond_5

    :goto_5
    add-int v1, v2, v3

    .line 140
    return v1

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/ProductType;->hashCode()I

    move-result v2

    goto :goto_4

    .line 139
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->resultType:Lcom/liquable/nemo/model/purchase/ResultType;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/purchase/ResultType;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GooglePlayPurchaseResultDto [productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->notificationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", purchaseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->purchaseState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->resultType:Lcom/liquable/nemo/model/purchase/ResultType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", developerPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->developerPayload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
