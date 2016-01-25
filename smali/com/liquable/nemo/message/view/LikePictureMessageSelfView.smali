.class public Lcom/liquable/nemo/message/view/LikePictureMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "LikePictureMessageSelfView.java"


# instance fields
.field private final likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 18
    const v0, 0x7f0300e7

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 19
    new-instance v0, Lcom/liquable/nemo/message/view/LikePictureMessageView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/liquable/nemo/message/view/LikePictureMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageSelfView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    .line 23
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageSelfView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 28
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSystemAck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 33
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 36
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
    .line 41
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->resendMessage(Ljava/lang/String;)Z

    .line 42
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->onRecycle()V

    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageSelfView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->clearImage()V

    .line 48
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageSelfView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    check-cast p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->update(Lcom/liquable/nemo/message/model/LikePictureMessage;)V

    .line 53
    return-void
.end method
