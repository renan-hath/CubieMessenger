.class public final Lcom/liquable/nemo/model/account/CompositeUid;
.super Ljava/lang/Object;
.source "CompositeUid.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "!"

.field private static final serialVersionUID:J = -0x718b43b2a89b75f7L


# instance fields
.field private final parentUid:Ljava/lang/String;

.field private final subAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parentUid"    # Ljava/lang/String;
    .param p2, "subId"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/model/account/SubIdType;->detect(Ljava/lang/String;)Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    return-object v0
.end method

.method public static ofOpenApiAppSender(Ljava/lang/String;)Lcom/liquable/nemo/model/account/CompositeUid;
    .locals 2
    .param p0, "parentUid"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/liquable/nemo/model/account/CompositeUid;

    const-string/jumbo v1, "10000"

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/model/account/CompositeUid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ofPubChannelBroadcaster(Ljava/lang/String;)Lcom/liquable/nemo/model/account/CompositeUid;
    .locals 2
    .param p0, "broadcasterUid"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/liquable/nemo/model/account/CompositeUid;

    const-string/jumbo v1, "20000"

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/model/account/CompositeUid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseLenient(Ljava/lang/String;)Lcom/liquable/nemo/model/account/CompositeUid;
    .locals 6
    .param p0, "rawUid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    const-string/jumbo v2, "!"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "split":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 70
    new-instance v1, Lcom/liquable/nemo/model/account/CompositeUid;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/model/account/CompositeUid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    array-length v2, v0

    if-ne v2, v5, :cond_0

    .line 72
    new-instance v2, Lcom/liquable/nemo/model/account/CompositeUid;

    aget-object v3, v0, v4

    invoke-direct {v2, v3, v1}, Lcom/liquable/nemo/model/account/CompositeUid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static parseStrict(Ljava/lang/String;)Lcom/liquable/nemo/model/account/CompositeUid;
    .locals 4
    .param p0, "rawUid"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->parseLenient(Ljava/lang/String;)Lcom/liquable/nemo/model/account/CompositeUid;

    move-result-object v0

    .line 79
    .local v0, "parseLenient":Lcom/liquable/nemo/model/account/CompositeUid;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malform uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 80
    return-object v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 110
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/liquable/nemo/model/account/CompositeUid;

    .line 113
    .local v0, "other":Lcom/liquable/nemo/model/account/CompositeUid;
    iget-object v3, p0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 114
    iget-object v3, v0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 115
    goto :goto_0

    .line 117
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 121
    iget-object v3, v0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 125
    goto :goto_0
.end method

.method public getParentUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubAccountId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 156
    const/16 v0, 0x1f

    .line 157
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 158
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 159
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 160
    return v1

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/account/CompositeUid;->subAccountId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isRequiringSinglePresence()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubAccount()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportC2dm()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->PARENT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportReceivingMessage()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->PARENT:Lcom/liquable/nemo/model/account/SubIdType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportReceivingPush()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->PARENT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportSenderNotInMember()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->OPEN_API_APP_SENDER:Lcom/liquable/nemo/model/account/SubIdType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->PUB_CHANNEL_BROADCASTER:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportSessionKey()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportUniqueDeviceId()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->PARENT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWeakenOfflineMessage()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubIdType()Lcom/liquable/nemo/model/account/SubIdType;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/model/account/CompositeUid;->getSubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/model/account/CompositeUid;->parentUid:Ljava/lang/String;

    goto :goto_0
.end method
