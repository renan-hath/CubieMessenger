.class public Lcom/liquable/aws/AwsSessionCredentialsDto;
.super Ljava/lang/Object;
.source "AwsSessionCredentialsDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x55af4080e501aa89L


# instance fields
.field private final accessKeyId:Ljava/lang/String;

.field private final expiration:J

.field private final secretAccessKey:Ljava/lang/String;

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "accessKeyId"    # Ljava/lang/String;
    .param p2, "secretAccessKey"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "expiration"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    .line 48
    iput-wide p4, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->expiration:J

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    instance-of v3, p1, Lcom/liquable/aws/AwsSessionCredentialsDto;

    if-nez v3, :cond_3

    move v1, v2

    .line 60
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 62
    check-cast v0, Lcom/liquable/aws/AwsSessionCredentialsDto;

    .line 63
    .local v0, "other":Lcom/liquable/aws/AwsSessionCredentialsDto;
    iget-object v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 64
    iget-object v3, v0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_4
    iget-object v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_5
    iget-wide v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->expiration:J

    iget-wide v5, v0, Lcom/liquable/aws/AwsSessionCredentialsDto;->expiration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_6
    iget-object v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 74
    iget-object v3, v0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_7
    iget-object v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_8
    iget-object v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 81
    iget-object v3, v0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_9
    iget-object v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->expiration:J

    return-wide v0
.end method

.method public getSecretAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 108
    const/16 v0, 0x1f

    .line 109
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 110
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 111
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->expiration:J

    iget-wide v6, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->expiration:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 112
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 113
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 114
    return v1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AwsSessionCredentialDto [accessKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secretAccessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->secretAccessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/aws/AwsSessionCredentialsDto;->expiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
