.class public Lcom/liquable/nemo/forum/view/PictureReplyView;
.super Lcom/liquable/nemo/forum/view/ArticleReplyView;
.source "PictureReplyView.java"


# instance fields
.field private final pictureReplyImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

.field private final replyContentTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const v0, 0x7f0300cc

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/forum/view/ArticleReplyView;-><init>(Landroid/content/Context;I)V

    .line 28
    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/view/PictureReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->replyContentTextView:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->replyContentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 30
    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/view/PictureReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v0, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->pictureReplyImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->pictureReplyImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const v1, 0x7f020507

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected doUpdate(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 5
    .param p1, "articleReply"    # Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyBody()Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/PictureReply;

    .line 39
    .local v0, "reply":Lcom/liquable/nemo/forum/model/article/PictureReply;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/PictureReply;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->replyContentTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->pictureReplyImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/PictureReply;->getPictureUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v3, v2, v4}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 48
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->pictureReplyImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    new-instance v3, Lcom/liquable/nemo/forum/view/PictureReplyView$1;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/forum/view/PictureReplyView$1;-><init>(Lcom/liquable/nemo/forum/view/PictureReplyView;Lcom/liquable/nemo/forum/model/article/PictureReply;)V

    invoke-virtual {v2, v3}, Lcom/liquable/volley/toolbox/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void

    .line 42
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/PictureReply;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->replyContentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/view/PictureReplyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 45
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/PictureReplyView;->replyContentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
