.class public final Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;
.super Ljava/lang/Object;
.source "HeartbeatResponse.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x659c2d633a927d8eL


# instance fields
.field private final id:Ljava/lang/String;

.field private final serverTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p2, "serverTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "serverTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->serverTime:J

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 37
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    .line 40
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 41
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->serverTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->serverTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->serverTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 63
    const/16 v0, 0x1f

    .line 64
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 65
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 66
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->serverTime:J

    iget-wide v5, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->serverTime:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 67
    return v1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HeartbeatResponse [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->serverTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
