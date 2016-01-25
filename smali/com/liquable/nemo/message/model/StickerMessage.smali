.class public Lcom/liquable/nemo/message/model/StickerMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "StickerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c55309b8610b7edL


# instance fields
.field private final code:Ljava/lang/String;

.field private state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

.field private final stickerVersion:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "code"
        .end annotation
    .end param
    .param p2, "stickerVersion"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "stickerVersion"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 28
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->PENDING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    .line 37
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "code should not be null"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 38
    iput p2, p0, Lcom/liquable/nemo/message/model/StickerMessage;->stickerVersion:I

    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/message/model/StickerMessage;->code:Ljava/lang/String;

    .line 40
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/StickerMessage;
    .locals 2
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/message/model/StickerMessage;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/message/model/StickerMessage;-><init>(Ljava/lang/String;I)V

    .line 22
    .local v0, "message":Lcom/liquable/nemo/message/model/StickerMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/StickerMessage;->initial()V

    .line 23
    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/StickerMessage;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "_"

    const-string/jumbo v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

.method public getCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/StickerMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->STICKER_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->STICKER_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 62
    const v0, 0x7f0d0327

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getPackageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStickerVersion()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->stickerVersion:I

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->stickerVersion:I

    goto :goto_0
.end method

.method public getTransferState()Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isTransferring()Z
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/StickerMessage;->getTransferState()Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerMessage [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/StickerMessage;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateTransferAsComplete()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    .line 107
    return-void
.end method

.method public final updateTransferAsNotFound()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    if-ne v0, v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_FOUND:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    goto :goto_0
.end method

.method public final updateTransferAsNotVisible()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    if-ne v0, v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_VISIBLE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    goto :goto_0
.end method

.method public updateTransferAsPending()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    if-ne v0, v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->PENDING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    goto :goto_0
.end method

.method public updateTransferAsReady()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    if-ne v0, v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->READY:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    goto :goto_0
.end method

.method public final updateTransferAsTransfering(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    if-ne v0, v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/StickerMessage;->state:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    goto :goto_0
.end method
