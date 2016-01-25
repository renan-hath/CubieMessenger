.class public Lcom/liquable/nemo/endpoint/frame/StopConnection;
.super Ljava/lang/Object;
.source "StopConnection.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d034c1236071ce7L


# instance fields
.field private final code:I

.field private final error:Ljava/lang/String;

.field private final serverVersion:Lcom/liquable/nemo/NemoVersion;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/liquable/nemo/NemoVersion;)V
    .locals 4
    .param p1, "code"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "code"
        .end annotation
    .end param
    .param p2, "error"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "error"
        .end annotation
    .end param
    .param p3, "serverVersion"    # Lcom/liquable/nemo/NemoVersion;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "serverVersion"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "code should >=0"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 30
    invoke-static {p2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "error is required"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 31
    if-eqz p3, :cond_2

    :goto_2
    const-string/jumbo v0, "serverVersion is required"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 32
    iput p1, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->code:I

    .line 33
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    .line 35
    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0

    :cond_1
    move v0, v2

    .line 30
    goto :goto_1

    :cond_2
    move v1, v2

    .line 31
    goto :goto_2
.end method

.method public static presenceOverride(Ljava/lang/String;Lcom/liquable/nemo/NemoVersion;)Lcom/liquable/nemo/endpoint/frame/StopConnection;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "serverVersion"    # Lcom/liquable/nemo/NemoVersion;

    .prologue
    .line 15
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/StopConnection;

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->PRESENCE_OVERRIDED:Lcom/liquable/nemo/endpoint/frame/StopConnectionType;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/frame/StopConnectionType;->getCode()I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Lcom/liquable/nemo/endpoint/frame/StopConnection;-><init>(ILjava/lang/String;Lcom/liquable/nemo/NemoVersion;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/endpoint/frame/StopConnection;

    if-nez v3, :cond_3

    move v1, v2

    .line 46
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/StopConnection;

    .line 49
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/StopConnection;
    iget v3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->code:I

    iget v4, v0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->code:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 53
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v3, :cond_7

    .line 60
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-eqz v3, :cond_0

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/NemoVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 64
    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->code:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 83
    const/16 v0, 0x1f

    .line 84
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 85
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->code:I

    add-int/lit8 v1, v2, 0x1f

    .line 86
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 87
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 88
    return v1

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3}, Lcom/liquable/nemo/NemoVersion;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StopConnection [serverVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/StopConnection;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
