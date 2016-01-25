.class public final Lcom/liquable/nemo/endpoint/frame/Login;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final clientVersion:Lcom/liquable/nemo/NemoVersion;

.field private final device:Ljava/lang/String;

.field private final sequenceId:Ljava/lang/Long;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/NemoVersion;Ljava/lang/Long;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .param p2, "device"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "device"
        .end annotation
    .end param
    .param p3, "clientVersion"    # Lcom/liquable/nemo/NemoVersion;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "clientVersion"
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "uid should not be null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 35
    if-eqz p3, :cond_2

    :goto_1
    const-string/jumbo v0, "version should not be null"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    .line 37
    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .end local p4    # "sequenceId":Ljava/lang/Long;
    :cond_0
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    .line 38
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    .line 40
    return-void

    .restart local p4    # "sequenceId":Ljava/lang/Long;
    :cond_1
    move v0, v2

    .line 34
    goto :goto_0

    :cond_2
    move v1, v2

    .line 35
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/endpoint/frame/Login;

    if-nez v3, :cond_3

    move v1, v2

    .line 51
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/Login;

    .line 54
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/Login;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v3, :cond_4

    .line 55
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    if-eqz v3, :cond_5

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/NemoVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 62
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    if-nez v3, :cond_8

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    if-eqz v3, :cond_9

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 76
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 80
    goto :goto_0
.end method

.method public getClientVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 104
    const/16 v0, 0x1f

    .line 105
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 106
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 107
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 108
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 109
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 110
    return v1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v2}, Lcom/liquable/nemo/NemoVersion;->hashCode()I

    move-result v2

    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_2

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Login [uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/Login;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/Login;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/Login;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/Login;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
