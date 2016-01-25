.class public Lcom/liquable/nemo/message/view/LocationMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "LocationMessageOtherView.java"


# instance fields
.field private final messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isOneToOne"    # Z

    .prologue
    .line 25
    const v0, 0x7f0300f7

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 26
    new-instance v0, Lcom/liquable/nemo/message/view/LocationMessageBigView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/liquable/nemo/message/view/LocationMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    .line 27
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    const v0, 0x7f08028c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 34
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->onRecycle()V

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->clearImage()V

    .line 40
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 44
    move-object v1, p1

    check-cast v1, Lcom/liquable/nemo/message/model/LocationMessage;

    .line 45
    .local v1, "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/LocationMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->update(Lcom/liquable/nemo/message/model/LocationMessage;)V

    .line 52
    return-void

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
