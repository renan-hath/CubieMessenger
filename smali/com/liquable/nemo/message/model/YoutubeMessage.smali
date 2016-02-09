.class public Lcom/liquable/nemo/message/model/YoutubeMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "YoutubeMessage.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field public static final THUMBNAIL_HEIGHT:I = 0x168

.field public static final THUMBNAIL_WIDTH:F = 480.0f

.field private static final serialVersionUID:J = -0xff0617fbc742bfeL


# instance fields
.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p2, "videoId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "videoId"
        .end annotation
    .end param
    .param p3, "url"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "url"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "title should not be null"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->title:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->videoId:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->url:Ljava/lang/String;

    .line 48
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/YoutubeMessage;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/liquable/nemo/message/model/YoutubeMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/message/model/YoutubeMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .local v0, "message":Lcom/liquable/nemo/message/model/YoutubeMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->initial()V

    .line 22
    return-object v0
.end method

.method public static createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-virtual {v1, p0}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->getKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v2, "cubie/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    const-string/jumbo v1, "%s(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<span class=\"italic-font\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d01ee

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</span>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->YOUTUBE_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->YOUTUBE_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/message/model/YoutubeMessage;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://i.ytimg.com/vi/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mqdefault.jpg"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "YoutubeMessage [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/YoutubeMessage;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
