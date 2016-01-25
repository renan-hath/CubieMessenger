.class public Lcom/liquable/nemo/model/purchase/DeveloperPayload;
.super Ljava/lang/Object;
.source "DeveloperPayload.java"


# instance fields
.field private final productType:Lcom/liquable/nemo/model/purchase/ProductType;

.field private final receiverUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/purchase/ProductType;Ljava/lang/String;)V
    .locals 0
    .param p1, "productType"    # Lcom/liquable/nemo/model/purchase/ProductType;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productType"
        .end annotation
    .end param
    .param p2, "receiverUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "receiverUid"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    .line 21
    iput-object p2, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 33
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;

    .line 36
    .local v0, "other":Lcom/liquable/nemo/model/purchase/DeveloperPayload;
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 40
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public getProductType()Lcom/liquable/nemo/model/purchase/ProductType;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    return-object v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 61
    const/16 v0, 0x1f

    .line 62
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 63
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 64
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 65
    return v1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/ProductType;->hashCode()I

    move-result v2

    goto :goto_0

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeveloperPayload [productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->productType:Lcom/liquable/nemo/model/purchase/ProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", receiverUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->receiverUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
