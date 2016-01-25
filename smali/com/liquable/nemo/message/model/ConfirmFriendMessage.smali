.class public Lcom/liquable/nemo/message/model/ConfirmFriendMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "ConfirmFriendMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xaed6a724ade2c0bL


# instance fields
.field private final broadcaster:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "broadcaster"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "broadcaster"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;->broadcaster:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->IGNORE:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 29
    const v0, 0x7f0d011e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBroadcaster()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;->broadcaster:Z

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConfirmFriendMessage [broadcaster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/ConfirmFriendMessage;->broadcaster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
