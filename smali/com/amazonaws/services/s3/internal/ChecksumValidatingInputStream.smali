.class public Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;
.super Ljava/io/FilterInputStream;
.source "ChecksumValidatingInputStream.java"


# instance fields
.field private final digestInputStream:Ljava/security/DigestInputStream;

.field private final expectedChecksum:[B

.field private hasReadAllContent:Z

.field private final sourceObject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BLjava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "expectedChecksum"    # [B
    .param p3, "sourceObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/security/DigestInputStream;

    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->hasReadAllContent:Z

    .line 80
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->expectedChecksum:[B

    .line 81
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->sourceObject:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/security/DigestInputStream;

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->digestInputStream:Ljava/security/DigestInputStream;

    .line 83
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 92
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->hasReadAllContent:Z

    if-nez v1, :cond_1

    .line 103
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->digestInputStream:Ljava/security/DigestInputStream;

    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 96
    .local v0, "clientSideHash":[B
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->expectedChecksum:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to verify integrity of data download.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  The data read from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->sourceObject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' may be corrupt."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 109
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->hasReadAllContent:Z

    .line 110
    return v0

    .line 109
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 117
    .local v0, "read":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->hasReadAllContent:Z

    .line 118
    return v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 125
    .local v0, "read":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/ChecksumValidatingInputStream;->hasReadAllContent:Z

    .line 126
    return v0

    .line 125
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
