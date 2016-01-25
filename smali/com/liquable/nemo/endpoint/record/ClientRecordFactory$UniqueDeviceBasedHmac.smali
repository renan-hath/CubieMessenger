.class final Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;
.super Ljava/lang/Object;
.source "ClientRecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UniqueDeviceBasedHmac"
.end annotation


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final tailSaltBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>([B)V
    .locals 3
    .param p1, "keys"    # [B

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    :try_start_0
    const-string/jumbo v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->mac:Ljavax/crypto/Mac;

    .line 102
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    .local v1, "secret":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->tailSaltBuffer:Ljava/nio/ByteBuffer;

    .line 110
    return-void

    .line 104
    .end local v1    # "secret":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 106
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static create(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;
    .locals 4
    .param p0, "uniqueDeviceId"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    .local v0, "deviceBytes":[B
    new-instance v2, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    invoke-direct {v2, v0}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 90
    .end local v0    # "deviceBytes":[B
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "unexpected"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized digest(Ljava/nio/ByteBuffer;J)[B
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "tailSalt"    # J

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->tailSaltBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->tailSaltBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->tailSaltBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->mac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->tailSaltBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized digest([B)[B
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
