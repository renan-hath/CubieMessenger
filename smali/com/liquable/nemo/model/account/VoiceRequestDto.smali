.class public Lcom/liquable/nemo/model/account/VoiceRequestDto;
.super Ljava/lang/Object;
.source "VoiceRequestDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = 0x2f30dfcfb0054d7aL


# instance fields
.field private final formattedPhoneNumber:Ljava/lang/String;

.field private final pincode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "formattedPhoneNumber"    # Ljava/lang/String;
    .param p2, "pincode"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 26
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/liquable/nemo/model/account/VoiceRequestDto;

    .line 29
    .local v0, "other":Lcom/liquable/nemo/model/account/VoiceRequestDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 30
    iget-object v3, v0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 31
    goto :goto_0

    .line 33
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 37
    iget-object v3, v0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 41
    goto :goto_0
.end method

.method public getFormattedPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPincode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 59
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 60
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 61
    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoiceRequestDto [formattedPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->formattedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pincode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/VoiceRequestDto;->pincode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
