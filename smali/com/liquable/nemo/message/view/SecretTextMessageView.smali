.class public Lcom/liquable/nemo/message/view/SecretTextMessageView;
.super Ljava/lang/Object;
.source "SecretTextMessageView.java"


# instance fields
.field private final abstractMessageView:Lcom/liquable/nemo/message/view/AbstractMessageView;

.field private contentTextView:Landroid/widget/TextView;

.field private secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/message/view/AbstractMessageView;)V
    .locals 0
    .param p1, "abstractMessageView"    # Lcom/liquable/nemo/message/view/AbstractMessageView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->abstractMessageView:Lcom/liquable/nemo/message/view/AbstractMessageView;

    .line 27
    return-void
.end method


# virtual methods
.method public init(ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->abstractMessageView:Lcom/liquable/nemo/message/view/AbstractMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/AbstractMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->abstractMessageView:Lcom/liquable/nemo/message/view/AbstractMessageView;

    const v1, 0x7f080296

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->contentTextView:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->abstractMessageView:Lcom/liquable/nemo/message/view/AbstractMessageView;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/view/SecretCountDownView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    return-void
.end method

.method public setContentVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/SecretTextMessage;)V
    .locals 5
    .param p1, "secretMessage"    # Lcom/liquable/nemo/message/model/SecretTextMessage;

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->getDecryptedContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->abstractMessageView:Lcom/liquable/nemo/message/view/AbstractMessageView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/AbstractMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 53
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 52
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/message/view/MessageViews;->setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Lcom/liquable/nemo/friend/model/FriendManager;)V

    .line 55
    iget-object v2, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget-object v2, Lcom/liquable/nemo/message/model/ISecret$State;->OPENED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/SecretTextMessage;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->timeToExpireInMilli()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/message/view/SecretCountDownView;->update(J)V

    .line 62
    :goto_1
    return-void

    .line 46
    .end local v1    # "spannable":Landroid/text/Spannable;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 48
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->abstractMessageView:Lcom/liquable/nemo/message/view/AbstractMessageView;

    iget-object v2, v2, Lcom/liquable/nemo/message/view/AbstractMessageView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b9

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "spannable":Landroid/text/Spannable;
    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/SecretTextMessageView;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/SecretCountDownView;->hide()V

    goto :goto_1
.end method
