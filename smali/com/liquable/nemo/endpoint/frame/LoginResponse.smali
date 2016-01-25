.class public final Lcom/liquable/nemo/endpoint/frame/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x246662fac428d813L


# instance fields
.field private final clientIP:Ljava/lang/String;

.field private final sequenceId:Ljava/lang/Long;

.field private final serverVersion:Lcom/liquable/nemo/NemoVersion;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/NemoVersion;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p1, "serverVersion"    # Lcom/liquable/nemo/NemoVersion;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "serverVersion"
        .end annotation
    .end param
    .param p2, "sequenceId"    # Ljava/lang/Long;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sequenceId"
        .end annotation
    .end param
    .param p3, "clientIP"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "clientIP"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "serverVersion is required"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    .line 45
    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2    # "sequenceId":Ljava/lang/Long;
    :cond_0
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    .line 46
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    .line 47
    return-void

    .line 43
    .restart local p2    # "sequenceId":Ljava/lang/Long;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 58
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;

    .line 61
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/LoginResponse;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 62
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    if-nez v3, :cond_6

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    if-eqz v3, :cond_7

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v3, :cond_8

    .line 76
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/NemoVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 80
    goto :goto_0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    return-object v0
.end method

.method public getServerVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 99
    const/16 v0, 0x1f

    .line 100
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 101
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 102
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 103
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 104
    return v1

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_1

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3}, Lcom/liquable/nemo/NemoVersion;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LoginResponse [serverVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientIP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->clientIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
