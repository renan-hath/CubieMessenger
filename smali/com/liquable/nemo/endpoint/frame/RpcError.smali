.class public final Lcom/liquable/nemo/endpoint/frame/RpcError;
.super Ljava/lang/Object;
.source "RpcError.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final VERSION_INCOMPATIBLE_CODE:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x798e1189c2ca3042L


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final error:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final serverVersion:Lcom/liquable/nemo/NemoVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x63

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->VERSION_INCOMPATIBLE_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/liquable/nemo/NemoVersion;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p2, "error"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "error"
        .end annotation
    .end param
    .param p3, "code"    # Ljava/lang/Integer;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "code"
        .end annotation
    .end param
    .param p4, "serverVersion"    # Lcom/liquable/nemo/NemoVersion;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "serverVersion"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "id must not null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 45
    if-eqz p4, :cond_1

    :goto_1
    const-string/jumbo v0, "serverVersion must not null"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    .line 48
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v1, v2

    .line 45
    goto :goto_1
.end method

.method public static versionIncompatible(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/NemoVersion;)Lcom/liquable/nemo/endpoint/frame/RpcError;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "serverVersion"    # Lcom/liquable/nemo/NemoVersion;

    .prologue
    .line 24
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/RpcError;

    sget-object v1, Lcom/liquable/nemo/endpoint/frame/RpcError;->VERSION_INCOMPATIBLE_CODE:Ljava/lang/Integer;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/liquable/nemo/endpoint/frame/RpcError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/liquable/nemo/NemoVersion;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 61
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/RpcError;

    .line 64
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/RpcError;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    if-nez v3, :cond_4

    .line 65
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 72
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 79
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v3, :cond_a

    .line 86
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-eqz v3, :cond_0

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/NemoVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public getCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()Lcom/liquable/nemo/NemoVersion;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 113
    const/16 v0, 0x1f

    .line 114
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 115
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 116
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 117
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 118
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 119
    return v1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 118
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v3}, Lcom/liquable/nemo/NemoVersion;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isVersionIncompatible()Z
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/liquable/nemo/endpoint/frame/RpcError;->VERSION_INCOMPATIBLE_CODE:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RpcError [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/RpcError;->serverVersion:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
