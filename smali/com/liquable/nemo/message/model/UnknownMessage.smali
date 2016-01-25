.class public Lcom/liquable/nemo/message/model/UnknownMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "UnknownMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6465e469df5c1994L


# instance fields
.field private final originalContent:Ljava/lang/String;

.field private final unknownHidden:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "originalContent"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "originalContent"
        .end annotation
    .end param
    .param p2, "unknownHidden"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "unknownHidden"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/message/model/UnknownMessage;->originalContent:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/liquable/nemo/message/model/UnknownMessage;->unknownHidden:Z

    .line 37
    return-void
.end method

.method public static fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/UnknownMessage;
    .locals 1
    .param p0, "originalContent"    # Ljava/lang/String;
    .param p1, "messageInfo"    # Lcom/liquable/nemo/message/model/MessageInfo;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/liquable/nemo/message/model/UnknownMessage;->fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;Z)Lcom/liquable/nemo/message/model/UnknownMessage;

    move-result-object v0

    return-object v0
.end method

.method public static fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;Z)Lcom/liquable/nemo/message/model/UnknownMessage;
    .locals 1
    .param p0, "originalContent"    # Ljava/lang/String;
    .param p1, "messageInfo"    # Lcom/liquable/nemo/message/model/MessageInfo;
    .param p2, "unknownHidden"    # Z

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/message/model/UnknownMessage;

    invoke-direct {v0, p0, p2}, Lcom/liquable/nemo/message/model/UnknownMessage;-><init>(Ljava/lang/String;Z)V

    .line 22
    .local v0, "unknownMessage":Lcom/liquable/nemo/message/model/UnknownMessage;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/model/UnknownMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01e9

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
    .line 48
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/UnknownMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->UNKNOWN_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->UNKNOWN_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 56
    const v0, 0x7f0d04e8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/message/model/UnknownMessage;->originalContent:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/UnknownMessage;->unknownHidden:Z

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UnknownMessage [originalContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/UnknownMessage;->originalContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
