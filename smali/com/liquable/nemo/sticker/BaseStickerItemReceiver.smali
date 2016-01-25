.class public Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseStickerItemReceiver.java"


# instance fields
.field protected fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

.field protected imageLoader:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "fragment"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const-string/jumbo v4, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    const-string/jumbo v4, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .line 29
    .local v0, "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    const-string/jumbo v4, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "fileType":Ljava/lang/String;
    sget-object v4, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_SAMPLE:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    sget-object v4, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    const-string/jumbo v4, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "itemCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    .end local v0    # "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    .end local v1    # "fileType":Ljava/lang/String;
    .end local v2    # "itemCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local v0    # "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    .restart local v1    # "fileType":Ljava/lang/String;
    .restart local v2    # "itemCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_PATH"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "keyPath":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleAnimationAddFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v2    # "itemCode":Ljava/lang/String;
    .end local v3    # "keyPath":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    .line 48
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v4, v5}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    sget-object v4, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    new-instance v5, Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v6, v6, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    iget-object v7, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v7, v7, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemThumbnail:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v8, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v8, v8, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemThumbnail:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v5, v6, v7, v8}, Lcom/liquable/nemo/sticker/StickerItemThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;II)V

    iput-object v5, v4, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadableImage:Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    .line 55
    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v5, v5, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemThumbnail:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v6, v6, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadableImage:Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0

    .line 58
    .end local v0    # "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    .end local v1    # "fileType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "com.liquable.nemo.sticker.StickerEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.liquable.nemo.sticker.KEY_PACKAGE"

    .line 60
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v4, v5}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const-string/jumbo v4, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/StickerEvent;

    .line 65
    .local v0, "event":Lcom/liquable/nemo/sticker/StickerEvent;
    sget-object v4, Lcom/liquable/nemo/sticker/StickerEvent;->PACKAGE_DOWNLOADING_STATE_CHANGED:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/sticker/StickerEvent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->updateView()V

    goto/16 :goto_0
.end method
