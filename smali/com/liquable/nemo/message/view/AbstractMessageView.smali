.class public abstract Lcom/liquable/nemo/message/view/AbstractMessageView;
.super Landroid/widget/RelativeLayout;
.source "AbstractMessageView.java"


# static fields
.field protected static final FONT_DIZE_DIFF_BETWEEN_BIG_MEDIA_TEXT_AND_TEXT:I = 0x4

.field protected static final FONT_DIZE_DIFF_BETWEEN_DATE_DIVIDER_AND_TEXT:I = 0x6

.field protected static final FONT_DIZE_DIFF_BETWEEN_SENDER_NAME_AND_TEXT:I = 0x4

.field protected static final FONT_DIZE_DIFF_BETWEEN_SYSTEM_TEXT_AND_TEXT:I = 0x2

.field protected static final FONT_DIZE_DIFF_BETWEEN_TICKER_TEXT_AND_TEXT:I = 0xa

.field protected static final FONT_SIZE_DIFF_BETWEEN_CREATE_TIME_AND_TEXT:I = 0x8


# instance fields
.field protected context:Landroid/content/Context;

.field private dateDividerTextView:Landroid/widget/TextView;

.field final receiveTimeFormat:Ljava/text/SimpleDateFormat;

.field private unreadMessageTag:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->receiveTimeFormat:Ljava/text/SimpleDateFormat;

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->context:Landroid/content/Context;

    .line 41
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageView;->setDescendantFocusability(I)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030104

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 46
    const v1, 0x7f08029a

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->unreadMessageTag:Landroid/view/View;

    .line 47
    const v1, 0x7f080299

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->dateDividerTextView:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->dateDividerTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 49
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    int-to-float v3, v3

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    const v1, 0x7f08029b

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageView;->initMessageBody(Landroid/view/ViewGroup;)V

    .line 53
    return-void
.end method

.method public abstract initMessageBody(Landroid/view/ViewGroup;)V
.end method

.method public onRecycle()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public setDateDividerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->dateDividerTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public setUnreadMessageTagVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->unreadMessageTag:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->dateDividerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageView;->receiveTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method abstract updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
.end method
