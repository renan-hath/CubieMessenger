.class public final Lcom/liquable/nemo/endpoint/frame/LoginError;
.super Ljava/lang/Object;
.source "LoginError.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final code:I

.field private final error:Ljava/lang/String;

.field private final sequenceId:Ljava/lang/Long;

.field private final serverVersion:Lcom/liquable/nemo/NemoVersion;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/liquable/nemo/NemoVersion;Ljava/lang/Long;)V
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
    .param p4, "sequenceId"    # Ljava/lang/Long;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sequenceId"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "code should >=0"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 44
    invoke-static {p2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v3, "error is required"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 45
    if-eqz p3, :cond_3

    :goto_2
    const-string/jumbo v0, "serverVersion is required"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 46
    iput p1, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->code:I

    .line 47
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    .line 49
    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .end local p4    # "sequenceId":Ljava/lang/Long;
    :cond_0
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    .line 50
    return-void

    .restart local p4    # "sequenceId":Ljava/lang/Long;
    :cond_1
    move v0, v2

    .line 43
    goto :goto_0

    :cond_2
    move v0, v2

    .line 44
    goto :goto_1

    :cond_3
    move v1, v2

    .line 45
    goto :goto_2
.end method

.method public constructor <init>(Lcom/liquable/nemo/endpoint/frame/LoginErrorType;Ljava/lang/String;Lcom/liquable/nemo/NemoVersion;Ljava/lang/Long;)V
    .locals 1
    .param p1, "type"    # Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "serverVersion"    # Lcom/liquable/nemo/NemoVersion;
    .param p4, "sequenceId"    # Ljava/lang/Long;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->getCode()I

    move-result v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/liquable/nemo/endpoint/frame/LoginError;-><init>(ILjava/lang/String;Lcom/liquable/nemo/NemoVersion;Ljava/lang/Long;)V

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/endpoint/frame/LoginError;

    if-nez v3, :cond_3

    move v1, v2

    .line 68
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/LoginError;

    .line 71
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/LoginError;
    iget v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->code:I

    iget v4, v0, Lcom/liquable/nemo/endpoint/frame/LoginError;->code:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 75
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    if-nez v3, :cond_7

    .line 82
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    if-eqz v3, :cond_8

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v3, :cond_9

    .line 89
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-eqz v3, :cond_0

    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/NemoVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 93
    goto :goto_0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    return-object v0
.end method

.method public getServerVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 112
    const/16 v0, 0x1f

    .line 113
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 114
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->code:I

    add-int/lit8 v1, v2, 0x1f

    .line 115
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 116
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 117
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 118
    return v1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_1

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3}, Lcom/liquable/nemo/NemoVersion;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LoginError [serverVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/liquable/nemo/endpoint/frame/LoginErrorType;
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginError;->code:I

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->getByCode(I)Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    move-result-object v0

    return-object v0
.end method
