.class public Lcom/liquable/nemo/model/InAppBillingSignatureException;
.super Lcom/liquable/nemo/model/DomainException;
.source "InAppBillingSignatureException.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2bdd3ecc088793daL


# instance fields
.field private final productIdsByPurchaseId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productIdsByPurchaseId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 18
    .local p1, "productIdsByPurchaseId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 31
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/liquable/nemo/model/InAppBillingSignatureException;

    .line 34
    .local v0, "other":Lcom/liquable/nemo/model/InAppBillingSignatureException;
    iget-object v3, p0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 35
    iget-object v3, v0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    if-eqz v3, :cond_0

    move v1, v2

    .line 36
    goto :goto_0

    .line 38
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    iget-object v4, v0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 39
    goto :goto_0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "pruchase_in_app_billing_signature"

    return-object v0
.end method

.method public getProductIdsByPurchaseId()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 59
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 60
    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    .line 59
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InAppBillingSignatureException [productIdsByPurchaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/InAppBillingSignatureException;->productIdsByPurchaseId:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
