.class public Lcom/liquable/nemo/message/view/CallLogMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "CallLogMessageSelfView.java"


# instance fields
.field private contentTextView:Landroid/widget/TextView;

.field private iconSpan:Landroid/text/style/ImageSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const v0, 0x7f0300e7

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->contentTextView:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020228

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->iconSpan:Landroid/text/style/ImageSpan;

    .line 34
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method onClickResend(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/CallLogMessage;

    .line 50
    .local v0, "callLog":Lcom/liquable/nemo/message/model/CallLogMessage;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2706 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/CallLogMessage;->getContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->iconSpan:Landroid/text/style/ImageSpan;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x21

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 55
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
