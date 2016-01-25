.class public Lcom/liquable/nemo/model/account/AccountDto;
.super Ljava/lang/Object;
.source "AccountDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0xeda4bb4e585e382L


# instance fields
.field private final email:Ljava/lang/String;

.field private final iconExists:Z

.field private final isBroadcaster:Z

.field private final lastUpdateTime:J

.field private final nickname:Ljava/lang/String;

.field private final phone:Ljava/lang/String;

.field private final uid:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "iconExists"    # Z
    .param p7, "lastUpdateTime"    # J
    .param p9, "isBroadcaster"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/liquable/nemo/model/account/AccountDto;->phone:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/liquable/nemo/model/account/AccountDto;->email:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/liquable/nemo/model/account/AccountDto;->nickname:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/liquable/nemo/model/account/AccountDto;->username:Ljava/lang/String;

    .line 37
    iput-boolean p6, p0, Lcom/liquable/nemo/model/account/AccountDto;->iconExists:Z

    .line 38
    iput-wide p7, p0, Lcom/liquable/nemo/model/account/AccountDto;->lastUpdateTime:J

    .line 39
    iput-boolean p9, p0, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster:Z

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 51
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/liquable/nemo/model/account/AccountDto;

    .line 54
    .local v0, "other":Lcom/liquable/nemo/model/account/AccountDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 55
    iget-object v3, v0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 59
    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->lastUpdateTime:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 103
    const/16 v0, 0x1f

    .line 104
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 105
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 106
    return v1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBroadcaster()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster:Z

    return v0
.end method

.method public isIconExists()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/liquable/nemo/model/account/AccountDto;->iconExists:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccountDto [uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->iconExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isBroadcaster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
