.class public Lcom/liquable/nemo/forum/view/UnknownReplyView;
.super Lcom/liquable/nemo/forum/view/ArticleReplyView;
.source "UnknownReplyView.java"


# instance fields
.field private final textReplyContentTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const v0, 0x7f0300cf

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/forum/view/ArticleReplyView;-><init>(Landroid/content/Context;I)V

    .line 17
    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/view/UnknownReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/forum/view/UnknownReplyView;->textReplyContentTextView:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/UnknownReplyView;->textReplyContentTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 19
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/UnknownReplyView;->textReplyContentTextView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected doUpdate(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 2
    .param p1, "articleReply"    # Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/UnknownReplyView;->textReplyContentTextView:Landroid/widget/TextView;

    const v1, 0x7f0d04ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    return-void
.end method
