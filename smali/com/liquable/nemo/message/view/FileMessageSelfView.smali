.class public Lcom/liquable/nemo/message/view/FileMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.source "FileMessageSelfView.java"


# instance fields
.field private contentTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const v0, 0x7f0300e7

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;-><init>(Landroid/content/Context;I)V

    .line 20
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/FileMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/FileMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/FileMessageSelfView;->contentTextView:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/message/view/FileMessageSelfView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    return-void
.end method

.method isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method onClickResend(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 39
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/FileMessage;

    .line 40
    .local v0, "fileMessage":Lcom/liquable/nemo/message/model/FileMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/FileMessageSelfView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/FileMessage;->getOriginalFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
