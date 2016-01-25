.class public Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;
.super Ljava/lang/Object;
.source "OpenApiUserAccessTokenDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3d30e74db92de517L


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expireTime:J

.field private final openApiAppId:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .param p2, "openApiAppId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "openApiAppId"
        .end annotation
    .end param
    .param p3, "accessToken"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "accessToken"
        .end annotation
    .end param
    .param p4, "expireTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "expireTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    .line 33
    iput-wide p4, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->expireTime:J

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 45
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

    .line 48
    .local v0, "other":Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 49
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_5
    iget-wide v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->expireTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->expireTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 59
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 66
    iget-object v3, v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 70
    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->expireTime:J

    return-wide v0
.end method

.method public getOpenApiAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 93
    const/16 v0, 0x1f

    .line 94
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 95
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 96
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->expireTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->expireTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 97
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 98
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 99
    return v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->accessToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenApiUserAccessTokenDto [uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accessToken=MASKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openApiAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->openApiAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
