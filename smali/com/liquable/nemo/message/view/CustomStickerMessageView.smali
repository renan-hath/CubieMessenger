.class public Lcom/liquable/nemo/message/view/CustomStickerMessageView;
.super Landroid/widget/RelativeLayout;
.source "CustomStickerMessageView.java"


# static fields
.field private static final DEFAULT_STICKER_MSG_DP:I = 0x80


# instance fields
.field private final customStickerImageView:Landroid/widget/ImageView;

.field private final customStickerMessageErrorMsg:Landroid/widget/TextView;

.field private final customStickerProgressBar:Landroid/widget/ProgressBar;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 35
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v0, 0x7f08026b

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerMessageErrorMsg:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerMessageErrorMsg:Landroid/widget/TextView;

    const/16 v1, 0x80

    invoke-static {p1, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 38
    const v0, 0x7f08026c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f08026d

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerProgressBar:Landroid/widget/ProgressBar;

    .line 40
    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 4

    .prologue
    .line 43
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 44
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 45
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 47
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->cancel(Landroid/widget/ImageView;)V

    .line 50
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/CustomStickerMessage;Landroid/content/Context;)V
    .locals 13
    .param p1, "customStickerMessage"    # Lcom/liquable/nemo/message/model/CustomStickerMessage;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->setTag(Ljava/lang/Object;)V

    .line 55
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v9, p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->checkFileExistsAndDownload(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    .line 56
    invoke-virtual {v9, p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->checkAndCreateAnimatedFilesFromMessage(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 57
    :cond_0
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerProgressBar:Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v10, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/util/ImageLoader;->cancel(Landroid/widget/ImageView;)V

    .line 59
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getLocalKeyPaths()Ljava/util/List;

    move-result-object v6

    .line 64
    .local v6, "localKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerProgressBar:Landroid/widget/ProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getAnimatedKeyPaths()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "animatedKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/storage/LocalKeyPath;

    sget-object v10, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 69
    .local v2, "file":Ljava/io/File;
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v10, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    new-instance v11, Lcom/liquable/nemo/message/view/CustomStickerImage;

    .line 71
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v11, p2, v2, v12}, Lcom/liquable/nemo/message/view/CustomStickerImage;-><init>(Landroid/content/Context;Ljava/io/File;I)V

    .line 69
    invoke-virtual {v9, v10, v11}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0

    .line 75
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectWidth()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    .line 76
    .local v7, "widthInDp":I
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectHeight()I

    move-result v9

    div-int/lit8 v3, v9, 0x2

    .line 77
    .local v3, "heightInDp":I
    invoke-static {p2, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v8

    .line 78
    .local v8, "widthInPixel":I
    invoke-static {p2, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 80
    .local v4, "heightInPixel":I
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 81
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 83
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 84
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 85
    .local v5, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v10, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v10}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 86
    .restart local v2    # "file":Ljava/io/File;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    const/16 v11, 0x1f4

    invoke-virtual {v1, v10, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 88
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 89
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 91
    iget-object v9, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->customStickerImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/liquable/nemo/message/view/CustomStickerMessageView$1;

    invoke-direct {v10, p0, v1}, Lcom/liquable/nemo/message/view/CustomStickerMessageView$1;-><init>(Lcom/liquable/nemo/message/view/CustomStickerMessageView;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
