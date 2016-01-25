.class public Lcom/liquable/nemo/message/view/PubChannelMessageView;
.super Ljava/lang/Object;
.source "PubChannelMessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private linkView:Landroid/widget/TextView;

.field private separator:Landroid/view/View;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->context:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public init(ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x2

    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f9

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    const v0, 0x7f08027c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->textView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->textView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    const v0, 0x7f080280

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->linkView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->linkView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    const v0, 0x7f080128

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->separator:Landroid/view/View;

    .line 59
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/PubChannelMessage;)V
    .locals 9
    .param p1, "message"    # Lcom/liquable/nemo/message/model/PubChannelMessage;

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 62
    const/4 v6, 0x2

    new-array v1, v6, [Z

    fill-array-data v1, :array_0

    .line 64
    .local v1, "parts":[Z
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PubChannelMessage;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PubChannelMessage;->hasAppLink()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    aput-boolean v8, v1, v8

    .line 76
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    new-instance v0, Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PubChannelMessage;->getLinkUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "googlePlayLinkSpan":Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PubChannelMessage;->getLinkText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .local v3, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    .line 79
    invoke-virtual {v3, v0, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 83
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->linkView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    .end local v0    # "googlePlayLinkSpan":Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    :goto_1
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->separator:Landroid/view/View;

    aget-boolean v7, v1, v4

    if-eqz v7, :cond_2

    aget-boolean v7, v1, v8

    if-eqz v7, :cond_2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void

    .line 67
    :cond_0
    aput-boolean v8, v1, v4

    .line 68
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PubChannelMessage;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->context:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 71
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    .end local v2    # "spannable":Landroid/text/Spannable;
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView;->linkView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v4, v5

    .line 89
    goto :goto_2

    .line 62
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
