.class public Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "AddChatGroupMemberMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cecd569255fabe7L


# instance fields
.field private final friendUid:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p2, "friendUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "friendUid"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->topic:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->friendUid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static createBySender(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;
    .locals 1
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .local v0, "msg":Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->initial()V

    .line 16
    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01db

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public getFriendUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->friendUid:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ADD_CHAT_GROUP_MEMBER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 50
    const v0, 0x7f0d036a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
