.class public Lcom/liquable/nemo/message/view/TextMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "TextMessageOtherView.java"


# instance fields
.field private contentTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 25
    const v0, 0x7f0300e6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 26
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/TextMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/TextMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/TextMessageOtherView;->contentTextView:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/message/view/TextMessageOtherView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 37
    move-object v1, p1

    check-cast v1, Lcom/liquable/nemo/message/model/TextMessage;

    .line 38
    .local v1, "textMessage":Lcom/liquable/nemo/message/model/TextMessage;
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .local v0, "spannable":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/TextMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 41
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/TextMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 40
    invoke-static {v0, v2, v3}, Lcom/liquable/nemo/message/view/MessageViews;->setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Lcom/liquable/nemo/friend/model/FriendManager;)V

    .line 43
    iget-object v2, p0, Lcom/liquable/nemo/message/view/TextMessageOtherView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
