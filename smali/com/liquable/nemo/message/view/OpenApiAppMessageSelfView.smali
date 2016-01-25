.class public Lcom/liquable/nemo/message/view/OpenApiAppMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "OpenApiAppMessageSelfView.java"


# instance fields
.field private final openApiAppMessageView:Lcom/liquable/nemo/message/view/OpenApiAppMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 16
    const v0, 0x7f0300f1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 17
    new-instance v0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;

    invoke-direct {v0, p1, p2}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageSelfView;->openApiAppMessageView:Lcom/liquable/nemo/message/view/OpenApiAppMessageView;

    .line 18
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageSelfView;->openApiAppMessageView:Lcom/liquable/nemo/message/view/OpenApiAppMessageView;

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->init(ILandroid/view/ViewGroup;)V

    .line 23
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSystemAck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 28
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
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
    .line 36
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->resendMessage(Ljava/lang/String;)Z

    .line 37
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 41
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    .line 42
    .local v0, "message":Lcom/liquable/nemo/message/model/OpenApiAppMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageSelfView;->openApiAppMessageView:Lcom/liquable/nemo/message/view/OpenApiAppMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->update(Lcom/liquable/nemo/message/model/OpenApiAppMessage;)V

    .line 43
    return-void
.end method
