.class public Lcom/liquable/nemo/model/friend/FriendDto;
.super Ljava/lang/Object;
.source "FriendDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6cbb9d7153730b79L


# instance fields
.field private final account:Lcom/liquable/nemo/model/account/AccountDto;

.field private final friendState:Ljava/lang/String;

.field private final friendStateBeforeBlock:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/account/AccountDto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/liquable/nemo/model/account/AccountDto;
    .param p2, "friendState"    # Ljava/lang/String;
    .param p3, "friendStateBeforeBlock"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    .line 21
    iput-object p2, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 34
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/liquable/nemo/model/friend/FriendDto;

    .line 37
    .local v0, "other":Lcom/liquable/nemo/model/friend/FriendDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v3, :cond_4

    .line 38
    iget-object v3, v0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    if-eqz v3, :cond_5

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    iget-object v4, v0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/account/AccountDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 45
    iget-object v3, v0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public getAccount()Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    return-object v0
.end method

.method public getFriendState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendStateBeforeBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 75
    const/16 v0, 0x1f

    .line 76
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 77
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 78
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 79
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 80
    :goto_2
    add-int v1, v2, v3

    .line 81
    return v1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->hashCode()I

    move-result v2

    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FriendDto [account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/friend/FriendDto;->account:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", friendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", friendStateBeforeBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/friend/FriendDto;->friendStateBeforeBlock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
