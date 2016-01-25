.class public Lcom/liquable/nemo/message/view/PictureMessageView;
.super Landroid/widget/RelativeLayout;
.source "PictureMessageView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final pictureMsgTextView:Landroid/widget/TextView;

.field private final thumbnailImageView:Landroid/widget/ImageView;

.field private final transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

.field private final waitingProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "pictureMsgTextView"    # Landroid/widget/TextView;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 39
    iput-object p3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->pictureMsgTextView:Landroid/widget/TextView;

    .line 40
    const/4 v0, 0x2

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/PictureMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f5

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PictureMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PictureMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->waitingProgress:Landroid/widget/ProgressBar;

    .line 44
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PictureMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 45
    return-void
.end method

.method private updateThumbnail(Lcom/liquable/nemo/message/model/PictureMessage;)V
    .locals 8
    .param p1, "message"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 53
    invoke-virtual {p1, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "thumbFile":Ljava/io/File;
    const/16 v2, 0xc0

    .line 56
    .local v2, "width":I
    const/16 v0, 0xc0

    .line 58
    .local v0, "height":I
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth2()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight2()I

    move-result v3

    if-lez v3, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth2()I

    move-result v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight2()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight2()I

    move-result v3

    mul-int/lit16 v3, v3, 0xc0

    .line 61
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth2()I

    move-result v4

    div-int v0, v3, v4

    .line 62
    const/16 v2, 0xc0

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 80
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->pictureMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->pictureMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :goto_1
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 88
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->waitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;

    invoke-direct {v5, v1, v2, v0}, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;-><init>(Ljava/io/File;II)V

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 98
    :goto_2
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 99
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth2()I

    move-result v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight2()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth2()I

    move-result v3

    mul-int/lit16 v3, v3, 0xc0

    .line 65
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight2()I

    move-result v4

    div-int v2, v3, v4

    .line 66
    const/16 v0, 0xc0

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0x96

    .line 71
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth()I

    move-result v4

    div-int v0, v3, v4

    .line 72
    const/16 v2, 0x96

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailWidth()I

    move-result v3

    mul-int/lit16 v3, v3, 0x96

    .line 75
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getThumbnailHeight()I

    move-result v4

    div-int v2, v3, v4

    .line 76
    const/16 v0, 0x96

    goto/16 :goto_0

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->pictureMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->pictureMsgTextView:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 91
    :cond_5
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 92
    invoke-virtual {p1, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 93
    invoke-virtual {p1, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 91
    invoke-virtual {v3, p1, v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 94
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->waitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/liquable/nemo/message/view/TransparentDrawable;

    iget-object v6, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 96
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v5, v6, v2, v0}, Lcom/liquable/nemo/message/view/TransparentDrawable;-><init>(FII)V

    .line 95
    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public update(Lcom/liquable/nemo/message/model/PictureMessage;)V
    .locals 1
    .param p1, "pictureMessage"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/PictureMessageView;->updateThumbnail(Lcom/liquable/nemo/message/model/PictureMessage;)V

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 50
    return-void
.end method
