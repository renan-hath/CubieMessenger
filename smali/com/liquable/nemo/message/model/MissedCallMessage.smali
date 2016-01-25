.class public Lcom/liquable/nemo/message/model/MissedCallMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "MissedCallMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43bab4631842d347L


# instance fields
.field private final callTime:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .param p1, "callTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "callTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/liquable/nemo/message/model/MissedCallMessage;->callTime:J

    .line 27
    return-void
.end method

.method public static createBySender(J)Lcom/liquable/nemo/message/model/MissedCallMessage;
    .locals 1
    .param p0, "callTime"    # J

    .prologue
    .line 15
    new-instance v0, Lcom/liquable/nemo/message/model/MissedCallMessage;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/model/MissedCallMessage;-><init>(J)V

    .line 16
    .local v0, "msg":Lcom/liquable/nemo/message/model/MissedCallMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/MissedCallMessage;->initial()V

    .line 17
    return-object v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const v0, 0x7f0d01e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/MissedCallMessage;->callTime:J

    return-wide v0
.end method

.method public getContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 40
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/MissedCallMessage;->callTime:J

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v5, v4

    .line 40
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v6

    .line 44
    .local v6, "shortDateTime":Ljava/lang/CharSequence;
    const v0, 0x7f0d0372

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->MISSED_CALL_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 55
    const v0, 0x7f0d0371

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
