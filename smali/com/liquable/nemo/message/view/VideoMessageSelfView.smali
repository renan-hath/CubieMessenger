.class public Lcom/liquable/nemo/message/view/VideoMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "VideoMessageSelfView.java"


# instance fields
.field private final messageBigView:Lcom/liquable/nemo/message/view/VideoMessageBigView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 22
    const v0, 0x7f0300f8

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 23
    new-instance v0, Lcom/liquable/nemo/message/view/VideoMessageBigView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/liquable/nemo/message/view/VideoMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    .line 24
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 30
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 6
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    move-object v1, p1

    .line 35
    check-cast v1, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 36
    .local v1, "message":Lcom/liquable/nemo/message/model/VideoMessage;
    sget-object v4, Lcom/liquable/nemo/message/view/VideoMessageSelfView$2;->$SwitchMap$com$liquable$nemo$message$model$AbstractMediaMessage$TransferState:[I

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 44
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    move v2, v3

    .line 40
    goto :goto_0

    .line 42
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onClickResend(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;-><init>(Lcom/liquable/nemo/message/view/VideoMessageSelfView;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 64
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->onRecycle()V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->clearImage()V

    .line 71
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 75
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 76
    .local v0, "videoMessage":Lcom/liquable/nemo/message/model/VideoMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->update(Lcom/liquable/nemo/message/model/VideoMessage;)V

    .line 78
    return-void
.end method
