.class public Lcom/liquable/nemo/message/view/PubChannelMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "PubChannelMessageSelfView.java"


# instance fields
.field private final pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const v0, 0x7f0300f1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 16
    new-instance v0, Lcom/liquable/nemo/message/view/PubChannelMessageView;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/message/view/PubChannelMessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageSelfView;->pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;

    .line 17
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageSelfView;->pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/message/view/PubChannelMessageView;->init(ILandroid/view/ViewGroup;)V

    .line 22
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSystemAck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 27
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 30
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
    .line 35
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->resendMessage(Ljava/lang/String;)Z

    .line 36
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/PubChannelMessage;

    .line 41
    .local v0, "message":Lcom/liquable/nemo/message/model/PubChannelMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PubChannelMessageSelfView;->pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/PubChannelMessageView;->update(Lcom/liquable/nemo/message/model/PubChannelMessage;)V

    .line 42
    return-void
.end method
