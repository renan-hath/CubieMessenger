.class public Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "LeaveChatGroupMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2955e4840da9003L


# instance fields
.field private final topic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;->topic:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;
    .locals 1
    .param p0, "topic"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, "msg":Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;->initial()V

    .line 16
    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01e2

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

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LEAVE_CHAT_GROUP:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 41
    const v0, 0x7f0d0370

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
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
