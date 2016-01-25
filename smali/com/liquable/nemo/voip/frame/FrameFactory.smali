.class public final Lcom/liquable/nemo/voip/frame/FrameFactory;
.super Ljava/lang/Object;
.source "FrameFactory.java"


# instance fields
.field private final voipHmac:Lcom/liquable/nemo/voip/frame/VoipHmac;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "hmacSecretKey"    # [B

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/liquable/nemo/voip/frame/VoipHmac;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/voip/frame/VoipHmac;-><init>([B)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/FrameFactory;->voipHmac:Lcom/liquable/nemo/voip/frame/VoipHmac;

    .line 66
    return-void
.end method

.method private buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 4
    .param p1, "commandBuilder"    # Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    .line 70
    .local v0, "command":Lcom/liquable/nemo/voip/frame/Voip$Command;
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/FrameFactory;->voipHmac:Lcom/liquable/nemo/voip/frame/VoipHmac;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/voip/frame/VoipHmac;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 71
    .local v1, "hmac":Lcom/google/protobuf/ByteString;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setCommand(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setHmacSha1(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v2

    return-object v2
.end method

.method public static dumpString(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Ljava/lang/String;
    .locals 6
    .param p0, "frame"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const-string/jumbo v4, "Frame:null"

    .line 58
    :goto_0
    return-object v4

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasCommand()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    .line 27
    .local v0, "command":Lcom/liquable/nemo/voip/frame/Voip$Command;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDial()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/Dial:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDialId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDialResponse()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDialResponse()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v2

    .line 31
    .local v2, "response":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/DialResponse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "UnknownStatus"

    goto :goto_1

    .line 33
    .end local v2    # "response":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    :cond_3
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/Ping:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getPingId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPong()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/Pong:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPong()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getPingId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 37
    :cond_5
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/Receive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceive()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getReceiverUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 39
    :cond_6
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceiveResponse()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 40
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceiveResponse()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v2

    .line 41
    .local v2, "response":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/ReceiveResponse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "UnknownStatus"

    goto :goto_2

    .line 43
    .end local v2    # "response":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    :cond_8
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasStateChange()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 44
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getStateChange()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v3

    .line 45
    .local v3, "stateChange":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/StateChange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->hasType()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getType()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "UnknownType"

    goto :goto_3

    .line 47
    .end local v3    # "stateChange":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    :cond_a
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasExchangeKey()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 48
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getExchangeKey()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v1

    .line 49
    .local v1, "exchangeKey":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Command/ExchangeKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->hasType()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "UnknownType"

    goto :goto_4

    .line 54
    .end local v0    # "command":Lcom/liquable/nemo/voip/frame/Voip$Command;
    .end local v1    # "exchangeKey":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    :cond_c
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasPacket()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame/Packet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getPacket()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 58
    :cond_d
    const-string/jumbo v4, "Frame:unknown"

    goto/16 :goto_0
.end method


# virtual methods
.method public dial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "dialerUid"    # Ljava/lang/String;
    .param p3, "receiverUid"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->setDialerUid(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1, p3}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->setReceiverUid(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    .line 79
    .local v0, "diailerBuilder":Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setDial(Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v1

    return-object v1
.end method

.method public dialResponse(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .prologue
    .line 83
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->setStatus(Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setDialResponse(Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/frame/FrameFactory;->buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public dialResponseFailed(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 3
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .prologue
    .line 89
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    if-ne p2, v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v1

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v2

    .line 95
    invoke-virtual {v2, p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v2

    .line 96
    invoke-virtual {v2, p2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->setStatus(Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setDialResponse(Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setCommand(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 97
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setHmacSha1(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public packet(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 1
    .param p1, "bytes"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 102
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setPacket(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public ping(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "pingId"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->setPingId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setPing(Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/frame/FrameFactory;->buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public pong(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2
    .param p1, "ping"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 112
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->setPing(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setPong(Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/frame/FrameFactory;->buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public receive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "receiveId"    # Ljava/lang/String;
    .param p3, "receiverUid"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->setReceiveId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1, p3}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->setReceiverUid(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setReceive(Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/frame/FrameFactory;->buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public receiveResponse(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2
    .param p1, "receiveId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .prologue
    .line 123
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->setStatus(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->setReceiveId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    .line 127
    .local v0, "responseBuilder":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setReceiveResponse(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v1

    return-object v1
.end method

.method public receiveResponseFailed(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 3
    .param p1, "receiveId"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .prologue
    .line 131
    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    if-ne p2, v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 135
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->setStatus(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->setReceiveId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    .line 139
    .local v0, "responseBuilder":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setReceiveResponse(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setCommand(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 141
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setHmacSha1(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v1

    return-object v1
.end method

.method public stateChange(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .prologue
    .line 146
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->setType(Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->setStateChange(Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/frame/FrameFactory;->buildCommandFrame(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public validateHmac(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Z
    .locals 5
    .param p1, "frame"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasCommand()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "could not check not command frame"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDialResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDialResponse()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    if-eq v3, v4, :cond_2

    .line 173
    :cond_1
    :goto_0
    return v2

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceiveResponse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceiveResponse()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    if-ne v3, v4, :cond_1

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/FrameFactory;->voipHmac:Lcom/liquable/nemo/voip/frame/VoipHmac;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/voip/frame/VoipHmac;->digest([B)[B

    move-result-object v0

    .line 171
    .local v0, "myHmacSha1":[B
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getHmacSha1()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 173
    .local v1, "senderHmacSha1":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0
.end method
