.class public Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "PictureMessageOtherBigView.java"


# instance fields
.field private final messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isOneToOne"    # Z

    .prologue
    .line 28
    const v0, 0x7f0300f7

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 29
    new-instance v0, Lcom/liquable/nemo/message/view/PictureMessageBigView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    .line 30
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    const v0, 0x7f08028c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->progressBar:Landroid/widget/ProgressBar;

    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    new-instance v1, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView$1;-><init>(Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->onRecycle()V

    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->clearImage()V

    .line 61
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 5
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v4, 0x0

    .line 65
    move-object v1, p1

    check-cast v1, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 67
    .local v1, "message":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v1, v4}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->update(Lcom/liquable/nemo/message/model/PictureMessage;)V

    .line 74
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->setTag(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
