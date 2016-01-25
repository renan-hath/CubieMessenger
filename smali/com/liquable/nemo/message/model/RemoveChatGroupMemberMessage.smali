.class public Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "RemoveChatGroupMemberMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4e784929b2d44be2L


# instance fields
.field private destination:Lcom/liquable/nemo/endpoint/frame/Destination;

.field private final removerUid:Ljava/lang/String;

.field private final toBeRemovedName:Ljava/lang/String;

.field private final toBeRemovedUid:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p2, "removerUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "removerUid"
        .end annotation
    .end param
    .param p3, "toBeRemovedUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "toBeRemovedUid"
        .end annotation
    .end param
    .param p4, "toBeRemovedName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "toBeRemovedName"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->topic:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->removerUid:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->toBeRemovedUid:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->toBeRemovedName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static createByOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    .locals 3
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "removerUid"    # Ljava/lang/String;
    .param p2, "toBeRemovedUid"    # Ljava/lang/String;
    .param p3, "toBeRemovedName"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v1, "msg":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/Destination;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/liquable/nemo/endpoint/frame/Destination;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 25
    .local v0, "destination":Lcom/liquable/nemo/endpoint/frame/Destination;
    iput-object v0, v1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    .line 26
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->initial()V

    .line 27
    return-object v1
.end method

.method public static createForToBeRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    .locals 3
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "removerUid"    # Ljava/lang/String;
    .param p2, "toBeRemovedUid"    # Ljava/lang/String;
    .param p3, "toBeRemovedName"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v1, "msg":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 41
    .local v2, "only":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-direct {v0, p0, v2}, Lcom/liquable/nemo/endpoint/frame/Destination;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 43
    .local v0, "destination":Lcom/liquable/nemo/endpoint/frame/Destination;
    iput-object v0, v1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    .line 45
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->initial()V

    .line 47
    return-object v1
.end method


# virtual methods
.method public createDestination()Lcom/liquable/nemo/endpoint/frame/Destination;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01e8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->toBeRemovedName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->REMOVE_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 92
    const v0, 0x7f0d0374

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoverUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->removerUid:Ljava/lang/String;

    return-object v0
.end method

.method public getToBeRemovedName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->toBeRemovedName:Ljava/lang/String;

    return-object v0
.end method

.method public getToBeRemovedUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->toBeRemovedUid:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
