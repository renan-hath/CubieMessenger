.class public Lcom/liquable/nemo/model/channel/PubChannelDto;
.super Ljava/lang/Object;
.source "PubChannelDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x3902d818b6ada200L


# instance fields
.field private final broadcasterNickname:Ljava/lang/String;

.field private final broadcasterUid:Ljava/lang/String;

.field private final channelKey:Ljava/lang/String;

.field private final openApiAccountId:Ljava/lang/String;

.field private final pubChannelId:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;

.field private final unsubscribeCallbackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pubChannelId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "pubChannelId"
        .end annotation
    .end param
    .param p2, "openApiAccountId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiAccountId"
        .end annotation
    .end param
    .param p3, "broadcasterUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "broadcasterUid"
        .end annotation
    .end param
    .param p4, "broadcasterNickname"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "broadcasterNickname"
        .end annotation
    .end param
    .param p5, "channelKey"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "channelKey"
        .end annotation
    .end param
    .param p6, "secretKey"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "secretKey"
        .end annotation
    .end param
    .param p7, "unsubscribeCallbackUrl"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "unsubscribeCallbackUrl"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 50
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/liquable/nemo/model/channel/PubChannelDto;

    .line 53
    .local v0, "other":Lcom/liquable/nemo/model/channel/PubChannelDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 75
    iget-object v3, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 82
    iget-object v3, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 86
    goto/16 :goto_0

    .line 88
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 89
    iget-object v3, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 90
    goto/16 :goto_0

    .line 92
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 93
    goto/16 :goto_0

    .line 95
    :cond_f
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 96
    iget-object v3, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 97
    goto/16 :goto_0

    .line 99
    :cond_10
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 100
    goto/16 :goto_0
.end method

.method public getBroadcasterNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcasterUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getPubChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsubscribeCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 135
    const/16 v0, 0x1f

    .line 136
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 137
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 138
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 139
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 140
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 141
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 142
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 143
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 144
    :goto_6
    add-int v1, v2, v3

    .line 145
    return v1

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 142
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->secretKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 143
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PubChannelDto [pubChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->pubChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openApiAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->openApiAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", broadcasterUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", broadcasterNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->broadcasterNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", channelKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->channelKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secretKey=MASKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unsubscribeCallbackUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/channel/PubChannelDto;->unsubscribeCallbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
