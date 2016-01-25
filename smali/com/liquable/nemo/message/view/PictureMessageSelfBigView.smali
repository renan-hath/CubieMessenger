.class public Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "PictureMessageSelfBigView.java"


# instance fields
.field private final messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

.field private transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 28
    const v0, 0x7f0300f8

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 29
    new-instance v0, Lcom/liquable/nemo/message/view/PictureMessageBigView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    .line 30
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 36
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    new-instance v1, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$1;-><init>(Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 6
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    move-object v1, p1

    .line 60
    check-cast v1, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 61
    .local v1, "message":Lcom/liquable/nemo/message/model/PictureMessage;
    sget-object v4, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$3;->$SwitchMap$com$liquable$nemo$message$model$AbstractMediaMessage$TransferState:[I

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 69
    :cond_0
    :goto_0
    return v2

    .line 63
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isWaitingForSendAck(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 65
    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onClickResend(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$2;-><init>(Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 89
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->onRecycle()V

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->clearImage()V

    .line 96
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 100
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 102
    .local v0, "message":Lcom/liquable/nemo/message/model/PictureMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->update(Lcom/liquable/nemo/message/model/PictureMessage;)V

    .line 103
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->messageBigView:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 106
    return-void
.end method
