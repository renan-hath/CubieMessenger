.class public Lcom/liquable/nemo/message/model/FileMessage;
.super Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.source "FileMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31af0b56fc6a8a48L


# instance fields
.field private final fileLength:J

.field private final fileName:Ljava/lang/String;

.field private final originalFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileName"
        .end annotation
    .end param
    .param p2, "fileLength"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileLength"
        .end annotation
    .end param
    .param p4, "originalFileName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "originalFileName"
        .end annotation
    .end param
    .param p5, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p5}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileName:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileLength:J

    .line 49
    iput-object p4, p0, Lcom/liquable/nemo/message/model/FileMessage;->originalFileName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static createBySender(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/FileMessage;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileLength"    # J
    .param p3, "originalFileName"    # Ljava/lang/String;
    .param p4, "s3Endpoint"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/liquable/nemo/message/model/FileMessage;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/message/model/FileMessage;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v0, "message":Lcom/liquable/nemo/message/model/FileMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/FileMessage;->initial()V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/FileMessage;->updateTransferAsTransfering(I)V

    .line 26
    return-object v0
.end method

.method public static createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_file/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getRemoteKeyPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v0, "cubie/%s/file/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getSenderId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
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
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method public getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01e1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileLength()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileLength:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/FileMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->FILE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->FILE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/message/model/FileMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 105
    const v0, 0x7f0d031e

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

.method public getOriginalFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/message/model/FileMessage;->originalFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getRemoteKeyPath()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "keyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/FileMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    goto :goto_0
.end method

.method public getShareEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "share_file"

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FileMessage [fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/FileMessage;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originalFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/FileMessage;->originalFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
