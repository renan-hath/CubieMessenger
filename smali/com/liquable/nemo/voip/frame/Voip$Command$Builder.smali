.class public final Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$Command;",
        "Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

.field private dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

.field private exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

.field private ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

.field private pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

.field private receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

.field private receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

.field private stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 29
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 32
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 35
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 38
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 41
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 44
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 47
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 51
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->maybeForceBuilderInitialization()V

    .line 52
    return-void
.end method

.method static synthetic access$1000()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    .line 57
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$Command;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 60
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 5

    .prologue
    .line 65
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$Command;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 66
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$Command;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 67
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 68
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 69
    or-int/lit8 v2, v2, 0x1

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$102(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 72
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 73
    or-int/lit8 v2, v2, 0x2

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$202(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 76
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 77
    or-int/lit8 v2, v2, 0x4

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$302(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 80
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 81
    or-int/lit8 v2, v2, 0x8

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$402(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 84
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 85
    or-int/lit8 v2, v2, 0x10

    .line 87
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$502(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 88
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 89
    or-int/lit8 v2, v2, 0x20

    .line 91
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$602(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 92
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 93
    or-int/lit8 v2, v2, 0x40

    .line 95
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$702(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 96
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 97
    or-int/lit16 v2, v2, 0x80

    .line 99
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$802(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 100
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Command;->access$902(Lcom/liquable/nemo/voip/frame/Voip$Command;I)I

    .line 101
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 107
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 108
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 109
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 110
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 111
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 112
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 113
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 114
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 115
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 116
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 117
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 118
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 119
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 120
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 121
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 122
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 123
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 137
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    .line 138
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 144
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 150
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 156
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    :cond_4
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 162
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :cond_5
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 168
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    :cond_6
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 174
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    :cond_7
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 180
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$Command;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    .line 205
    :cond_0
    return-object p0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-object v2, v0

    .line 199
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 3
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$Command;

    .prologue
    .line 210
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object p0

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDial()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    .line 215
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Dial;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v2

    if-eq v1, v2, :cond_9

    .line 216
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 223
    :goto_1
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 225
    .end local v0    # "value":Lcom/liquable/nemo/voip/frame/Voip$Dial;
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDialResponse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDialResponse()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    .line 227
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v2

    if-eq v1, v2, :cond_a

    .line 228
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 235
    :goto_2
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 237
    .end local v0    # "value":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceive()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    .line 239
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Receive;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v2

    if-eq v1, v2, :cond_b

    .line 240
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 247
    :goto_3
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 249
    .end local v0    # "value":Lcom/liquable/nemo/voip/frame/Voip$Receive;
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceiveResponse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceiveResponse()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    .line 251
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v2

    if-eq v1, v2, :cond_c

    .line 252
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 259
    :goto_4
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 261
    .end local v0    # "value":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    :cond_5
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasStateChange()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getStateChange()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    .line 263
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v2

    if-eq v1, v2, :cond_d

    .line 264
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 271
    :goto_5
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 273
    .end local v0    # "value":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    :cond_6
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasExchangeKey()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 274
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getExchangeKey()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    .line 275
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v2

    if-eq v1, v2, :cond_e

    .line 276
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 283
    :goto_6
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 285
    .end local v0    # "value":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    :cond_7
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 286
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    .line 287
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Ping;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v2

    if-eq v1, v2, :cond_f

    .line 288
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v1

    .line 289
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 295
    :goto_7
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 297
    .end local v0    # "value":Lcom/liquable/nemo/voip/frame/Voip$Ping;
    :cond_8
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPong()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPong()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    .line 299
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Pong;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v2

    if-eq v1, v2, :cond_10

    .line 300
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v1

    .line 301
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 307
    :goto_8
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 220
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Dial;
    :cond_9
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    goto/16 :goto_1

    .line 232
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    :cond_a
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    goto/16 :goto_2

    .line 244
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Receive;
    :cond_b
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    goto/16 :goto_3

    .line 256
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    :cond_c
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    goto/16 :goto_4

    .line 268
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    :cond_d
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    goto/16 :goto_5

    .line 280
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    :cond_e
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    goto :goto_6

    .line 292
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Ping;
    :cond_f
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    goto :goto_7

    .line 304
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Pong;
    :cond_10
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    goto :goto_8
.end method

.method public setDial(Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 331
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 332
    return-object p0
.end method

.method public setDial(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 321
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 322
    return-object p0
.end method

.method public setDialResponse(Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 354
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 355
    return-object p0
.end method

.method public setDialResponse(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 344
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 345
    return-object p0
.end method

.method public setExchangeKey(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 377
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 378
    return-object p0
.end method

.method public setExchangeKey(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 365
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 367
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 368
    return-object p0
.end method

.method public setPing(Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 400
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 401
    return-object p0
.end method

.method public setPing(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 390
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 391
    return-object p0
.end method

.method public setPong(Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    .prologue
    .line 421
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 423
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 424
    return-object p0
.end method

.method public setPong(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 413
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 414
    return-object p0
.end method

.method public setReceive(Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 446
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 447
    return-object p0
.end method

.method public setReceive(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 434
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 436
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 437
    return-object p0
.end method

.method public setReceiveResponse(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 469
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 470
    return-object p0
.end method

.method public setReceiveResponse(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 459
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 460
    return-object p0
.end method

.method public setStateChange(Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    .prologue
    .line 490
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 492
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 493
    return-object p0
.end method

.method public setStateChange(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 480
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 482
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->bitField0_:I

    .line 483
    return-object p0
.end method
