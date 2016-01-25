.class public Lcom/liquable/nemo/crypt/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# static fields
.field private static final KEY_LENGTH:I = 0x10


# instance fields
.field private final decryptCipher:Ljavax/crypto/Cipher;

.field private final encryptCipher:Ljavax/crypto/Cipher;

.field private final key:Ljava/security/Key;


# direct methods
.method private constructor <init>([BLjava/lang/String;)V
    .locals 3
    .param p1, "rawKeyData"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    .line 108
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 111
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 113
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 3
    .param p1, "rawKeyData"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "ivParameterSpec"    # Ljavax/crypto/spec/IvParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    .line 122
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 125
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    invoke-virtual {v0, v1, v2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    return-void
.end method

.method public static createAESEncryption()Lcom/liquable/nemo/crypt/Encryption;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "Rfcsdf3sdf3DFGER"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption([B)Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v0

    return-object v0
.end method

.method public static createAESEncryption([B)Lcom/liquable/nemo/crypt/Encryption;
    .locals 5
    .param p0, "keys"    # [B

    .prologue
    .line 44
    const/16 v3, 0x10

    :try_start_0
    new-array v1, v3, [B

    .line 45
    .local v1, "iv":[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 46
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 48
    .local v2, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Lcom/liquable/nemo/crypt/Encryption;

    const-string/jumbo v4, "AES/CBC/PKCS7Padding"

    invoke-direct {v3, p0, v4, v2}, Lcom/liquable/nemo/crypt/Encryption;-><init>([BLjava/lang/String;Ljavax/crypto/spec/IvParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 49
    .end local v1    # "iv":[B
    .end local v2    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 51
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "unsupported type of encryption: AES"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createDESEncryption()Lcom/liquable/nemo/crypt/Encryption;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    :try_start_0
    const-string/jumbo v1, "456"

    .line 62
    .local v1, "k1":Ljava/lang/String;
    const-string/jumbo v2, "785"

    .line 63
    .local v2, "k2":Ljava/lang/String;
    const-string/jumbo v3, "32"

    .line 64
    .local v3, "k3":Ljava/lang/String;
    new-instance v4, Lcom/liquable/nemo/crypt/Encryption;

    const-string/jumbo v5, "45678532"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "DES"

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/crypt/Encryption;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 65
    .end local v2    # "k2":Ljava/lang/String;
    .end local v3    # "k3":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "unsupported type of encryption: DES"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static createDESEncryptionV2(Ljava/lang/String;)Lcom/liquable/nemo/crypt/Encryption;
    .locals 9
    .param p0, "salt"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 77
    .local v2, "inputSaltBytes":[B
    const/16 v6, 0x8

    new-array v5, v6, [B

    fill-array-data v5, :array_0

    .line 79
    .local v5, "saltBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 80
    rem-int/lit8 v6, v1, 0x8

    aget-byte v7, v5, v6

    rem-int/lit8 v8, v1, 0x8

    aget-byte v8, v2, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/16 v6, 0x8

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    .line 84
    .local v3, "k1":[B
    const/16 v6, 0x8

    new-array v4, v6, [B

    fill-array-data v4, :array_2

    .line 86
    .local v4, "k2":[B
    const/4 v1, 0x0

    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 87
    aget-byte v6, v3, v1

    aget-byte v7, v4, v1

    aget-byte v8, v5, v1

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_1
    new-instance v6, Lcom/liquable/nemo/crypt/Encryption;

    const-string/jumbo v7, "DES"

    invoke-direct {v6, v3, v7}, Lcom/liquable/nemo/crypt/Encryption;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 90
    .end local v1    # "i":I
    .end local v2    # "inputSaltBytes":[B
    .end local v3    # "k1":[B
    .end local v4    # "k2":[B
    .end local v5    # "saltBytes":[B
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 92
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported type of encryption: DES"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :array_0
    .array-data 1
        0x34t
        0x7bt
        0xct
        0x2ct
        0xet
        0x22t
        0x63t
        0x56t
    .end array-data

    .line 83
    :array_1
    .array-data 1
        0x36t
        0x73t
        0x64t
        0x66t
        0x73t
        0x64t
        0x6bt
        0x6at
    .end array-data

    .line 84
    :array_2
    .array-data 1
        0x73t
        0x66t
        0x6at
        0x6bt
        0x3bt
        0x64t
        0x73t
        0x66t
    .end array-data
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "rawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/crypt/Encryption;->decrypt([B)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 138
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 140
    .local v1, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    :try_start_0
    new-instance v2, Ljavax/crypto/CipherInputStream;

    iget-object v4, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    .end local v1    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .local v2, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    const/4 v3, 0x0

    .line 143
    .local v3, "numRead":I
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 144
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .end local v3    # "numRead":I
    .restart local v1    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 149
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4

    .line 148
    .end local v1    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .restart local v2    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .restart local v3    # "numRead":I
    :cond_0
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 149
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 151
    return-void

    .line 148
    .end local v2    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .end local v3    # "numRead":I
    .restart local v1    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public decrypt([B)[B
    .locals 1
    .param p1, "rawData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public decryptInto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "rawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 203
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/crypt/Encryption;->encrypt([B)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 184
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 186
    .local v1, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :try_start_0
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v4, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p2, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    .end local v1    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .local v2, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const/4 v3, 0x0

    .line 188
    .local v3, "numRead":I
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 189
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .end local v3    # "numRead":I
    .restart local v1    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :goto_1
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 194
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4

    .line 192
    .end local v1    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .restart local v2    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "numRead":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 194
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 196
    return-void

    .line 192
    .end local v2    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    .end local v3    # "numRead":I
    .restart local v1    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public encrypt([B)[B
    .locals 1
    .param p1, "rawData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public encryptInto([BILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "rawData"    # [B
    .param p2, "inputLength"    # I
    .param p3, "out"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, p1, v2, p2, v3}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v0

    .line 217
    .local v0, "outSize":I
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public estimateDecryptSize(I)I
    .locals 1
    .param p1, "inputSize"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public estimateEncryptSize(I)I
    .locals 1
    .param p1, "inputSize"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public resetDecryptIvParameter([BI)V
    .locals 6
    .param p1, "ivParameters"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/crypt/Encryption;->decryptCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v5, 0x10

    invoke-direct {v4, p1, p2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 241
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resetEncryptIvParameter([BI)V
    .locals 6
    .param p1, "ivParameters"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/crypt/Encryption;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/crypt/Encryption;->key:Ljava/security/Key;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v5, 0x10

    invoke-direct {v4, p1, p2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 259
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
