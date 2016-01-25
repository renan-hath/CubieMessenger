.class public Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "MissedCallMessageOtherView.java"


# instance fields
.field private contentTextView:Landroid/widget/TextView;

.field private dialBtn:Landroid/view/View;

.field private iconSpan:Landroid/text/style/ImageSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 31
    const v0, 0x7f0300e6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->dialBtn:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ee

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->contentTextView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->contentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    const v0, 0x7f08027b

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->dialBtn:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->dialBtn:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView$1;-><init>(Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0204a2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->iconSpan:Landroid/text/style/ImageSpan;

    .line 50
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/MissedCallMessage;

    .line 56
    .local v0, "missedCall":Lcom/liquable/nemo/message/model/MissedCallMessage;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2706 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/MissedCallMessage;->getContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->iconSpan:Landroid/text/style/ImageSpan;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x21

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 61
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->dialBtn:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
