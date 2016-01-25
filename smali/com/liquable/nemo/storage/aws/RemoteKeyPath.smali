.class public Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
.super Ljava/lang/Object;
.source "RemoteKeyPath.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x47bab2fa71b66a5dL


# instance fields
.field private final keyPath:Ljava/lang/String;

.field private final s3EndPoint:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s3EndPoint"    # Ljava/lang/String;
    .param p2, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 2
    .param p0, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 7
    new-instance v0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    const-string/jumbo v1, "s3.amazonaws.com"

    invoke-direct {v0, v1, p0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1
    .param p0, "s3EndPoint"    # Ljava/lang/String;
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-ne p0, p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    instance-of v3, p1, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    if-nez v3, :cond_2

    move v1, v2

    .line 31
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 36
    .local v0, "that":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v3, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 40
    goto :goto_0
.end method

.method public getKeyPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    return-object v0
.end method

.method public getS3EndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 59
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 60
    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toPublicUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    invoke-static {v1}, Lcom/liquable/nemo/storage/aws/S3EndPointPicker;->getBucket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RemoteKeyPath [s3EndPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->s3EndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->keyPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
