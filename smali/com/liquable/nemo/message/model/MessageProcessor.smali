.class public Lcom/liquable/nemo/message/model/MessageProcessor;
.super Ljava/lang/Object;
.source "MessageProcessor.java"


# static fields
.field private static INSTANCE:Lcom/liquable/nemo/message/model/MessageProcessor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/message/model/MessageProcessor;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/message/model/MessageProcessor;->INSTANCE:Lcom/liquable/nemo/message/model/MessageProcessor;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/liquable/nemo/message/model/MessageProcessor;

    invoke-direct {v0}, Lcom/liquable/nemo/message/model/MessageProcessor;-><init>()V

    sput-object v0, Lcom/liquable/nemo/message/model/MessageProcessor;->INSTANCE:Lcom/liquable/nemo/message/model/MessageProcessor;

    .line 13
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageProcessor;->INSTANCE:Lcom/liquable/nemo/message/model/MessageProcessor;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "messageInfo"    # Lcom/liquable/nemo/message/model/MessageInfo;

    .prologue
    .line 21
    invoke-static {}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->getInstance()Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->decode(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/liquable/nemo/message/model/IDomainMessage;)Ljava/lang/String;
    .locals 1
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 25
    invoke-static {}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->getInstance()Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->encode(Lcom/liquable/nemo/message/model/IDomainMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fromReceiveText(Lcom/liquable/nemo/endpoint/frame/ReceiveText;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 6
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    .prologue
    .line 29
    new-instance v0, Lcom/liquable/nemo/message/model/MessageInfo;

    .line 30
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->getDestination()Lcom/liquable/nemo/endpoint/frame/Destination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/Destination;->getTopic()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    .line 32
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->getSendTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 33
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->getSenderUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/model/MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 34
    .local v0, "messageInfo":Lcom/liquable/nemo/message/model/MessageInfo;
    invoke-static {}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->getInstance()Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/ReceiveText;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->decode(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    return-object v1
.end method

.method public toSendText(Lcom/liquable/nemo/message/model/IDomainMessage;)Lcom/liquable/nemo/endpoint/frame/SendText;
    .locals 5
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 38
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->createDestination()Lcom/liquable/nemo/endpoint/frame/Destination;

    move-result-object v2

    .line 40
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/MessageProcessor;->encode(Lcom/liquable/nemo/message/model/IDomainMessage;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->requirePush()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/endpoint/frame/SendText;-><init>(Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/Destination;Ljava/lang/String;Z)V

    return-object v0
.end method
