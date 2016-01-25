.class public Lcom/liquable/nemo/message/view/YoutubeMessageBigView;
.super Lcom/liquable/nemo/message/view/MessageBigView;
.source "YoutubeMessageBigView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/message/view/MessageBigView",
        "<",
        "Lcom/liquable/nemo/message/model/YoutubeMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private playButton:Landroid/view/View;

.field private playingMask:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isSentByMe"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/message/view/MessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    .line 23
    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->playButton:Landroid/view/View;

    .line 24
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->playingMask:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView$1;-><init>(Lcom/liquable/nemo/message/view/YoutubeMessageBigView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method private showPlayButton(Lcom/liquable/nemo/message/model/YoutubeMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/liquable/nemo/chat/ChattingActivity;

    if-nez v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/ChattingActivity;

    .line 53
    .local v0, "chattingActivity":Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeIsPlaying(Lcom/liquable/nemo/message/model/YoutubeMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f030106

    return v0
.end method

.method protected bridge synthetic getText(Lcom/liquable/nemo/message/model/DomainMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/liquable/nemo/message/model/YoutubeMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->getText(Lcom/liquable/nemo/message/model/YoutubeMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText(Lcom/liquable/nemo/message/model/YoutubeMessage;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic update(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/liquable/nemo/message/model/YoutubeMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->update(Lcom/liquable/nemo/message/model/YoutubeMessage;)V

    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/YoutubeMessage;)V
    .locals 10
    .param p1, "message"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/liquable/nemo/message/view/MessageBigView;->update(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/message/view/BigPictureImage;->getTargetWidth(Landroid/content/Context;)I

    move-result v1

    .line 61
    .local v1, "width":I
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/message/view/BigPictureImage;->getTargetWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43f00000    # 480.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 64
    .local v0, "height":I
    iget-object v2, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/util/urlimage/UrlFileType;->YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 67
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v6

    .line 68
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v7

    .line 65
    invoke-static {v4, v5, v6, v7, v8}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIZ)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v4

    .line 64
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->showPlayButton(Lcom/liquable/nemo/message/model/YoutubeMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v2, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->playButton:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v2, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->playingMask:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->playButton:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->playingMask:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
