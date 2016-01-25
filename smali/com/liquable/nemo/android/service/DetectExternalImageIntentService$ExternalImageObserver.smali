.class final Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;
.super Landroid/database/ContentObserver;
.source "DetectExternalImageIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExternalImageObserver"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final delayHandlder:Landroid/os/Handler;

.field private delayIntentTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    iput-object p2, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayHandlder:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$1;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->isDetectExternalImage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-nez p1, :cond_0

    .line 73
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 106
    .local v1, "mediaId":I
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getLastDetectedExternalImageMediaId()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 116
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/util/Pref;->setLastDetectedExternalImageMediaId(I)V

    .line 118
    iget-object v3, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 120
    .local v2, "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    # getter for: Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detected external picture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 122
    if-eqz v2, :cond_0

    .line 127
    invoke-static {v2}, Lcom/liquable/nemo/camera/model/CameraManager;->isCubieGallery(Lcom/liquable/nemo/android/provider/PictureInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}"

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "image/jpg"

    .line 142
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    :cond_2
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "screen"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "shot"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->context:Landroid/content/Context;

    # invokes: Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->isExternalCameraByIntentFromCubie(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;)Z
    invoke-static {v3, v2}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->access$100(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    # getter for: Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;
    invoke-static {}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->access$200()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    # getter for: Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;
    invoke-static {}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->access$200()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    # getter for: Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;
    invoke-static {}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->access$300()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v3, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayIntentTask:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayHandlder:Landroid/os/Handler;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayIntentTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayIntentTask:Ljava/lang/Runnable;

    .line 174
    :cond_4
    new-instance v3, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;

    invoke-direct {v3, p0, v2}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;-><init>(Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    iput-object v3, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayIntentTask:Ljava/lang/Runnable;

    .line 185
    iget-object v3, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayHandlder:Landroid/os/Handler;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->delayIntentTask:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 107
    .end local v2    # "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method
