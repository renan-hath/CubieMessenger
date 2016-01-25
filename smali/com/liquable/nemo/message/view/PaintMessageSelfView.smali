.class public Lcom/liquable/nemo/message/view/PaintMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "PaintMessageSelfView.java"


# instance fields
.field private final onSettingBtnClick:Landroid/view/View$OnClickListener;

.field private final paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

.field private settingBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onSettingBtnClick"    # Landroid/view/View$OnClickListener;
    .param p4, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 25
    const v0, 0x7f0300f4

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p3, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->onSettingBtnClick:Landroid/view/View$OnClickListener;

    .line 27
    new-instance v0, Lcom/liquable/nemo/message/view/PaintMessageView;

    invoke-direct {v0, p1, p2, p4}, Lcom/liquable/nemo/message/view/PaintMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    .line 28
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 33
    const v0, 0x7f08026e

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->settingBtn:Landroid/widget/ImageButton;

    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->settingBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->onSettingBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    move-object v1, p1

    .line 40
    check-cast v1, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 41
    .local v1, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    sget-object v4, Lcom/liquable/nemo/message/view/PaintMessageSelfView$2;->$SwitchMap$com$liquable$nemo$message$model$AbstractMediaMessage$TransferState:[I

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/PaintMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 49
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    move v2, v3

    .line 45
    goto :goto_0

    .line 47
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 41
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
    .line 54
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 55
    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    new-instance v1, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;-><init>(Lcom/liquable/nemo/message/view/PaintMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 70
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->onRecycle()V

    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/PaintMessageView;->clearImage()V

    .line 77
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 81
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 83
    .local v0, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->settingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->paintMessageView:Lcom/liquable/nemo/message/view/PaintMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/PaintMessageView;->update(Lcom/liquable/nemo/message/model/PaintMessage;)V

    .line 85
    return-void
.end method
