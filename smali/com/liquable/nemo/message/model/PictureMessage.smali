.class public Lcom/liquable/nemo/message/model/PictureMessage;
.super Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.source "PictureMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d652282632a86a0L


# instance fields
.field private completeN:Z

.field private completeS:Z

.field private final fileLength:J

.field private final fileNameN:Ljava/lang/String;

.field private final fileNameS:Ljava/lang/String;

.field private final height:I

.field private final text:Ljava/lang/String;

.field private final thumbnailHeight:I

.field private final thumbnailHeight2:I

.field private final thumbnailWidth:I

.field private final thumbnailWidth2:I

.field private final width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JIIIIIIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNameS"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileNameS"
        .end annotation
    .end param
    .param p2, "fileNameN"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileNameN"
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
    .param p7, "thumbnailWidth2"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailWidth2"
        .end annotation
    .end param
    .param p8, "thumbnailHeight2"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailHeight2"
        .end annotation
    .end param
    .param p9, "width"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "width"
        .end annotation
    .end param
    .param p10, "height"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "height"
        .end annotation
    .end param
    .param p11, "completeS"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "completeS"
        .end annotation
    .end param
    .param p12, "completeN"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "completeN"
        .end annotation
    .end param
    .param p13, "text"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "text"
        .end annotation
    .end param
    .param p14, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p14}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;-><init>(Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameS:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameN:Ljava/lang/String;

    .line 118
    iput p9, p0, Lcom/liquable/nemo/message/model/PictureMessage;->width:I

    .line 119
    iput p10, p0, Lcom/liquable/nemo/message/model/PictureMessage;->height:I

    .line 120
    iput-boolean p11, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeS:Z

    .line 121
    iput-boolean p12, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeN:Z

    .line 122
    iput-wide p3, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileLength:J

    .line 123
    iput p5, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailWidth:I

    .line 124
    iput p6, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailHeight:I

    .line 125
    iput p7, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailWidth2:I

    .line 126
    iput p8, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailHeight2:I

    .line 127
    iput-object p13, p0, Lcom/liquable/nemo/message/model/PictureMessage;->text:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/PictureMessage;
    .locals 15
    .param p0, "fileNameS"    # Ljava/lang/String;
    .param p1, "fileNameN"    # Ljava/lang/String;
    .param p2, "fileLength"    # J
    .param p4, "thumbnailWidth2"    # I
    .param p5, "thumbnailHeight2"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "text"    # Ljava/lang/String;
    .param p9, "s3EndPoint"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lcom/liquable/nemo/message/model/PictureMessage;

    div-int/lit8 v5, p4, 0x2

    div-int/lit8 v6, p5, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v0 .. v14}, Lcom/liquable/nemo/message/model/PictureMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JIIIIIIZZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v0, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/PictureMessage;->initial()V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->updateTransferAsTransfering(I)V

    .line 45
    return-object v0
.end method

.method public static createForward(Lcom/liquable/nemo/message/model/PictureMessage;Ljava/lang/String;)Lcom/liquable/nemo/message/model/PictureMessage;
    .locals 15
    .param p0, "origin"    # Lcom/liquable/nemo/message/model/PictureMessage;
    .param p1, "s3EndPoint"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/liquable/nemo/message/model/PictureMessage;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getFileNameS()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getFileNameN()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getFileLength()J

    move-result-wide v3

    .line 52
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth()I

    move-result v5

    .line 53
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight()I

    move-result v6

    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth2()I

    move-result v7

    .line 55
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight2()I

    move-result v8

    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getWidth()I

    move-result v9

    .line 57
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/liquable/nemo/message/model/PictureMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JIIIIIIZZLjava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v0, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/PictureMessage;->initial()V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->updateTransferAsTransfering(I)V

    .line 64
    return-object v0
.end method

.method public static createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "thumb"    # Z
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_picture/s/%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_picture/%s"

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

    .line 215
    if-eqz p1, :cond_0

    .line 216
    const-string/jumbo v0, "cubie/%s/pic/s/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameS:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "cubie/%s/pic/%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameN:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public completeN()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeN:Z

    .line 132
    return-void
.end method

.method public completeS()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeS:Z

    .line 136
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
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
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
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-object v0
.end method

.method public getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01e7

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
    .line 172
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileLength:J

    return-wide v0
.end method

.method public getFileNameN()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameN:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameS()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameS:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 187
    iget v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->height:I

    return v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/PictureMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 201
    :goto_0
    return-object v0

    .line 196
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/PictureMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_SELF_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0

    .line 201
    :cond_2
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->PICTURE_OTHER_BIG:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1
    .param p1, "thumb"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameS:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/liquable/nemo/message/model/PictureMessage;->createLocalKeyPath(ZLjava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameN:Ljava/lang/String;

    goto :goto_0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 211
    const v0, 0x7f0d0324

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
    .line 223
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "keyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 225
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    goto :goto_0
.end method

.method public getShareEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "share_picture"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailHeight:I

    return v0
.end method

.method public getThumbnailHeight2()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailHeight2:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailWidth:I

    return v0
.end method

.method public getThumbnailWidth2()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 258
    iget v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailWidth2:I

    return v0
.end method

.method public getWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->width:I

    return v0
.end method

.method public isCompleteN()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeN:Z

    return v0
.end method

.method public isCompleteS()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeS:Z

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public isLegacy()Z
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/PictureMessage;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPastableToBoard()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public isUploadComplete()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PictureMessage [fileNameS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileNameN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileNameN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", completeS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", completeN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->completeN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailWidth2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailWidth2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailHeight2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->thumbnailHeight2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/PictureMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
