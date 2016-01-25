.class public Lcom/liquable/nemo/message/view/LocationMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "LocationMessageSelfView.java"


# instance fields
.field private final messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

.field private transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 23
    const v0, 0x7f0300f8

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 24
    new-instance v0, Lcom/liquable/nemo/message/view/LocationMessageBigView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/liquable/nemo/message/view/LocationMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    .line 25
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 30
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/LocationMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageSelfView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 31
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    move-object v1, p1

    .line 36
    check-cast v1, Lcom/liquable/nemo/message/model/LocationMessage;

    .line 37
    .local v1, "locationMsg":Lcom/liquable/nemo/message/model/LocationMessage;
    sget-object v4, Lcom/liquable/nemo/message/view/LocationMessageSelfView$2;->$SwitchMap$com$liquable$nemo$message$model$AbstractMediaMessage$TransferState:[I

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/LocationMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 45
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    move v2, v3

    .line 41
    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onClickResend(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 51
    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    new-instance v1, Lcom/liquable/nemo/message/view/LocationMessageSelfView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/liquable/nemo/message/view/LocationMessageSelfView$1;-><init>(Lcom/liquable/nemo/message/view/LocationMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 66
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/LocationMessageSelfView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->onRecycle()V

    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LocationMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->clearImage()V

    .line 73
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 77
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/LocationMessage;

    .line 78
    .local v0, "locationMessage":Lcom/liquable/nemo/message/model/LocationMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LocationMessageSelfView;->messageBigView:Lcom/liquable/nemo/message/view/LocationMessageBigView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/LocationMessageBigView;->update(Lcom/liquable/nemo/message/model/LocationMessage;)V

    .line 79
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LocationMessageSelfView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 80
    return-void
.end method
