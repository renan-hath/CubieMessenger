.class public Lcom/liquable/nemo/client/layer/LiteSecureLayer;
.super Ljava/lang/Object;
.source "LiteSecureLayer.java"

# interfaces
.implements Lcom/liquable/nemo/client/layer/EpFrameLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;,
        Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;
    }
.end annotation


# static fields
.field private static final MAGIC_HEADER:[B

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final clientRecordFactory:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final receivedLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private receivedSequenceNumber:J

.field private final writtenLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private writtenSequenceNumber:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->logger:Lcom/liquable/nemo/util/Logger;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->MAGIC_HEADER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x66t
        0x55t
        0x44t
        0x33t
        0x22t
        0x11t
    .end array-data
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)V
    .locals 3
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "uniqueDeviceId"    # Ljava/lang/String;
    .param p3, "frameMapper"    # Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->receivedLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->writtenLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    iput-object p1, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->pref:Lcom/liquable/nemo/util/Pref;

    .line 107
    new-instance v0, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    .line 108
    # getter for: Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;->SECURE_RANDOM:Ljava/security/SecureRandom;
    invoke-static {}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;->access$100()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2, p2}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;-><init>(Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->clientRecordFactory:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    .line 110
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method private onAuthenticationError(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)V
    .locals 7
    .param p1, "record"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticateError()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    .line 186
    .local v0, "error":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasError()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getError()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "errorDesc":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasCode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lite secure: authenticate error missing error code. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "ioException":Ljava/io/IOException;
    sget-object v4, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintError(Ljava/lang/Exception;)V

    .line 190
    throw v2

    .line 186
    .end local v1    # "errorDesc":Ljava/lang/String;
    .end local v2    # "ioException":Ljava/io/IOException;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 193
    .restart local v1    # "errorDesc":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/liquable/nemo/client/layer/LiteSecureLayer$2;->$SwitchMap$com$liquable$nemo$endpoint$record$LiteSecure$AuthenticateError$Code:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getCode()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 212
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lite secure: authenticate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getCode()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v2    # "ioException":Ljava/io/IOException;
    sget-object v4, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintError(Ljava/lang/Exception;)V

    .line 216
    throw v2

    .line 202
    .end local v2    # "ioException":Ljava/io/IOException;
    :pswitch_0
    sget-object v4, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    iget-object v5, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->setVersionIncompatible(Lcom/liquable/nemo/util/Pref;)V

    .line 203
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Lite Secure authenticate fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :pswitch_1
    sget-object v4, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    iget-object v5, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->setVersionIncompatible(Lcom/liquable/nemo/util/Pref;)V

    .line 206
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Lite Secure authenticate version incompatible. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :pswitch_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lite secure: authenticate platform error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "platformException":Ljava/io/IOException;
    sget-object v4, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintWarning(Ljava/lang/Exception;)V

    .line 210
    throw v3

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onAuthenticationResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)V
    .locals 5
    .param p1, "record"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->clientRecordFactory:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->validateCommandHmac(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticateResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v1

    .line 223
    .local v1, "response":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->clientRecordFactory:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getNonce()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->acceptNonce(J)V

    .line 224
    sget-object v2, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintSuccess()V

    .line 230
    return-void

    .line 226
    .end local v1    # "response":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Lite Secure authenticate response Hmac error"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "hmacException":Ljava/io/IOException;
    sget-object v2, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintFatalError(Ljava/lang/Exception;)V

    .line 228
    throw v0
.end method

.method private onBlockCipher(Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)V
    .locals 6
    .param p1, "listener"    # Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;
    .param p2, "record"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->receivedLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->clientRecordFactory:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    iget-wide v3, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->receivedSequenceNumber:J

    invoke-virtual {v2, p2, v3, v4}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->decryptEpFrame(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;J)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 250
    .local v1, "epFrame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :try_start_1
    invoke-interface {p1, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;->onRead(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 251
    iget-wide v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->receivedSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->receivedSequenceNumber:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->receivedLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    return-void

    .line 240
    .end local v1    # "epFrame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_2
    sget-object v2, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintError(Ljava/lang/Exception;)V

    .line 242
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decrypt epFrame failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->receivedLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 243
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v2, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintFatalError(Ljava/lang/Exception;)V

    .line 248
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public begin(Ljava/net/Socket;)V
    .locals 10
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v4, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v4, "headerAndAuthInOneShoot":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    sget-object v7, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->MAGIC_HEADER:[B

    invoke-virtual {v4, v7}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write([B)V

    .line 123
    iget-object v7, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->clientRecordFactory:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    iget-object v8, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->authenticate(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    .line 124
    .local v0, "authenticate":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    invoke-virtual {v0, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 126
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 127
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 129
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 131
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v7, Lcom/liquable/nemo/client/layer/LiteSecureLayer$1;

    invoke-direct {v7, p0, p1}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$1;-><init>(Lcom/liquable/nemo/client/layer/LiteSecureLayer;Ljava/net/Socket;)V

    invoke-interface {v2, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 139
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;>;"
    const/4 v6, 0x0

    .line 141
    .local v6, "record":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    const-wide/16 v7, 0x14

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "record":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    check-cast v6, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .restart local v6    # "record":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 156
    if-nez v6, :cond_1

    .line 157
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "lite secure: Not authentication response due to record == null "

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 158
    .local v5, "ioException":Ljava/io/IOException;
    sget-object v7, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintWarning(Ljava/lang/Exception;)V

    .line 159
    throw v5

    .line 142
    .end local v5    # "ioException":Ljava/io/IOException;
    .end local v6    # "record":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 144
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "wait authenticate response interrupted"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v7

    .line 145
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/IOException;

    if-eqz v7, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 149
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "authenticate execution exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 151
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "wait authenticate response timeout"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v6    # "record":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :cond_1
    invoke-virtual {v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasCommand()Z

    move-result v7

    if-nez v7, :cond_2

    .line 162
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "lite secure: Not authentication response due to no command "

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v5    # "ioException":Ljava/io/IOException;
    sget-object v7, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintError(Ljava/lang/Exception;)V

    .line 164
    throw v5

    .line 167
    .end local v5    # "ioException":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticateResponse()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    invoke-direct {p0, v6}, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->onAuthenticationResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)V

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_3
    invoke-virtual {v6}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticateError()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    invoke-direct {p0, v6}, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->onAuthenticationError(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)V

    goto :goto_0

    .line 172
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "lite secure: authenticate with unknown response"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v5    # "ioException":Ljava/io/IOException;
    sget-object v7, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintError(Ljava/lang/Exception;)V

    .line 174
    throw v5
.end method

.method public createSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public startReadingFrames(Ljava/io/InputStream;Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :goto_0
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v1

    .line 263
    .local v1, "record":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    if-nez v1, :cond_0

    .line 264
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "null lite secure record, the socket may be closed, abort"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_0
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasCommand()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    .line 270
    .local v0, "command":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasHeartbeatResponse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    sget-object v2, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->INSTANCE:Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->recordToEpFrame(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;->onRead(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 275
    :cond_1
    sget-object v2, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "read unknown lite secure command, ignore"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v0    # "command":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    :cond_2
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasBlockCipher()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-direct {p0, p2, v1}, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->onBlockCipher(Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)V

    goto :goto_0

    .line 280
    :cond_3
    sget-object v2, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "read unknown record, ignore"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string/jumbo v0, "LiteSecure"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string/jumbo v0, "Lite Secure EpFrame Protocol"

    return-object v0
.end method

.method public writeFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "rawFrame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    move-object v2, p1

    .line 298
    .local v2, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    instance-of v4, v2, Lcom/liquable/nemo/endpoint/frame/Login;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 302
    check-cast v3, Lcom/liquable/nemo/endpoint/frame/Login;

    .line 303
    .local v3, "rawLogin":Lcom/liquable/nemo/endpoint/frame/Login;
    new-instance v2, Lcom/liquable/nemo/endpoint/frame/Login;

    .end local v2    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/frame/Login;->getUid()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "-----"

    .line 305
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/frame/Login;->getClientVersion()Lcom/liquable/nemo/NemoVersion;

    move-result-object v6

    .line 306
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/frame/Login;->getSequenceId()Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/liquable/nemo/endpoint/frame/Login;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/NemoVersion;Ljava/lang/Long;)V

    .line 309
    .end local v3    # "rawLogin":Lcom/liquable/nemo/endpoint/frame/Login;
    .restart local v2    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :cond_0
    instance-of v4, v2, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    if-eqz v4, :cond_1

    .line 310
    sget-object v4, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->INSTANCE:Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    check-cast v2, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    .end local v2    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    invoke-virtual {v4, v2}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->epFrameToRecord(Lcom/liquable/nemo/endpoint/frame/Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 337
    :goto_0
    return-void

    .line 314
    .restart local v2    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->writtenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 320
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->clientRecordFactory:Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;

    iget-wide v5, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->writtenSequenceNumber:J

    .line 322
    # getter for: Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;->SECURE_RANDOM:Ljava/security/SecureRandom;
    invoke-static {}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$LazyHolder;->access$100()Ljava/security/SecureRandom;

    move-result-object v7

    .line 320
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->encryptEpFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;JLjava/security/SecureRandom;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 331
    .local v0, "blockCipher":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 333
    iget-wide v4, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->writtenSequenceNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->writtenSequenceNumber:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    iget-object v4, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->writtenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 323
    .end local v0    # "blockCipher":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :try_start_2
    sget-object v4, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintFatalError(Ljava/lang/Exception;)V

    .line 325
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encrypt epFrame security exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->writtenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 326
    :catch_1
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v4, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->hintFatalError(Ljava/lang/Exception;)V

    .line 328
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
