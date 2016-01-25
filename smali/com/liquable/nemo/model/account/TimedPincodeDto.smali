.class public Lcom/liquable/nemo/model/account/TimedPincodeDto;
.super Ljava/lang/Object;
.source "TimedPincodeDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x7eb6ed8523e3b731L


# instance fields
.field private final pincode:Ljava/lang/String;

.field private final remainSeconds:I

.field private final totalSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pincode"    # Ljava/lang/String;
    .param p2, "totalSeconds"    # I
    .param p3, "remainSeconds"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p3, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->remainSeconds:I

    .line 17
    iput p2, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->totalSeconds:I

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/model/account/TimedPincodeDto;

    if-nez v3, :cond_3

    move v1, v2

    .line 30
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 32
    check-cast v0, Lcom/liquable/nemo/model/account/TimedPincodeDto;

    .line 33
    .local v0, "other":Lcom/liquable/nemo/model/account/TimedPincodeDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 34
    iget-object v3, v0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 35
    goto :goto_0

    .line 37
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->remainSeconds:I

    iget v4, v0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->remainSeconds:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_6
    iget v3, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->totalSeconds:I

    iget v4, v0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->totalSeconds:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public getPincode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainSeconds()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->remainSeconds:I

    return v0
.end method

.method public getTotalSeconds()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->totalSeconds:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 63
    const/16 v0, 0x1f

    .line 64
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 65
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 66
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->remainSeconds:I

    add-int v1, v2, v3

    .line 67
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->totalSeconds:I

    add-int v1, v2, v3

    .line 68
    return v1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TimedPincodeDto [remainSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->remainSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", totalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->totalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pincode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/TimedPincodeDto;->pincode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
