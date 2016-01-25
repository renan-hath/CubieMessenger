.class public Lcom/liquable/nemo/message/view/VideoMessageBigView;
.super Lcom/liquable/nemo/message/view/MessageBigView;
.source "VideoMessageBigView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/message/view/MessageBigView",
        "<",
        "Lcom/liquable/nemo/message/model/VideoMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final downloadBtn:Landroid/view/View;

.field private final playButton:Landroid/view/View;

.field private final stopDownloadBtn:Landroid/view/View;

.field private final transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isSentByMe"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/message/view/MessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    .line 29
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 30
    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->downloadBtn:Landroid/view/View;

    .line 31
    const v0, 0x7f080276

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->stopDownloadBtn:Landroid/view/View;

    .line 32
    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->playButton:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/liquable/nemo/message/view/VideoMessageBigView$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/view/VideoMessageBigView$1;-><init>(Lcom/liquable/nemo/message/view/VideoMessageBigView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/message/view/VideoMessageBigView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/VideoMessageBigView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->downloadBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/message/view/VideoMessageBigView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/VideoMessageBigView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->stopDownloadBtn:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f030103

    return v0
.end method

.method protected bridge synthetic getText(Lcom/liquable/nemo/message/model/DomainMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/liquable/nemo/message/model/VideoMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->getText(Lcom/liquable/nemo/message/model/VideoMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText(Lcom/liquable/nemo/message/model/VideoMessage;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VideoMessage;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->getFileLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->byteCountToDisplaySize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic update(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/liquable/nemo/message/model/VideoMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->update(Lcom/liquable/nemo/message/model/VideoMessage;)V

    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/VideoMessage;)V
    .locals 10
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VideoMessage;

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/liquable/nemo/message/view/MessageBigView;->update(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 67
    invoke-virtual {p1, v4}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, "mediaFile":Ljava/io/File;
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 70
    .local v2, "thumbnailFile":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v7, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    new-instance v8, Lcom/liquable/nemo/message/view/BigPictureImage;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/liquable/nemo/message/view/BigPictureImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v5, v7, v8}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 82
    :goto_0
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    .line 83
    .local v3, "videoExists":Z
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->isVideoComplete()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->isSentByMe:Z

    if-nez v5, :cond_4

    .line 85
    .local v0, "canDownloadVideo":Z
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->downloadBtn:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v7, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->downloadBtn:Landroid/view/View;

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v5

    sget-object v8, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->PENDING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    if-ne v5, v8, :cond_5

    move v5, v4

    .line 86
    :goto_2
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v5, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->stopDownloadBtn:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v7, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->stopDownloadBtn:Landroid/view/View;

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 90
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v5

    sget-object v8, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    if-ne v5, v8, :cond_6

    move v5, v4

    .line 89
    :goto_3
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v5, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->playButton:Landroid/view/View;

    if-eqz v3, :cond_7

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v4, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 93
    return-void

    .line 73
    .end local v0    # "canDownloadVideo":Z
    .end local v3    # "videoExists":Z
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailExists()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->isSentByMe:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VideoMessage;->isThumbnailComplete()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    :cond_2
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 75
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v7

    .line 76
    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/VideoMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v8

    .line 74
    invoke-virtual {v5, p1, v7, v8}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 79
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v7, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    new-instance v8, Lcom/liquable/nemo/message/view/TransparentDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v0, v0}, Lcom/liquable/nemo/message/view/TransparentDrawable;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v5, v7, v8}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0

    .restart local v3    # "videoExists":Z
    :cond_4
    move v0, v4

    .line 83
    goto :goto_1

    .restart local v0    # "canDownloadVideo":Z
    :cond_5
    move v5, v6

    .line 87
    goto :goto_2

    :cond_6
    move v5, v6

    .line 90
    goto :goto_3

    :cond_7
    move v4, v6

    .line 91
    goto :goto_4
.end method
