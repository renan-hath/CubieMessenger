.class public Lcom/liquable/nemo/model/PurchaseDuplicateException;
.super Lcom/liquable/nemo/model/DomainException;
.source "PurchaseDuplicateException.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a5cb36c8f5702a9L


# instance fields
.field private final productId:Ljava/lang/String;

.field private final purchaseId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "purchaseId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "purchaseId"
        .end annotation
    .end param
    .param p2, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

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

    .line 50
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
    check-cast v0, Lcom/liquable/nemo/model/PurchaseDuplicateException;

    .line 36
    .local v0, "other":Lcom/liquable/nemo/model/PurchaseDuplicateException;
    iget-object v3, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 37
    iget-object v3, v0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 44
    iget-object v3, v0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "purchase_duplicate"

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 70
    const/16 v0, 0x1f

    .line 71
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 72
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 73
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 74
    return v1

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PurchaseDuplicateException [purchaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->purchaseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/PurchaseDuplicateException;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
