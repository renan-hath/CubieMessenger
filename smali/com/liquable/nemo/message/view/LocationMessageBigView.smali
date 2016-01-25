.class public Lcom/liquable/nemo/message/view/LocationMessageBigView;
.super Lcom/liquable/nemo/message/view/MessageBigView;
.source "LocationMessageBigView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/message/view/MessageBigView",
        "<",
        "Lcom/liquable/nemo/message/model/LocationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isSentByMe"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/message/view/MessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    .line 21
    new-instance v0, Lcom/liquable/nemo/message/view/LocationMessageBigView$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/view/LocationMessageBigView$1;-><init>(Lcom/liquable/nemo/message/view/LocationMessageBigView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0300eb

    return v0
.end method

.method protected bridge synthetic getText(Lcom/liquable/nemo/message/model/DomainMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/liquable/nemo/message/model/LocationMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->getText(Lcom/liquable/nemo/message/model/LocationMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText(Lcom/liquable/nemo/message/model/LocationMessage;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/LocationMessage;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic update(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/liquable/nemo/message/model/LocationMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->update(Lcom/liquable/nemo/message/model/LocationMessage;)V

    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/LocationMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/liquable/nemo/message/model/LocationMessage;

    .prologue
    const/16 v6, 0x280

    const/16 v5, 0x1e0

    .line 41
    invoke-super {p0, p1}, Lcom/liquable/nemo/message/view/MessageBigView;->update(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/message/view/PaintImage;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v6, v5}, Lcom/liquable/nemo/message/view/PaintImage;-><init>(Landroid/content/Context;Ljava/io/File;II)V

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-boolean v1, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView;->isSentByMe:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->isUploadComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 54
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->getRemoteKeyPathWithS3EndPoint()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 53
    invoke-virtual {v1, p1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/LocationMessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/message/view/TransparentDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v6, v5}, Lcom/liquable/nemo/message/view/TransparentDrawable;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method
