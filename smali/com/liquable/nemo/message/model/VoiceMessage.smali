.class public Lcom/liquable/nemo/message/model/VoiceMessage;
.super Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.source "VoiceMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x27d33ea5af8aab6dL


# instance fields
.field private final duration:J

.field private final fileLength:J

.field private final fileName:Ljava/lang/String;

.field private playing:Z

.field private preparing:Z

.field private voiceComplete:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;JZJLjava/lang/String;)V
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
    .param p4, "voiceComplete"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "voiceComplete"
        .end annotation
    .end param
    .param p5, "duration"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "duration"
        .end annotation
    .end param
    .param p7, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p7}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileName:Ljava/lang/String;

    .line 59
    iput-wide p2, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileLength:J

    .line 60
    iput-boolean p4, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->voiceComplete:Z

    .line 61
    iput-wide p5, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->duration:J

    .line 62
    return-void
.end method

.method public static createBySender(Ljava/lang/String;JJLjava/lang/String;)Lcom/liquable/nemo/message/model/VoiceMessage;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fileLength"    # J
    .param p3, "duration"    # J
    .param p5, "s3Endpoint"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    move-object v1, p0

    move-wide v2, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/message/model/VoiceMessage;-><init>(Ljava/lang/String;JZJLjava/lang/String;)V

    .line 28
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/VoiceMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/VoiceMessage;->initial()V

    .line 29
    invoke-virtual {v0, v4}, Lcom/liquable/nemo/message/model/VoiceMessage;->updateTransferAsTransfering(I)V

    .line 30
    return-object v0
.end method

.method public static createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/cubie_voice/%s"

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
    .line 127
    const-string/jumbo v0, "cubie/%s/voice/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getSenderId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileName:Ljava/lang/String;

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
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
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
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v0
.end method

.method public getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getAssetRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<span class=\"italic-font\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d01ed

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

.method public getDuration()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->duration:J

    return-wide v0
.end method

.method public getFileLength()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileLength:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VOICE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 114
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->VOICE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/message/model/VoiceMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 123
    const v0, 0x7f0d032b

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
    .line 131
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getRemoteKeyPath()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "keyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 134
    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getS3endpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    goto :goto_0
.end method

.method public getShareEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "share_voice"

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->playing:Z

    return v0
.end method

.method public isPreparing()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->preparing:Z

    return v0
.end method

.method public isVoiceComplete()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->voiceComplete:Z

    return v0
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "playing"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->playing:Z

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->preparing:Z

    .line 171
    return-void
.end method

.method public setPreparing(Z)V
    .locals 1
    .param p1, "preparing"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->preparing:Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->playing:Z

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoiceMessage [fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", voiceComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->voiceComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->playing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", preparing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->preparing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getS3endpoint()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getS3endpoint()Ljava/lang/String;

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

.method public voiceComplete()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/message/model/VoiceMessage;->voiceComplete:Z

    .line 198
    return-void
.end method
