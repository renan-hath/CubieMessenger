.class public Lcom/liquable/nemo/message/view/PaintMessageView;
.super Landroid/widget/RelativeLayout;
.source "PaintMessageView.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final paintImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 32
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/PaintMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f2

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PaintMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->paintImageView:Landroid/widget/ImageView;

    .line 34
    new-instance v0, Lcom/liquable/nemo/message/view/PaintMessageView$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/view/PaintMessageView$1;-><init>(Lcom/liquable/nemo/message/view/PaintMessageView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PaintMessageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/liquable/nemo/message/view/PaintMessageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->paintImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->paintImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->cancel(Landroid/widget/ImageView;)V

    .line 46
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/PaintMessage;)V
    .locals 7
    .param p1, "paintMessage"    # Lcom/liquable/nemo/message/model/PaintMessage;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/PaintMessageView;->setTag(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, "paintFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->paintImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/message/view/PaintImage;

    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/PaintMessageView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 56
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getPaintWidth()I

    move-result v5

    .line 57
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getPaintHeight()I

    move-result v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/liquable/nemo/message/view/PaintImage;-><init>(Landroid/content/Context;Ljava/io/File;II)V

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 60
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 59
    invoke-virtual {v1, p1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 62
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->paintImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/message/view/TransparentDrawable;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/PaintMessageView;->context:Landroid/content/Context;

    const/16 v5, 0x280

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v5, v6}, Lcom/liquable/nemo/message/view/TransparentDrawable;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method
