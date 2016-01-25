.class public Lcom/liquable/nemo/model/account/SubAccountSessionDto;
.super Ljava/lang/Object;
.source "SubAccountSessionDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = 0x6f6ab1cab51c1afbL


# instance fields
.field private final expireDate:J

.field private final parentUid:Ljava/lang/String;

.field private final sessionKey:Ljava/lang/String;

.field private final subId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "parentUid"    # Ljava/lang/String;
    .param p2, "subId"    # Ljava/lang/String;
    .param p3, "sessionKey"    # Ljava/lang/String;
    .param p4, "expireDate"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    .line 19
    iput-wide p4, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->expireDate:J

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 58
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
    check-cast v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;

    .line 34
    .local v0, "other":Lcom/liquable/nemo/model/account/SubAccountSessionDto;
    iget-wide v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->expireDate:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->expireDate:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 35
    goto :goto_0

    .line 37
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 38
    iget-object v3, v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 45
    iget-object v3, v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public getExpireDate()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->expireDate:J

    return-wide v0
.end method

.method public getParentUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSubId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 79
    const/16 v0, 0x1f

    .line 80
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 81
    .local v1, "result":I
    iget-wide v4, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->expireDate:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->expireDate:J

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit8 v1, v2, 0x1f

    .line 82
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 83
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 84
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 85
    return v1

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toCompositeUid()Lcom/liquable/nemo/model/account/CompositeUid;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/liquable/nemo/model/account/CompositeUid;

    iget-object v1, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/account/CompositeUid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubAccountSessionDto [parentUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->parentUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->subId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expireDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/account/SubAccountSessionDto;->expireDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
