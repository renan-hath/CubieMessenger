.class public final Lcom/liquable/nemo/endpoint/frame/RpcRequest;
.super Ljava/lang/Object;
.source "RpcRequest.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x412c7b01050db8c7L


# instance fields
.field private final clientVersion:Lcom/liquable/nemo/NemoVersion;

.field private final id:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final params:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/NemoVersion;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p2, "method"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "method"
        .end annotation
    .end param
    .param p3, "params"    # [Ljava/lang/Object;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "params"
        .end annotation
    .end param
    .param p4, "clientVersion"    # Lcom/liquable/nemo/NemoVersion;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "clientVersion"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "id must not null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 51
    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v3, "method must not null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 52
    if-eqz p4, :cond_3

    :goto_2
    const-string/jumbo v0, "clientVersion must not null"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    .line 55
    if-nez p3, :cond_0

    new-array p3, v2, [Ljava/lang/Object;

    .end local p3    # "params":[Ljava/lang/Object;
    :cond_0
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->params:[Ljava/lang/Object;

    .line 56
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    .line 57
    return-void

    .restart local p3    # "params":[Ljava/lang/Object;
    :cond_1
    move v0, v2

    .line 50
    goto :goto_0

    :cond_2
    move v0, v2

    .line 51
    goto :goto_1

    :cond_3
    move v1, v2

    .line 52
    goto :goto_2
.end method


# virtual methods
.method public cloneParams()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->params:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 72
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;

    .line 75
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/RpcRequest;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v3, :cond_4

    .line 76
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    if-eqz v3, :cond_5

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/NemoVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 83
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 90
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 94
    goto :goto_0

    .line 96
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->params:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->params:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public getClientVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 116
    const/16 v0, 0x1f

    .line 117
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 118
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 119
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 120
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 121
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->params:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 122
    return v1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v2}, Lcom/liquable/nemo/NemoVersion;->hashCode()I

    move-result v2

    goto :goto_0

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RpcRequest [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->params:[Ljava/lang/Object;

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcRequest;->clientVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
