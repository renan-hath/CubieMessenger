.class public Lcom/liquable/nemo/message/view/CallLogMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "CallLogMessageOtherView.java"


# instance fields
.field private contentTextView:Landroid/widget/TextView;

.field private iconSpan:Landroid/text/style/ImageSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 28
    const v0, 0x7f0300e6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->contentTextView:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020228

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->iconSpan:Landroid/text/style/ImageSpan;

    .line 37
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 41
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/CallLogMessage;

    .line 43
    .local v0, "callLog":Lcom/liquable/nemo/message/model/CallLogMessage;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2706 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/CallLogMessage;->getContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->iconSpan:Landroid/text/style/ImageSpan;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x21

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 48
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
