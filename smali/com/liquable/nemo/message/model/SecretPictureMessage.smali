.class public Lcom/liquable/nemo/message/model/SecretPictureMessage;
.super Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.source "SecretPictureMessage.java"

# interfaces
.implements Lcom/liquable/nemo/message/model/ISecret;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final EXPIRE_DURATION:J = 0x1388L

.field private static final serialVersionUID:J = 0x7904e41983dd2b40L


# instance fields
.field private complete:Z

.field private final deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field

.field private final encryptedText:Ljava/lang/String;

.field private final fileLength:J

.field private final fileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "deleteTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "deleteTime"
        .end annotation
    .end param
    .param p3, "fileName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileName"
        .end annotation
    .end param
    .param p4, "fileLength"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileLength"
        .end annotation
    .end param
    .param p6, "complete"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "complete"
        .end annotation
    .end param
    .param p7, "encryptedText"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "encryptedText"
        .end annotation
    .end param
    .param p8, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 112
    new-instance v1, Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    const-wide/16 v2, 0x1388

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;-><init>(JJ)V

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/message/model/SecretPictureMessage;-><init>(Lcom/liquable/nemo/message/model/DeleteTimeSecret;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private constructor <init>(Lcom/liquable/nemo/message/model/DeleteTimeSecret;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteTimeSecret"    # Lcom/liquable/nemo/message/model/DeleteTimeSecret;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileLength"    # J
    .param p5, "complete"    # Z
    .param p6, "encryptedText"    # Ljava/lang/String;
    .param p7, "s3endpoint"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p7}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;-><init>(Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    .line 99
    iput-object p2, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileName:Ljava/lang/String;

    .line 100
    iput-wide p3, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileLength:J

    .line 101
    iput-boolean p5, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->complete:Z

    .line 102
    iput-object p6, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->encryptedText:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static createBySender(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/SecretPictureMessage;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileLength"    # J
    .param p3, "rawText"    # Ljava/lang/String;
    .param p4, "s3Endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    new-instance v0, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->create(J)Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v2

    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/message/model/SecretPictureMessage;-><init>(Lcom/liquable/nemo/message/model/DeleteTimeSecret;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v0, "message":Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->initial()V

    .line 45
    invoke-virtual {v0, v5}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->updateTransferAsTransfering(I)V

    .line 47
    return-object v0
.end method

.method public static createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "largeFileName"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/temp/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createTemporaryLocalThumbnailFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "largeFileName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thumb-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createTemporaryLocalThumbnailKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 5
    .param p0, "largeFileName"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/temp/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 61
    invoke-static {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->createTemporaryLocalThumbnailFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 60
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static decryptBitmap([B)[B
    .locals 1
    .param p0, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/crypt/Encryption;->decrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptBitmap([B)[B
    .locals 1
    .param p0, "bitmap"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/crypt/Encryption;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method private getDeleteTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->getDeleteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getEncryptedText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->encryptedText:Ljava/lang/String;

    return-object v0
.end method

.method private getRemoteKeyPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    const-string/jumbo v0, "cubie/%s/secret_pic/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getSenderId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->complete:Z

    .line 122
    return-void
.end method

.method public getAllLocalKeyPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object v0
.end method

.method public getAllRemoteKeyPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object v0
.end method

.method public getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getDecryptedText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->encryptedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileLength()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileLength:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 191
    const v0, 0x7f0d0325

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getRemoteKeyPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "keyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    goto :goto_0
.end method

.method public getShareEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, "share_secret_picture"

    return-object v0
.end method

.method public getTemporaryLocalThumbnailKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->createTemporaryLocalThumbnailKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public isAutoCountDown(Ljava/lang/String;)Z
    .locals 1
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->complete:Z

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/liquable/nemo/message/model/ISecret$State;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->open()V

    .line 248
    return-void
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public timeToExpireInMilli()J
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->timeToExpireInMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SecretPictureMessage [fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptedText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->encryptedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleteTimeSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/SecretPictureMessage;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getS3endpoint()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
