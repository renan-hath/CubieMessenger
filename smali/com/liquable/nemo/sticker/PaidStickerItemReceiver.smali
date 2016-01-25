.class public Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;
.super Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;
.source "PaidStickerItemReceiver.java"


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "fragment"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Lcom/liquable/nemo/util/ImageLoader;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    const-string/jumbo v2, "com.liquable.nemo.sticker.StickerEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/StickerEvent;

    .line 22
    .local v0, "event":Lcom/liquable/nemo/sticker/StickerEvent;
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "productIds":[Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v2, v2, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v3, v3, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 25
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    .end local v0    # "event":Lcom/liquable/nemo/sticker/StickerEvent;
    .end local v1    # "productIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 29
    .restart local v0    # "event":Lcom/liquable/nemo/sticker/StickerEvent;
    .restart local v1    # "productIds":[Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/sticker/StickerEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v3, v3, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItem(Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadStickerPackage()V

    goto :goto_0

    .line 32
    :cond_2
    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_FAILED_AFTER_RETRIES:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/sticker/StickerEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_CANCELED:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/sticker/StickerEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->updatePurchaseStateAndButtons()V

    goto :goto_0

    .line 36
    :cond_3
    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/sticker/StickerEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemReceiver;->fragment:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->purchaseRpcStarted()V

    goto :goto_0
.end method
