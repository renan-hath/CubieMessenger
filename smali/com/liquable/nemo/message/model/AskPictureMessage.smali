.class public Lcom/liquable/nemo/message/model/AskPictureMessage;
.super Lcom/liquable/nemo/message/model/AskMessage;
.source "AskPictureMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d81dd30e2c4ee4cL


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/AskMessage;-><init>()V

    .line 24
    return-void
.end method

.method public static createBySender()Lcom/liquable/nemo/message/model/AskPictureMessage;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/liquable/nemo/message/model/AskPictureMessage;

    invoke-direct {v0}, Lcom/liquable/nemo/message/model/AskPictureMessage;-><init>()V

    .line 15
    .local v0, "message":Lcom/liquable/nemo/message/model/AskPictureMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AskPictureMessage;->initial()V

    .line 16
    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/AskPictureMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->ASK_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 41
    const v0, 0x7f0d031a

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

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "AskPictureMessage"

    return-object v0
.end method
