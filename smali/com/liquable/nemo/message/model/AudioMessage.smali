.class public Lcom/liquable/nemo/message/model/AudioMessage;
.super Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.source "AudioMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x27d33ea5af8aab6dL


# instance fields
.field private final albumArt:Ljava/lang/String;

.field private albumArtComplete:Z

.field private audioComplete:Z

.field private final fileLength:J

.field private final fileName:Ljava/lang/String;

.field private final thumbnailHeight:I

.field private final thumbnailWidth:I

.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZZLjava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileName"
        .end annotation
    .end param
    .param p2, "albumArt"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "albumArt"
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p4, "fileLength"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileLength"
        .end annotation
    .end param
    .param p6, "thumbnailWidth"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailWidth"
        .end annotation
    .end param
    .param p7, "thumbnailHeight"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailHeight"
        .end annotation
    .end param
    .param p8, "audioComplete"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "audioComplete"
        .end annotation
    .end param
    .param p9, "albumArtComplete"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "albumArtComplete"
        .end annotation
    .end param
    .param p10, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p10}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArt:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/liquable/nemo/message/model/AudioMessage;->title:Ljava/lang/String;

    .line 85
    iput-wide p4, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileLength:J

    .line 86
    iput p6, p0, Lcom/liquable/nemo/message/model/AudioMessage;->thumbnailWidth:I

    .line 87
    iput p7, p0, Lcom/liquable/nemo/message/model/AudioMessage;->thumbnailHeight:I

    .line 88
    iput-boolean p8, p0, Lcom/liquable/nemo/message/model/AudioMessage;->audioComplete:Z

    .line 89
    iput-boolean p9, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArtComplete:Z

    .line 90
    return-void
.end method

.method public static createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)Lcom/liquable/nemo/message/model/AudioMessage;
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "albumArt"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fileLength"    # J
    .param p5, "thumbnailWidth"    # I
    .param p6, "thumbnailHeight"    # I
    .param p7, "s3Endpoint"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/liquable/nemo/message/model/AudioMessage;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/liquable/nemo/message/model/AudioMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZZLjava/lang/String;)V

    .line 37
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AudioMessage;->initial()V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->updateTransferAsTransfering(I)V

    .line 39
    return-object v0
.end method

.method public static createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "thumb"    # Z
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_audio/s/%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_audio/%s"

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

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const-string/jumbo v0, "cubie/%s/audio/s/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArt:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "cubie/%s/audio/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public albumArtComplete()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArtComplete:Z

    .line 94
    return-void
.end method

.method public audioComplete()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->audioComplete:Z

    .line 98
    return-void
.end method

.method public getAlbumArt()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArt:Ljava/lang/String;

    return-object v0
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
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->isAlbumArtExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
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
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->isAlbumArtExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v0
.end method

.method public getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01de

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
    .line 146
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileLength:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/AudioMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->AUDIO_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->AUDIO_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1
    .param p1, "thumb"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->isAlbumArtExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/liquable/nemo/storage/VoidLocalKeyPath;->INSTANCE:Lcom/liquable/nemo/storage/VoidLocalKeyPath;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArt:Ljava/lang/String;

    :goto_1
    invoke-static {p1, v0}, Lcom/liquable/nemo/message/model/AudioMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileName:Ljava/lang/String;

    goto :goto_1
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 171
    const v0, 0x7f0d031b

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
    .line 183
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "keyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    goto :goto_0
.end method

.method public getShareEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string/jumbo v0, "share_audio"

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 198
    iget v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->thumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->thumbnailWidth:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAlbumArtComplete()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->getAlbumArt()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArtComplete:Z

    goto :goto_0
.end method

.method public isAlbumArtExists()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArt:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isAudioComplete()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/AudioMessage;->audioComplete:Z

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioMessage [albumArt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->thumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->thumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audioComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->audioComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", albumArtComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/AudioMessage;->albumArtComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getS3endpoint()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AudioMessage;->getS3endpoint()Ljava/lang/String;

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
