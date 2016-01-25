.class public Lcom/liquable/nemo/message/view/StickerMessageView;
.super Landroid/widget/RelativeLayout;
.source "StickerMessageView.java"


# static fields
.field private static final DEFAULT_STICKER_MSG_DP:I = 0x80


# instance fields
.field private final stickerImageView:Landroid/widget/ImageView;

.field private final stickerMessageErrorMsg:Landroid/widget/TextView;

.field private final stickerProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/StickerMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    const v0, 0x7f08028f

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/StickerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    const/16 v1, 0x80

    invoke-static {p1, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 42
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/StickerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f080291

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/StickerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerProgressBar:Landroid/widget/ProgressBar;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/StickerMessageView;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/liquable/nemo/message/model/StickerMessage;
    .param p3, "x3"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    return-void
.end method

.method private display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/StickerMessage;
    .param p3, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    const/16 v10, 0x80

    const/4 v9, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 58
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    if-nez p3, :cond_0

    .line 60
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-static {p1, v10}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 61
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-static {p1, v10}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 67
    :goto_0
    sget-object v5, Lcom/liquable/nemo/message/view/StickerMessageView$3;->$SwitchMap$com$liquable$nemo$message$model$StickerMessage$StickerTransferState:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/StickerMessage;->getTransferState()Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 88
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v1, "density":F
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5, p3, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerBitmaps(Lcom/liquable/nemo/model/sticker/StickerDto;F)Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "stickers":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsTransfering(I)V

    .line 100
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5, p3}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadSticker(Lcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 119
    .end local v1    # "density":F
    .end local v4    # "stickers":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :goto_1
    return-void

    .line 63
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/liquable/nemo/model/sticker/StickerDto;->getHeight()I

    move-result v6

    invoke-static {p1, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 64
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/liquable/nemo/model/sticker/StickerDto;->getWidth()I

    move-result v6

    invoke-static {p1, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    const v6, 0x7f02053a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    const v6, 0x7f0d04c2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 76
    :pswitch_1
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    const v6, 0x7f020539

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 78
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    const v6, 0x7f0d04b5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 83
    :pswitch_2
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerMessageErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 104
    .restart local v1    # "density":F
    .restart local v4    # "stickers":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :cond_1
    invoke-virtual {p3}, Lcom/liquable/nemo/model/sticker/StickerDto;->getFrames()Ljava/util/List;

    move-result-object v2

    .line 106
    .local v2, "frames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 107
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 108
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/StickerMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 111
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 113
    iget-object v5, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/liquable/nemo/message/view/StickerMessageView$1;

    invoke-direct {v6, p0, v0}, Lcom/liquable/nemo/message/view/StickerMessageView$1;-><init>(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearImage()V
    .locals 4

    .prologue
    .line 47
    iget-object v2, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 49
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 51
    iget-object v2, p0, Lcom/liquable/nemo/message/view/StickerMessageView;->stickerImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/StickerMessage;Landroid/content/Context;)V
    .locals 8
    .param p1, "stickerMessage"    # Lcom/liquable/nemo/message/model/StickerMessage;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/StickerMessageView;->setTag(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/StickerMessage;->getTransferState()Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_FOUND:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/StickerMessage;->getTransferState()Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_VISIBLE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/StickerMessage;->getTransferState()Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 179
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/StickerMessage;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "stickerCode":Ljava/lang/String;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v0, v4, v7}, Lcom/liquable/nemo/sticker/model/StickerManager;->findVisibleSticker(Ljava/lang/String;Z)Lcom/liquable/nemo/sticker/model/VisibleSticker;

    move-result-object v6

    .line 134
    .local v6, "stickerResult":Lcom/liquable/nemo/sticker/model/VisibleSticker;
    invoke-virtual {v6}, Lcom/liquable/nemo/sticker/model/VisibleSticker;->isFound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v6}, Lcom/liquable/nemo/sticker/model/VisibleSticker;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsNotVisible()V

    .line 138
    :cond_2
    invoke-virtual {v6}, Lcom/liquable/nemo/sticker/model/VisibleSticker;->getStickerDto()Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    goto :goto_0

    .line 142
    :cond_3
    new-instance v0, Lcom/liquable/nemo/message/view/StickerMessageView$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/StickerMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/message/view/StickerMessageView$2;-><init>(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/message/model/StickerMessage;)V

    new-array v1, v7, [Ljava/lang/Void;

    .line 176
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/StickerMessageView$2;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
