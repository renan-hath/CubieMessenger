.class public Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;
.super Ljava/lang/Object;
.source "FortumoCheckReceiptResultDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4834448df0c65374L


# instance fields
.field private final billingState:Ljava/lang/String;

.field private final fortumoPaymentCode:Ljava/lang/String;

.field private final fortumoProductName:Ljava/lang/String;

.field private final fortumoUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "billingState"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "billingState"
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getBillingState()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 43
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;

    .line 46
    .local v0, "other":Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 47
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public getFortumoBillingState()Lcom/liquable/nemo/model/purchase/FortumoBillingState;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/model/purchase/FortumoBillingState;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/purchase/FortumoBillingState;

    move-result-object v0

    return-object v0
.end method

.method public getFortumoPaymentCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFortumoProductName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getFortumoUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 104
    const/16 v0, 0x1f

    .line 105
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 106
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 107
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 108
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 109
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 110
    return v1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FortumoCheckReceiptResultDto [billingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->billingState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoPaymentCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoPaymentCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/purchase/FortumoCheckReceiptResultDto;->fortumoProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
