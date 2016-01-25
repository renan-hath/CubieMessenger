.class public final Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;
.super Ljava/lang/Object;
.source "ClientRecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;,
        Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;,
        Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;
    }
.end annotation


# static fields
.field private static final BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

.field private static final CURRENT_PROTOCOL_VERSION:I = 0x1

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final decryptLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final encryptLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final encryptionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/crypt/Encryption;",
            ">;"
        }
    .end annotation
.end field

.field private final epFrameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

.field private final ivParameters:[B

.field private volatile nonce:J

.field private final sessionId:J

.field private final uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

.field private final uniqueDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const-class v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->logger:Lcom/liquable/nemo/util/Logger;

    .line 148
    new-instance v0, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    const/16 v1, 0x2000

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;-><init>(II)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;JLjava/lang/String;)V
    .locals 1
    .param p1, "epFrameMapper"    # Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;
    .param p2, "sessionId"    # J
    .param p4, "uniqueDeviceId"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 159
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 161
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->decryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 164
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->ivParameters:[B

    .line 172
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->epFrameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    .line 173
    iput-object p4, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceId:Ljava/lang/String;

    .line 174
    iput-wide p2, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->sessionId:J

    .line 175
    invoke-static {p4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->create(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    .line 176
    return-void
.end method

.method private checkBlockCipherMac(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;JLjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "record"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .param p2, "sequenceNumber"    # J
    .param p4, "blockCipher"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasMac()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "extract EpFrame but mac not present"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    invoke-virtual {v1, p4, p2, p3}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->digest(Ljava/nio/ByteBuffer;J)[B

    move-result-object v0

    .line 230
    .local v0, "expectedMac":[B
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getMac()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "extract EpFrame but invalid hmac"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    return-void
.end method

.method private compress([BI)Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inputLength"    # I

    .prologue
    const/4 v9, 0x0

    .line 239
    const/16 v5, 0x35c

    if-ge p2, v5, :cond_0

    .line 240
    new-instance v5, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    sget-object v6, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    invoke-direct {v5, v6, p1, p2, v9}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;-><init>(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;[BILjava/nio/ByteBuffer;)V

    .line 270
    :goto_0
    return-object v5

    .line 244
    :cond_0
    :try_start_0
    div-int/lit8 v5, p2, 0x3

    mul-int/lit8 v4, v5, 0x2

    .line 246
    .local v4, "minCapacity":I
    sget-object v5, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v5, v4}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 248
    .local v0, "backedBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;

    invoke-direct {v1, v0}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 249
    .local v1, "backedByteOutputStream":Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 251
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 252
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 261
    new-instance v5, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    sget-object v6, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->GZIP:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 262
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;->getBuf()[B

    move-result-object v7

    .line 263
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;->size()I

    move-result v8

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;-><init>(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;[BILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 265
    .end local v0    # "backedBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "backedByteOutputStream":Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "minCapacity":I
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "compression error, fallback to no compression"

    invoke-virtual {v5, v6, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    new-instance v5, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    sget-object v6, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    invoke-direct {v5, v6, p1, p2, v9}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;-><init>(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;[BILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "unexpected compression error, fallback to no compression"

    invoke-virtual {v5, v6, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    new-instance v5, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    sget-object v6, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    invoke-direct {v5, v6, p1, p2, v9}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;-><init>(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;[BILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private decodeEpFrame(Ljava/io/ByteArrayInputStream;Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "compress"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p1

    .line 277
    .local v0, "wrapped":Ljava/io/InputStream;
    sget-object v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->GZIP:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    if-ne p2, v1, :cond_0

    .line 283
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .end local v0    # "wrapped":Ljava/io/InputStream;
    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 285
    .restart local v0    # "wrapped":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->epFrameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;->decode(Ljava/io/InputStream;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    move-result-object v1

    return-object v1
.end method

.method private generateEncryptionKey(Ljava/lang/String;)[B
    .locals 8
    .param p1, "uniqueDeviceId"    # Ljava/lang/String;

    .prologue
    .line 408
    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 409
    .local v0, "deviceBytes":[B
    array-length v5, v0

    add-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 410
    .local v3, "fullKey":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 411
    iget-wide v5, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->nonce:J

    invoke-virtual {v3, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 412
    iget-wide v5, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->sessionId:J

    invoke-virtual {v3, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 414
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->digest([B)[B

    move-result-object v1

    .line 416
    .local v1, "digestKey":[B
    const/16 v5, 0x10

    new-array v4, v5, [B

    .line 417
    .local v4, "key16":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    return-object v4

    .line 419
    .end local v0    # "deviceBytes":[B
    .end local v1    # "digestKey":[B
    .end local v3    # "fullKey":Ljava/nio/ByteBuffer;
    .end local v4    # "key16":[B
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "unexpected"

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static heartbeat(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 3
    .param p0, "heartbeatId"    # I

    .prologue
    .line 129
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->setHeartbeatId(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->setHeartbeat(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    .line 133
    .local v0, "command":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setProtocolVersion(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setCommand(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v1

    return-object v1
.end method

.method private serializeBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "blockCipher"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v2, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getSerializedSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 426
    .local v1, "serialized":Ljava/nio/ByteBuffer;
    new-instance v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 427
    .local v0, "output":Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->writeTo(Ljava/io/OutputStream;)V

    .line 428
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 429
    return-object v1
.end method


# virtual methods
.method public acceptNonce(J)V
    .locals 3
    .param p1, "nonce"    # J

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->nonce:J

    .line 180
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->generateEncryptionKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 181
    .local v0, "encryptionKey":[B
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption([B)Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public authenticate(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v3

    .line 186
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->sessionId:J

    .line 187
    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    .line 188
    invoke-virtual {v5}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->setClientNemoVersion(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->ANDROID:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .line 189
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->setClientPlatform(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v4

    .line 190
    invoke-virtual {v4, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->setUid(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v4

    .line 186
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->setAuthenticate(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v1

    .line 193
    .local v1, "command":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 195
    .local v2, "hmcSha1":Lcom/google/protobuf/ByteString;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 196
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setProtocolVersion(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v3

    .line 197
    invoke-virtual {v3, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setCommand(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setMac(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    .line 201
    .local v0, "authenticate":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    return-object v0
.end method

.method public authenticateResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 7

    .prologue
    .line 205
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->sessionId:J

    .line 206
    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->nonce:J

    .line 207
    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->setNonce(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    .line 208
    invoke-virtual {v5}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->setServerNemoVersion(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    .line 210
    .local v0, "builder":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->setAuthenticateResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v1

    .line 212
    .local v1, "command":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    iget-object v4, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 214
    .local v2, "hmacSha1":Lcom/google/protobuf/ByteString;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 215
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setProtocolVersion(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setCommand(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v4

    .line 217
    invoke-virtual {v4, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setMac(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v4

    .line 218
    invoke-virtual {v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v3

    .line 220
    .local v3, "response":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    return-object v3
.end method

.method public decryptEpFrame(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;J)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .locals 9
    .param p1, "record"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .param p2, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasBlockCipher()Z

    move-result v6

    const-string/jumbo v7, "not contains Block cipher"

    invoke-static {v6, v7}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->serializeBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 295
    .local v0, "blockCipher":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->checkBlockCipherMac(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;JLjava/nio/ByteBuffer;)V

    .line 297
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v6

    .line 298
    invoke-virtual {v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getCipherText()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 299
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 301
    .local v4, "epFrameCipherBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 304
    .local v1, "decryptedBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v6, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/crypt/Encryption;

    .line 305
    .local v3, "encryption":Lcom/liquable/nemo/crypt/Encryption;
    iget-object v6, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->decryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/liquable/nemo/crypt/Encryption;->estimateDecryptSize(I)I

    move-result v2

    .line 309
    .local v2, "decryptedSize":I
    sget-object v6, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v6, v2}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 311
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v6

    .line 312
    invoke-virtual {v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getAlgorithmParameter()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 313
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 311
    invoke-virtual {v3, v6, v7}, Lcom/liquable/nemo/crypt/Encryption;->resetDecryptIvParameter([BI)V

    .line 315
    invoke-virtual {v3, v4, v1}, Lcom/liquable/nemo/crypt/Encryption;->decryptInto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    iget-object v6, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->decryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 326
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 329
    .local v5, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->hasCompression()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getCompression()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    move-result-object v6

    .line 328
    :goto_0
    invoke-direct {p0, v5, v6}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->decodeEpFrame(Ljava/io/ByteArrayInputStream;Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 332
    sget-object v7, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v7, v0}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 333
    sget-object v7, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v7, v1}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 321
    .end local v2    # "decryptedSize":I
    .end local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    iget-object v7, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->decryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    .end local v3    # "encryption":Lcom/liquable/nemo/crypt/Encryption;
    :catchall_1
    move-exception v6

    sget-object v7, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v7, v0}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 333
    sget-object v7, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v7, v1}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    throw v6

    .line 329
    .restart local v2    # "decryptedSize":I
    .restart local v3    # "encryption":Lcom/liquable/nemo/crypt/Encryption;
    .restart local v5    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :try_start_4
    sget-object v6, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public encryptEpFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;JLjava/security/SecureRandom;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 16
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .param p2, "sequenceNumber"    # J
    .param p4, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    sget-object v13, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v13}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 341
    .local v9, "epFrameBackedBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 342
    .local v5, "encryptedBuffer":Ljava/nio/ByteBuffer;
    const/4 v12, 0x0

    .line 343
    .local v12, "serializedBlockCipher":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 345
    .local v4, "compressResult":Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;
    :try_start_0
    new-instance v11, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;

    invoke-direct {v11, v9}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 346
    .local v11, "outputStream":Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->epFrameMapper:Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v11}, Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;->encodeInto(Lcom/liquable/nemo/endpoint/frame/IEpFrame;Ljava/io/OutputStream;)V

    .line 348
    invoke-virtual {v11}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;->getBuf()[B

    move-result-object v13

    invoke-virtual {v11}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;->size()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->compress([BI)Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;

    move-result-object v4

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/crypt/Encryption;

    .line 353
    .local v8, "encryption":Lcom/liquable/nemo/crypt/Encryption;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    :try_start_1
    # getter for: Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compressedLength:I
    invoke-static {v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->access$000(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/liquable/nemo/crypt/Encryption;->estimateEncryptSize(I)I

    move-result v7

    .line 356
    .local v7, "encryptedSize":I
    sget-object v13, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v13, v7}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->ivParameters:[B

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->ivParameters:[B

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lcom/liquable/nemo/crypt/Encryption;->resetEncryptIvParameter([BI)V

    .line 361
    # getter for: Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compressed:[B
    invoke-static {v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->access$100(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)[B

    move-result-object v13

    .line 362
    # getter for: Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compressedLength:I
    invoke-static {v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->access$000(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)I

    move-result v14

    .line 361
    invoke-virtual {v8, v13, v14, v5}, Lcom/liquable/nemo/crypt/Encryption;->encryptInto([BILjava/nio/ByteBuffer;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->ivParameters:[B

    invoke-static {v13}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 374
    .local v2, "algorithmParameter":Lcom/google/protobuf/ByteString;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v13

    .line 378
    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->setCipherText(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v13

    .line 379
    # getter for: Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->compression:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    invoke-static {v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->access$200(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->setCompression(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v13

    .line 380
    invoke-virtual {v13, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->setAlgorithmParameter(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v13

    .line 381
    invoke-virtual {v13}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v3

    .line 383
    .local v3, "blockCipher":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->serializeBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    move-wide/from16 v0, p2

    invoke-virtual {v13, v12, v0, v1}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->digest(Ljava/nio/ByteBuffer;J)[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v10

    .line 387
    .local v10, "hamcSha1":Lcom/google/protobuf/ByteString;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v13

    const/4 v14, 0x1

    .line 388
    invoke-virtual {v13, v14}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setProtocolVersion(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v13

    .line 389
    invoke-virtual {v13, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v13

    .line 390
    invoke-virtual {v13, v10}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setMac(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v13

    .line 391
    invoke-virtual {v13}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 396
    .local v6, "encryptedEpFrame":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    sget-object v13, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v13, v9}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 397
    sget-object v13, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v13, v5}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 398
    sget-object v13, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v13, v12}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 399
    if-eqz v4, :cond_0

    .line 400
    sget-object v13, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    # getter for: Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->intermediateByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->access$300(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-object v6

    .line 374
    .end local v2    # "algorithmParameter":Lcom/google/protobuf/ByteString;
    .end local v3    # "blockCipher":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .end local v6    # "encryptedEpFrame":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .end local v7    # "encryptedSize":I
    .end local v10    # "hamcSha1":Lcom/google/protobuf/ByteString;
    :catchall_0
    move-exception v13

    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 396
    .end local v8    # "encryption":Lcom/liquable/nemo/crypt/Encryption;
    .end local v11    # "outputStream":Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$BackedByteOutputStream;
    :catchall_1
    move-exception v13

    sget-object v14, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v14, v9}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 397
    sget-object v14, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v14, v5}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 398
    sget-object v14, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    invoke-virtual {v14, v12}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    .line 399
    if-eqz v4, :cond_1

    .line 400
    sget-object v14, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->BYTE_BUFFER_POOL:Lcom/liquable/nemo/endpoint/record/ByteBufferPool;

    # getter for: Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->intermediateByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;->access$300(Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$CompressionResult;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/liquable/nemo/endpoint/record/ByteBufferPool;->recycle(Ljava/nio/ByteBuffer;)V

    :cond_1
    throw v13
.end method

.method public validateCommandHmac(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Z
    .locals 3
    .param p1, "record"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    .prologue
    const/4 v1, 0x1

    .line 433
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasCommand()Z

    move-result v2

    if-nez v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticate()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticateResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasMac()Z

    move-result v1

    if-nez v1, :cond_3

    .line 439
    const/4 v1, 0x0

    goto :goto_0

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->uniqueDeviceBasedHmac:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory$UniqueDeviceBasedHmac;->digest([B)[B

    move-result-object v0

    .line 442
    .local v0, "hmacSha1":[B
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getMac()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method
