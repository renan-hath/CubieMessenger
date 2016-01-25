.class public Lcom/liquable/nemo/message/view/TextMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "TextMessageSelfView.java"


# instance fields
.field private contentTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const v0, 0x7f0300e7

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 23
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/TextMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/TextMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/TextMessageSelfView;->contentTextView:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/message/view/TextMessageSelfView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 30
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSystemAck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 35
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 38
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
    .line 43
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->resendMessage(Ljava/lang/String;)Z

    .line 44
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 48
    move-object v1, p1

    check-cast v1, Lcom/liquable/nemo/message/model/TextMessage;

    .line 49
    .local v1, "textMessage":Lcom/liquable/nemo/message/model/TextMessage;
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    .local v0, "spannable":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/TextMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 52
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/TextMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 51
    invoke-static {v0, v2, v3}, Lcom/liquable/nemo/message/view/MessageViews;->setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Lcom/liquable/nemo/friend/model/FriendManager;)V

    .line 54
    iget-object v2, p0, Lcom/liquable/nemo/message/view/TextMessageSelfView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
