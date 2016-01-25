.class public Lcom/liquable/nemo/status/model/WatchMessageStatus;
.super Ljava/lang/Object;
.source "WatchMessageStatus.java"

# interfaces
.implements Lcom/liquable/nemo/status/model/IChatStatus;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final DISPLAY_DURATION_IN_MS:I = 0x1388

.field private static final serialVersionUID:J = -0x3e92600633e58456L


# instance fields
.field private final auto:Ljava/lang/Boolean;

.field private final messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "messageId"
        .end annotation
    .end param
    .param p2, "auto"    # Ljava/lang/Boolean;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "auto"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    .line 33
    return-void
.end method

.method public static byDetect(Ljava/lang/String;)Lcom/liquable/nemo/status/model/WatchMessageStatus;
    .locals 2
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/status/model/WatchMessageStatus;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static byManual(Ljava/lang/String;)Lcom/liquable/nemo/status/model/WatchMessageStatus;
    .locals 2
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/status/model/WatchMessageStatus;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private isAuto()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
        include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 44
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;

    .line 47
    .local v0, "other":Lcom/liquable/nemo/status/model/WatchMessageStatus;
    iget-object v3, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    .line 48
    iget-object v3, v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 55
    iget-object v3, v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 59
    goto :goto_0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 71
    const/16 v0, 0x1f

    .line 72
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 73
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 74
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 75
    return v1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_0

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isAutoDetected()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WatchMessageStatus [messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", auto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/status/model/WatchMessageStatus;->auto:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
