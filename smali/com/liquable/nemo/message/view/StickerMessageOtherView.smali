.class public Lcom/liquable/nemo/message/view/StickerMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "StickerMessageOtherView.java"


# instance fields
.field private stickerMessageView:Lcom/liquable/nemo/message/view/StickerMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 18
    const v0, 0x7f0300fc

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 23
    new-instance v0, Lcom/liquable/nemo/message/view/StickerMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/StickerMessageOtherView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/StickerMessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageOtherView;->stickerMessageView:Lcom/liquable/nemo/message/view/StickerMessageView;

    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageOtherView;->stickerMessageView:Lcom/liquable/nemo/message/view/StickerMessageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->onRecycle()V

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageOtherView;->stickerMessageView:Lcom/liquable/nemo/message/view/StickerMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/StickerMessageView;->clearImage()V

    .line 31
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 35
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/StickerMessage;

    .line 36
    .local v0, "stickerMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/StickerMessageOtherView;->stickerMessageView:Lcom/liquable/nemo/message/view/StickerMessageView;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/StickerMessageOtherView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/message/view/StickerMessageView;->update(Lcom/liquable/nemo/message/model/StickerMessage;Landroid/content/Context;)V

    .line 38
    return-void
.end method
