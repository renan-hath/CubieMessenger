.class public Lcom/liquable/nemo/message/model/CallLogMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "CallLogMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f68fa8393ceaa13L


# instance fields
.field private final duration:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .param p1, "duration"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "duration"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/liquable/nemo/message/model/CallLogMessage;->duration:J

    .line 29
    return-void
.end method

.method public static createBySender(J)Lcom/liquable/nemo/message/model/CallLogMessage;
    .locals 1
    .param p0, "duration"    # J

    .prologue
    .line 17
    new-instance v0, Lcom/liquable/nemo/message/model/CallLogMessage;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/model/CallLogMessage;-><init>(J)V

    .line 18
    .local v0, "msg":Lcom/liquable/nemo/message/model/CallLogMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/CallLogMessage;->initial()V

    .line 19
    return-object v0
.end method

.method private getDuration()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/CallLogMessage;->duration:J

    return-wide v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/CallLogMessage;->getContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CallLogMessage;->getDurationInMinutes()I

    move-result v0

    .line 39
    .local v0, "min":I
    const v1, 0x7f0d036b

    .line 40
    .local v1, "resId":I
    const v2, 0x7f0d036b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDurationInMinutes()I
    .locals 5
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/CallLogMessage;->duration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/CallLogMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CALL_LOG_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->CALL_LOG_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v0, "---"

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CallLogMessage [duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/CallLogMessage;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
