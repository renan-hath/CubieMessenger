.class public Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "CustomStickerMessageSelfView.java"


# instance fields
.field private customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 18
    const v0, 0x7f0300fd

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

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

    iget-object v1, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSystemAck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 31
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onClickResend(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->resendMessage(Ljava/lang/String;)Z

    .line 40
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->onRecycle()V

    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->clearImage()V

    .line 46
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 50
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .line 51
    .local v0, "customStickerMessage":Lcom/liquable/nemo/message/model/CustomStickerMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->customStickerMessageView:Lcom/liquable/nemo/message/view/CustomStickerMessageView;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/message/view/CustomStickerMessageView;->update(Lcom/liquable/nemo/message/model/CustomStickerMessage;Landroid/content/Context;)V

    .line 53
    return-void
.end method
