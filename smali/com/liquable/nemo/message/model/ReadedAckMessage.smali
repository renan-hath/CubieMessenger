.class public Lcom/liquable/nemo/message/model/ReadedAckMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "ReadedAckMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xaed6a724ade2c0bL


# instance fields
.field private final readedMessageId:Ljava/lang/String;

.field private final readedMessageSender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "readedMessageId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "readedMessageId"
        .end annotation
    .end param
    .param p2, "readedMessageSender"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "readedMessageSender"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/message/model/ReadedAckMessage;->readedMessageId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/liquable/nemo/message/model/ReadedAckMessage;->readedMessageSender:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public createDestination()Lcom/liquable/nemo/endpoint/frame/Destination;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v0, "only":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/message/model/ReadedAckMessage;->readedMessageSender:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/ReadedAckMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/Destination;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v1
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->IGNORE:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public getReadedMessageId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/message/model/ReadedAckMessage;->readedMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
