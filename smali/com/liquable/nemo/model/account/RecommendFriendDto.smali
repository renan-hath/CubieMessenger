.class public Lcom/liquable/nemo/model/account/RecommendFriendDto;
.super Ljava/lang/Object;
.source "RecommendFriendDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0xeda4bb4e585e382L


# instance fields
.field private final mutualFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation
.end field

.field private final recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/account/AccountDto;Ljava/util/List;)V
    .locals 1
    .param p1, "recommendFriend"    # Lcom/liquable/nemo/model/account/AccountDto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "mutualFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->mutualFriends:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    if-ne p0, p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 29
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    .line 32
    .local v0, "other":Lcom/liquable/nemo/model/account/RecommendFriendDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v3, :cond_4

    .line 33
    iget-object v3, v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    if-eqz v3, :cond_0

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/account/AccountDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 37
    goto :goto_0
.end method

.method public getMutualFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->mutualFriends:Ljava/util/List;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendFriend()Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 60
    const/16 v0, 0x1f

    .line 61
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 62
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 63
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isIconExists()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RecommendFriendDto [recommendFriend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/account/RecommendFriendDto;->recommendFriend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
