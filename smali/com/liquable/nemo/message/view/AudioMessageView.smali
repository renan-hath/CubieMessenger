.class public Lcom/liquable/nemo/message/view/AudioMessageView;
.super Landroid/widget/RelativeLayout;
.source "AudioMessageView.java"


# instance fields
.field private final audioTitle:Landroid/widget/TextView;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final thumbnailImageView:Landroid/widget/ImageView;

.field private final transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 29
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AudioMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AudioMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->audioTitle:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AudioMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 32
    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AudioMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    .line 33
    return-void
.end method

.method private updateThumbnail(Lcom/liquable/nemo/message/model/AudioMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/liquable/nemo/message/model/AudioMessage;

    .prologue
    const/4 v5, 0x1

    .line 42
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    const/16 v2, 0x96

    .line 44
    .local v2, "width":I
    const/16 v1, 0x96

    .line 46
    .local v1, "height":I
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0x96

    .line 49
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailWidth()I

    move-result v4

    div-int v1, v3, v4

    .line 50
    const/16 v2, 0x96

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "albumArtFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;

    invoke-direct {v5, v0, v2, v1}, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;-><init>(Ljava/io/File;II)V

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 74
    :goto_1
    return-void

    .line 51
    .end local v0    # "albumArtFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailWidth()I

    move-result v3

    mul-int/lit16 v3, v3, 0x96

    .line 53
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getThumbnailHeight()I

    move-result v4

    div-int v2, v3, v4

    .line 54
    const/16 v1, 0x96

    goto :goto_0

    .line 65
    .restart local v0    # "albumArtFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->isAlbumArtExists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 67
    invoke-virtual {p1, v5}, Lcom/liquable/nemo/message/model/AudioMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 68
    invoke-virtual {p1, v5}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 66
    invoke-virtual {v3, p1, v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 70
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/liquable/nemo/message/view/ResourceDrawable;

    const v6, 0x7f0204ab

    invoke-direct {v5, v6, v2, v1}, Lcom/liquable/nemo/message/view/ResourceDrawable;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_1
.end method


# virtual methods
.method public update(Lcom/liquable/nemo/message/model/AudioMessage;)V
    .locals 2
    .param p1, "audioMessage"    # Lcom/liquable/nemo/message/model/AudioMessage;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AudioMessageView;->updateThumbnail(Lcom/liquable/nemo/message/model/AudioMessage;)V

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->audioTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AudioMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 39
    return-void
.end method
