.class public Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "CustomStickerMessageOtherView.java"


# instance fields
.field private customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 19
    const v0, 0x7f0300fc

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    new-instance v0, Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->onRecycle()V

    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->clearImage()V

    .line 32
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 36
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .line 37
    .local v0, "customStickerMessage":Lcom/liquable/nemo/message/model/CustomStickerMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->update(Lcom/liquable/nemo/message/model/CustomStickerMessage;Landroid/content/Context;)V

    .line 39
    return-void
.end method
