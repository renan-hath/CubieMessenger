.class public Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;
.source "SecretPictureMessageSelfView.java"


# instance fields
.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

.field private thumbnailImageView:Landroid/widget/ImageView;

.field private transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

.field private waitingProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;-><init>(Landroid/content/Context;Z)V

    .line 42
    iput-object p2, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 43
    return-void
.end method

.method private decryptTextSafely(Lcom/liquable/nemo/message/model/SecretPictureMessage;)Ljava/lang/String;
    .locals 3
    .param p1, "pictureMessage"    # Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getDecryptedText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private tryRenderThumbnail(Ljava/io/File;)Z
    .locals 6
    .param p1, "thumbnailFile"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {p1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    const/16 v2, 0xc0

    .line 86
    .local v2, "width":I
    const/16 v1, 0xc0

    .line 88
    .local v1, "height":I
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeDimension(Ljava/lang/String;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v0

    .line 90
    .local v0, "dimension":Lcom/liquable/nemo/util/Dimension;
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getHeight()I

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 95
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0xc0

    .line 96
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getWidth()I

    move-result v4

    div-int v1, v3, v4

    .line 97
    const/16 v2, 0xc0

    .line 104
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->waitingProgress:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object v3, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;

    invoke-direct {v5, p1, v2, v1}, Lcom/liquable/nemo/util/RoundedPhotoThumbnail;-><init>(Ljava/io/File;II)V

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 109
    const/4 v3, 0x1

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getWidth()I

    move-result v3

    mul-int/lit16 v3, v3, 0xc0

    .line 100
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Dimension;->getHeight()I

    move-result v4

    div-int v2, v3, v4

    .line 101
    const/16 v1, 0xc0

    goto :goto_1
.end method

.method private updateThumbnail(Lcom/liquable/nemo/message/model/SecretPictureMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .prologue
    const/16 v5, 0xc0

    .line 128
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getTemporaryLocalThumbnailKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 129
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, "thumbnail":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->tryRenderThumbnail(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->waitingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/message/view/TransparentDrawable;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v3, v4, v5, v5}, Lcom/liquable/nemo/message/view/TransparentDrawable;-><init>(FII)V

    .line 133
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010e

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    const v1, 0x7f080258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->thumbnailImageView:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f080289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->waitingProgress:Landroid/widget/ProgressBar;

    .line 62
    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 63
    return-void
.end method

.method protected initSidebarBubbleBody(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "sidebarBubbleRoot"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 67
    new-instance v0, Lcom/liquable/nemo/message/view/SecretCountDownView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 70
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 71
    return-void
.end method

.method protected onThumbnailClicked(Landroid/content/Context;Lcom/liquable/nemo/message/model/AbstractMediaMessage;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    .param p3, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 78
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 114
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .line 116
    .local v0, "pictureMessage":Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->updateThumbnail(Lcom/liquable/nemo/message/model/SecretPictureMessage;)V

    .line 117
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->decryptTextSafely(Lcom/liquable/nemo/message/model/SecretPictureMessage;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->updatePictureMsgTextView(Ljava/lang/String;Z)V

    .line 120
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->timeToExpireInMilli()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/message/view/SecretCountDownView;->update(J)V

    .line 121
    return-void
.end method
