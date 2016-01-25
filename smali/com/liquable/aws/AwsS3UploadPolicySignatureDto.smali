.class public Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;
.super Ljava/lang/Object;
.source "AwsS3UploadPolicySignatureDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = -0x42ad12fc8e88c7e0L


# instance fields
.field private final accessKeyId:Ljava/lang/String;

.field private final policy:Ljava/lang/String;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKeyId"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    instance-of v3, p1, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;

    if-nez v3, :cond_3

    move v1, v2

    .line 28
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;

    .line 31
    .local v0, "other":Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;
    iget-object v3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 32
    iget-object v3, v0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 33
    goto :goto_0

    .line 35
    :cond_4
    iget-object v3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 36
    goto :goto_0

    .line 38
    :cond_5
    iget-object v3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 39
    iget-object v3, v0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_6
    iget-object v3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_7
    iget-object v3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 46
    iget-object v3, v0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_8
    iget-object v3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 50
    goto :goto_0
.end method

.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 69
    const/16 v0, 0x1f

    .line 70
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 71
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 72
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 73
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 74
    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AwsS3UploadPolicySignatureDto [accessKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/aws/AwsS3UploadPolicySignatureDto;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
