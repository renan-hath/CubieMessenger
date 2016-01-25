.class public Lcom/liquable/nemo/message/model/VideoMessage;
.super Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.source "VideoMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final MAX_SIDE:I = 0x136

.field private static final serialVersionUID:J = 0x1c1af9f51765c1d3L


# instance fields
.field private final fileLength:J

.field private final fileName:Ljava/lang/String;

.field private final thumbnail:Ljava/lang/String;

.field private thumbnailComplete:Z

.field private final thumbnailHeight:I

.field private final thumbnailWidth:I

.field private videoComplete:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JIIZZLjava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnail"
        .end annotation
    .end param
    .param p2, "fileName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileName"
        .end annotation
    .end param
    .param p3, "fileLength"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileLength"
        .end annotation
    .end param
    .param p5, "thumbnailWidth"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailWidth"
        .end annotation
    .end param
    .param p6, "thumbnailHeight"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailHeight"
        .end annotation
    .end param
    .param p7, "thumbnailComplete"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailComplete"
        .end annotation
    .end param
    .param p8, "videoComplete"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "videoComplete"
        .end annotation
    .end param
    .param p9, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p9}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnail:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileName:Ljava/lang/String;

    .line 78
    iput-boolean p7, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailComplete:Z

    .line 79
    iput-boolean p8, p0, Lcom/liquable/nemo/message/model/VideoMessage;->videoComplete:Z

    .line 80
    iput-wide p3, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileLength:J

    .line 81
    iput p5, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailWidth:I

    .line 82
    iput p6, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailHeight:I

    .line 83
    return-void
.end method

.method public static createBySender(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/liquable/nemo/message/model/VideoMessage;
    .locals 10
    .param p0, "fileNameS"    # Ljava/lang/String;
    .param p1, "fileNameN"    # Ljava/lang/String;
    .param p2, "fileLength"    # J
    .param p4, "thumbnailWidth"    # I
    .param p5, "thumbnailHeight"    # I
    .param p6, "s3Endpoint"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/liquable/nemo/message/model/VideoMessage;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/message/model/VideoMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JIIZZLjava/lang/String;)V

    .line 35
    .local v0, "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/VideoMessage;->initial()V

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->updateTransferAsTransfering(I)V

    .line 37
    return-object v0
.end method

.method public static createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "thumb"    # Z
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_video/s/%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_video/%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRemoteKeyPath(Z)Ljava/lang/String;
    .locals 5
    .param p1, "thumb"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    if-eqz p1, :cond_0

    .line 153
    const-string/jumbo v0, "cubie/%s/video/s/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnail:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "cubie/%s/video/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
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
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-object v0
.end method

.method public getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01ec

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
    .line 123
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileLength:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/VideoMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VIDEO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VIDEO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1
    .param p1, "thumb"    # Z

    .prologue
    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/liquable/nemo/storage/VoidLocalKeyPath;->INSTANCE:Lcom/liquable/nemo/storage/VoidLocalKeyPath;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnail:Ljava/lang/String;

    :goto_1
    invoke-static {p1, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileName:Ljava/lang/String;

    goto :goto_1
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 148
    const v0, 0x7f0d032a

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

.method public getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 2
    .param p1, "thumb"    # Z

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "keyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 162
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    goto :goto_0
.end method

.method public getShareEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string/jumbo v0, "share_video"

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailWidth:I

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public isThumbnailComplete()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailComplete:Z

    goto :goto_0
.end method

.method public isThumbnailExists()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnail:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVideoComplete()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->videoComplete:Z

    return v0
.end method

.method public thumbnailComplete()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailComplete:Z

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoMessage [thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->videoComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/VideoMessage;->thumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getS3endpoint()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VideoMessage;->getS3endpoint()Ljava/lang/String;

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

.method public videoComplete()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/VideoMessage;->videoComplete:Z

    .line 242
    return-void
.end method
