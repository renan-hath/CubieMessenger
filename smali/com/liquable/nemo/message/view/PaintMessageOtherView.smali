.class public Lcom/liquable/nemo/message/view/PaintMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "PaintMessageOtherView.java"


# instance fields
.field private final onSettingBtnClick:Landroid/view/View$OnClickListener;

.field private final paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private settingBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onSettingBtnClick"    # Landroid/view/View$OnClickListener;
    .param p4, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p5, "isOneToOne"    # Z

    .prologue
    .line 32
    const v0, 0x7f0300f3

    invoke-direct {p0, p1, v0, p2, p5}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 33
    iput-object p3, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->onSettingBtnClick:Landroid/view/View$OnClickListener;

    .line 34
    new-instance v0, Lcom/liquable/nemo/message/view/PaintMessageView;

    invoke-direct {v0, p1, p2, p4}, Lcom/liquable/nemo/message/view/PaintMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    .line 35
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 42
    const v0, 0x7f08026e

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->settingBtn:Landroid/widget/ImageButton;

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->settingBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->onSettingBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->onRecycle()V

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/PaintMessageView;->clearImage()V

    .line 50
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 54
    move-object v1, p1

    check-cast v1, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 55
    .local v1, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->settingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "paintFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/message/view/PaintMessageView;->update(Lcom/liquable/nemo/message/model/PaintMessage;)V

    .line 64
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
