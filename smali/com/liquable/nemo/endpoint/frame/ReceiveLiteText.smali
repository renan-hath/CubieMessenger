.class public final Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;
.super Ljava/lang/Object;
.source "ReceiveLiteText.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x47c186e7404fce62L


# instance fields
.field private final data:Ljava/lang/String;

.field private final messageId:Ljava/lang/String;

.field private final sendTime:J

.field private final senderUid:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
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
    .param p3, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p4, "data"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .param p5, "sendTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sendTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "senderUid should not be null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 31
    if-eqz p3, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "topic should not be null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 32
    if-eqz p2, :cond_2

    :goto_2
    const-string/jumbo v0, "messageId should not be null"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 33
    iput-wide p5, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->sendTime:J

    .line 34
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0

    :cond_1
    move v0, v2

    .line 31
    goto :goto_1

    :cond_2
    move v1, v2

    .line 32
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 49
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    .line 52
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 53
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 60
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_7
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->sendTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->sendTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 70
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 77
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 81
    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->sendTime:J

    return-wide v0
.end method

.method public getSenderUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 111
    const/16 v0, 0x1f

    .line 112
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 113
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 114
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 115
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->sendTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->sendTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 116
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 117
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 118
    return v1

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 117
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReceiveLiteText [data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", senderUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->senderUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->sendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
