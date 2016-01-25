.class public Lcom/liquable/nemo/message/view/UnknownMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "UnknownMessageSelfView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const v0, 0x7f0300e7

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/UnknownMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030101

    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    const v1, 0x7f080297

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/UnknownMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 25
    .local v0, "unknowNotifyTextView":Landroid/widget/TextView;
    new-instance v1, Lcom/liquable/nemo/message/view/UnknownMessageSelfView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/UnknownMessageSelfView$1;-><init>(Lcom/liquable/nemo/message/view/UnknownMessageSelfView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method onClickResend(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 46
    return-void
.end method
