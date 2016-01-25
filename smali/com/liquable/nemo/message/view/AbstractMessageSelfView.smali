.class public abstract Lcom/liquable/nemo/message/view/AbstractMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageView;
.source "AbstractMessageSelfView.java"


# instance fields
.field bodyLayout:Landroid/widget/RelativeLayout;

.field createTime:Landroid/widget/TextView;

.field final createTimeFormat:Ljava/text/SimpleDateFormat;

.field private final layoutResourceId:I

.field resendButton:Landroid/widget/ImageButton;

.field ticker:Landroid/widget/TextView;

.field tickerContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    .line 51
    iput p2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->layoutResourceId:I

    .line 52
    return-void
.end method

.method private static getTickerWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x42280000    # 42.0f

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 23
    .local v0, "scale":F
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 35
    :pswitch_0
    mul-float v1, v2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    return v1

    .line 25
    :pswitch_1
    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 27
    :pswitch_2
    mul-float v1, v2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 29
    :pswitch_3
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 31
    :pswitch_4
    const/high16 v1, 0x42500000    # 52.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 33
    :pswitch_5
    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method abstract initBubbleBody(Landroid/view/ViewGroup;)V
.end method

.method public initMessageBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x2

    .line 58
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->layoutResourceId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->bodyLayout:Landroid/widget/RelativeLayout;

    .line 62
    const v0, 0x7f080284

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->tickerContainer:Landroid/view/View;

    .line 63
    const v0, 0x7f080321

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->ticker:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->ticker:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 65
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    const v0, 0x7f080322

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->createTime:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->createTime:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 69
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->resendButton:Landroid/widget/ImageButton;

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->bodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->initBubbleBody(Landroid/view/ViewGroup;)V

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->resendButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/liquable/nemo/message/view/AbstractMessageSelfView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView$1;-><init>(Lcom/liquable/nemo/message/view/AbstractMessageSelfView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->requestLayout()V

    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->tickerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 85
    return-void
.end method

.method abstract isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z
.end method

.method abstract onClickResend(Ljava/lang/String;)V
.end method

.method abstract updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
.end method

.method public final updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 96
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->tickerContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->ticker:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->resendButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSystemAck()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 101
    .local v0, "isSendMessageSucceed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->tickerContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->ticker:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->ticker:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->isResendButtonVisible(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->resendButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->resendButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->createTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void

    .end local v0    # "isSendMessageSucceed":Z
    :cond_3
    move v0, v1

    .line 100
    goto :goto_0
.end method
