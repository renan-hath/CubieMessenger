.class public Lcom/liquable/nemo/message/model/LocationMessage;
.super Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.source "LocationMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final HEIGHT_OF_MAP:I = 0x1e0

.field public static final WIDTH_OF_MAP:I = 0x280

.field private static final serialVersionUID:J = 0x2947cfb16150228aL


# instance fields
.field private final address:Ljava/lang/String;

.field private complete:Z

.field private final fileName:Ljava/lang/String;

.field private final latitude:D

.field private final longitude:D

.field private final mapHeight:I

.field private final mapWidth:I

.field private final zoom:I


# direct methods
.method private constructor <init>(Ljava/lang/String;DDLjava/lang/String;IIIZLjava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "address"
        .end annotation
    .end param
    .param p2, "latitude"    # D
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "latitude"
        .end annotation
    .end param
    .param p4, "longitude"    # D
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "longitude"
        .end annotation
    .end param
    .param p6, "fileName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fileName"
        .end annotation
    .end param
    .param p7, "mapWidth"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "mapWidth"
        .end annotation
    .end param
    .param p8, "mapHeight"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "mapHeight"
        .end annotation
    .end param
    .param p9, "zoom"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "zoom"
        .end annotation
    .end param
    .param p10, "complete"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "complete"
        .end annotation
    .end param
    .param p11, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p11}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;-><init>(Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->address:Ljava/lang/String;

    .line 93
    iput-wide p2, p0, Lcom/liquable/nemo/message/model/LocationMessage;->latitude:D

    .line 94
    iput-wide p4, p0, Lcom/liquable/nemo/message/model/LocationMessage;->longitude:D

    .line 95
    iput-object p6, p0, Lcom/liquable/nemo/message/model/LocationMessage;->fileName:Ljava/lang/String;

    .line 96
    iput p7, p0, Lcom/liquable/nemo/message/model/LocationMessage;->mapWidth:I

    .line 97
    iput p8, p0, Lcom/liquable/nemo/message/model/LocationMessage;->mapHeight:I

    .line 98
    iput p9, p0, Lcom/liquable/nemo/message/model/LocationMessage;->zoom:I

    .line 99
    iput-boolean p10, p0, Lcom/liquable/nemo/message/model/LocationMessage;->complete:Z

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/LocationMessage;->updateTransferAsTransfering(I)V

    .line 101
    return-void
.end method

.method public static createBySender(Lcom/liquable/nemo/map/SharableLocation;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/LocationMessage;
    .locals 12
    .param p0, "location"    # Lcom/liquable/nemo/map/SharableLocation;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "s3Endpoint"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 41
    new-instance v0, Lcom/liquable/nemo/message/model/LocationMessage;

    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getLatitude()D

    move-result-wide v2

    .line 43
    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getLongitude()D

    move-result-wide v4

    const/16 v7, 0x280

    const/16 v8, 0x1e0

    .line 47
    invoke-virtual {p0}, Lcom/liquable/nemo/map/SharableLocation;->getZoom()I

    move-result v9

    move-object v6, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/liquable/nemo/message/model/LocationMessage;-><init>(Ljava/lang/String;DDLjava/lang/String;IIIZLjava/lang/String;)V

    .line 50
    .local v0, "locationMsg":Lcom/liquable/nemo/message/model/LocationMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/LocationMessage;->initial()V

    .line 51
    invoke-virtual {v0, v10}, Lcom/liquable/nemo/message/model/LocationMessage;->updateTransferAsTransfering(I)V

    .line 52
    return-object v0
.end method

.method public static createBySender(Lcom/liquable/nemo/message/model/LocationMessage;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/LocationMessage;
    .locals 12
    .param p0, "message"    # Lcom/liquable/nemo/message/model/LocationMessage;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "s3Endpoint"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 24
    new-instance v0, Lcom/liquable/nemo/message/model/LocationMessage;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLatitude()D

    move-result-wide v2

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLongitude()D

    move-result-wide v4

    .line 28
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getMapWidth()I

    move-result v7

    .line 29
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getMapHeight()I

    move-result v8

    .line 30
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getZoom()I

    move-result v9

    move-object v6, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/liquable/nemo/message/model/LocationMessage;-><init>(Ljava/lang/String;DDLjava/lang/String;IIIZLjava/lang/String;)V

    .line 33
    .local v0, "locationMsg":Lcom/liquable/nemo/message/model/LocationMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/LocationMessage;->initial()V

    .line 34
    invoke-virtual {v0, v10}, Lcom/liquable/nemo/message/model/LocationMessage;->updateTransferAsTransfering(I)V

    .line 35
    return-object v0
.end method

.method public static createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/map/%s"

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
    .line 186
    const-string/jumbo v0, "cubie/%s/map/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getSenderId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/message/model/LocationMessage;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->complete:Z

    .line 105
    return-void
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->address:Ljava/lang/String;

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
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
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
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-object v0
.end method

.method public getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/LocationMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LOCATION_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->LOCATION_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public final getLatitude()D
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->latitude:D

    return-wide v0
.end method

.method public getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/message/model/LocationMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public final getLongitude()D
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->longitude:D

    return-wide v0
.end method

.method public final getMapHeight()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 170
    iget v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->mapHeight:I

    return v0
.end method

.method public final getMapWidth()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->mapWidth:I

    return v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->address:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0321

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v2, p2, v3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getRemoteKeyPath()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "keyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    goto :goto_0
.end method

.method public getShareEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string/jumbo v0, "share_map"

    return-object v0
.end method

.method public final getZoom()I
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 206
    iget v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->zoom:I

    return v0
.end method

.method public isComplete()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->complete:Z

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public isPastableToBoard()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public isUploadComplete()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/LocationMessage;->complete:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LocationMessage [address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mapWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->mapWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mapHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->mapHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/model/LocationMessage;->zoom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getS3endpoint()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/LocationMessage;->getS3endpoint()Ljava/lang/String;

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
