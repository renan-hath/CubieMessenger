.class public final Lcom/liquable/nemo/endpoint/frame/ReceiveText;
.super Ljava/lang/Object;
.source "ReceiveText.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a3c906bffc2c07dL


# instance fields
.field private final data:Ljava/lang/String;

.field private final destination:Lcom/liquable/nemo/endpoint/frame/Destination;

.field private final messageId:Ljava/lang/String;

.field private final requirePush:Z

.field private final sendTime:J

.field private final senderUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/Destination;Ljava/lang/String;ZJ)V
    .locals 4
    .param p1, "senderUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "senderUid"
        .end annotation
    .end param
    .param p2, "messageId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "messageId"
        .end annotation
    .end param
    .param p3, "destination"    # Lcom/liquable/nemo/endpoint/frame/Destination;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "destination"
        .end annotation
    .end param
    .param p4, "data"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .param p5, "requirePush"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "requirePush"
        .end annotation
    .end param
    .param p6, "sendTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sendTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "senderUid should not be null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 42
    if-eqz p3, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "destination should not be null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 43
    if-eqz p2, :cond_2

    :goto_2
    const-string/jumbo v0, "messageId should not be null"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 44
    iput-wide p6, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->sendTime:J

    .line 45
    iput-boolean p5, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    .line 46
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    .line 49
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v0, v2

    .line 42
    goto :goto_1

    :cond_2
    move v1, v2

    .line 43
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    if-nez v3, :cond_3

    move v1, v2

    .line 61
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    .line 64
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/ReceiveText;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 65
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-nez v3, :cond_6

    .line 72
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-eqz v3, :cond_7

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/endpoint/frame/Destination;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 79
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_9
    iget-boolean v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_a
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->sendTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->sendTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 92
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 96
    goto :goto_0
.end method

.method public equalsWithoutSendTime(Lcom/liquable/nemo/endpoint/frame/ReceiveText;)Z
    .locals 4
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 109
    iget-object v2, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-nez v2, :cond_5

    .line 116
    iget-object v2, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-eqz v2, :cond_6

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    iget-object v3, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/endpoint/frame/Destination;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 120
    goto :goto_0

    .line 122
    :cond_6
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 123
    iget-object v2, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 124
    goto :goto_0

    .line 126
    :cond_7
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :cond_8
    iget-boolean v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    iget-boolean v3, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_9
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 133
    iget-object v2, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_a
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    iget-object v3, p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Lcom/liquable/nemo/endpoint/frame/Destination;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->sendTime:J

    return-wide v0
.end method

.method public getSenderUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 168
    const/16 v0, 0x1f

    .line 169
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 170
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 171
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 172
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 173
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    :goto_3
    add-int v1, v4, v2

    .line 174
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->sendTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->sendTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 175
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 176
    return v1

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/Destination;->hashCode()I

    move-result v2

    goto :goto_1

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 173
    :cond_3
    const/16 v2, 0x4d5

    goto :goto_3

    .line 175
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isRequirePush()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReceiveText [data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", senderUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->senderUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requirePush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->requirePush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->sendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
