.class public Lcom/liquable/nemo/forum/view/TextReplyView;
.super Lcom/liquable/nemo/forum/view/ArticleReplyView;
.source "TextReplyView.java"


# instance fields
.field private final textReplyContentTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const v0, 0x7f0300cf

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/forum/view/ArticleReplyView;-><init>(Landroid/content/Context;I)V

    .line 21
    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/view/TextReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/forum/view/TextReplyView;->textReplyContentTextView:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/TextReplyView;->textReplyContentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 23
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    return-void
.end method


# virtual methods
.method protected doUpdate(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 4
    .param p1, "articleReply"    # Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyBody()Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/forum/model/article/TextReply;

    .line 30
    .local v2, "textReply":Lcom/liquable/nemo/forum/model/article/TextReply;
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/TextReply;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    .local v1, "spannable":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/view/TextReplyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 33
    iget-object v3, p0, Lcom/liquable/nemo/forum/view/TextReplyView;->textReplyContentTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
