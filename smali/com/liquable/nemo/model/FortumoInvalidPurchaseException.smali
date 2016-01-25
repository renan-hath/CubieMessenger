.class public Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;
.super Lcom/liquable/nemo/model/DomainException;
.source "FortumoInvalidPurchaseException.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x511b0bb0f3200c56L


# instance fields
.field private final fortumoPaymentCode:Ljava/lang/String;

.field private final fortumoProductName:Ljava/lang/String;

.field private final fortumoUserId:Ljava/lang/String;

.field private final productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
        .end annotation
    .end param
    .param p2, "fortumoUserId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fortumoUserId"
        .end annotation
    .end param
    .param p3, "fortumoPaymentCode"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fortumoPaymentCode"
        .end annotation
    .end param
    .param p4, "fortumoProductName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fortumoProductName"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 37
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;

    .line 40
    .local v0, "other":Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 41
    iget-object v3, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 48
    iget-object v3, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 55
    iget-object v3, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 62
    iget-object v3, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 66
    goto :goto_0
.end method

.method public getFortumoPaymentCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFortumoProductName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getFortumoUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 89
    const-string/jumbo v0, "fortumo_exception"

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 99
    const/16 v0, 0x1f

    .line 100
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 101
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 102
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 103
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 104
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 105
    return v1

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 104
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FortumoInvalidPurchaseException [productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoPaymentCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoPaymentCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/FortumoInvalidPurchaseException;->fortumoProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
