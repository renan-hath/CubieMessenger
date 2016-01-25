.class public final Lcom/liquable/nemo/endpoint/frame/RpcResponse;
.super Ljava/lang/Object;
.source "RpcResponse.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3904177fb4e575e1L


# instance fields
.field private final id:Ljava/lang/String;

.field private final result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/Object;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "result"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "id must not null"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    .line 46
    return-void

    .line 43
    :cond_0
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

    .line 50
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 57
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    .line 60
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/RpcResponse;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 65
    goto :goto_0

    .line 68
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 88
    const/16 v0, 0x1f

    .line 89
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 90
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 91
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 92
    return v1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "resultStr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RpcResponse [id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    .end local v0    # "resultStr":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->result:Ljava/lang/Object;

    .line 98
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
