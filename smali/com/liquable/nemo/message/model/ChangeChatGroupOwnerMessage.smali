.class public Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "ChangeChatGroupOwnerMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x50a82df7b730afa1L


# instance fields
.field private final nextOwnerUid:Ljava/lang/String;

.field private final previousOwnerUid:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p2, "nextOwnerUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "nextOwnerUid"
        .end annotation
    .end param
    .param p3, "previousOwnerUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "previousOwnerUid"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->topic:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->previousOwnerUid:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->nextOwnerUid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;
    .locals 1
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "nextOwnerUid"    # Ljava/lang/String;
    .param p2, "previousOwnerUid"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v0, "msg":Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->initial()V

    .line 19
    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->IGNORE:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public getNextOwnerUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->nextOwnerUid:Ljava/lang/String;

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPreviousOwnerUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->previousOwnerUid:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/message/model/ChangeChatGroupOwnerMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public isUnknownHidden()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
