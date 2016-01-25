.class public final Lcom/liquable/nemo/model/message/OfflineMessageDto;
.super Ljava/lang/Object;
.source "OfflineMessageDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x1c8e40a39fded194L


# instance fields
.field private final data:Ljava/lang/String;

.field private final messageId:Ljava/lang/String;

.field private final receiverUid:Ljava/lang/String;

.field private final requirePush:Z

.field private final sendTime:J

.field private final senderUid:Ljava/lang/String;

.field private final sequenceId:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "messageId"
        .end annotation
    .end param
    .param p2, "senderUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "senderUid"
        .end annotation
    .end param
    .param p3, "receiverUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "receiverUid"
        .end annotation
    .end param
    .param p4, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p5, "data"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .param p6, "requirePush"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "requirePush"
        .end annotation
    .end param
    .param p7, "sendTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sendTime"
        .end annotation
    .end param
    .param p9, "sequenceId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sequenceId"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->requirePush:Z

    .line 45
    iput-wide p7, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sendTime:J

    .line 46
    iput-object p9, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 89
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;

    .line 94
    .local v0, "that":Lcom/liquable/nemo/model/message/OfflineMessageDto;
    iget-boolean v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->requirePush:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->requirePush:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_4
    iget-wide v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sendTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sendTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 101
    goto :goto_0

    .line 100
    :cond_7
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 103
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 104
    goto :goto_0

    .line 103
    :cond_a
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 106
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 107
    goto :goto_0

    .line 106
    :cond_d
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 109
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    .line 110
    goto :goto_0

    .line 109
    :cond_10
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 112
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 113
    goto/16 :goto_0

    .line 112
    :cond_13
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 115
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 116
    goto/16 :goto_0

    .line 115
    :cond_15
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sendTime:J

    return-wide v0
.end method

.method public getSenderUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 125
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 126
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 127
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 129
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->requirePush:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_5
    add-int v0, v3, v2

    .line 130
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sendTime:J

    iget-wide v5, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sendTime:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 132
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 124
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 125
    goto :goto_1

    :cond_3
    move v2, v1

    .line 126
    goto :goto_2

    :cond_4
    move v2, v1

    .line 127
    goto :goto_3

    :cond_5
    move v2, v1

    .line 128
    goto :goto_4

    :cond_6
    move v2, v1

    .line 129
    goto :goto_5
.end method

.method public isRequirePush()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->requirePush:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OfflineMessageDto{messageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", senderUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->senderUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", receiverUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->receiverUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", topic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requirePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->requirePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequenceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineMessageDto;->sequenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
