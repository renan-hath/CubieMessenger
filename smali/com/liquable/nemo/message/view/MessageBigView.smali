.class public abstract Lcom/liquable/nemo/message/view/MessageBigView;
.super Landroid/widget/RelativeLayout;
.source "MessageBigView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/liquable/nemo/message/model/DomainMessage;",
        ">",
        "Landroid/widget/RelativeLayout;"
    }
.end annotation


# instance fields
.field protected final bigMessageImage:Landroid/widget/ImageView;

.field protected final bigMessageText:Landroid/widget/TextView;

.field protected final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final isSentByMe:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isSentByMe"    # Z

    .prologue
    .line 30
    .local p0, "this":Lcom/liquable/nemo/message/view/MessageBigView;, "Lcom/liquable/nemo/message/view/MessageBigView<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/liquable/nemo/message/view/MessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 32
    iput-boolean p4, p0, Lcom/liquable/nemo/message/view/MessageBigView;->isSentByMe:Z

    .line 33
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/MessageBigView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/MessageBigView;->getLayoutResId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 35
    const v1, 0x7f080271

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/MessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    .line 36
    const v1, 0x7f080266

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/MessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageText:Landroid/widget/TextView;

    .line 37
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageText:Landroid/widget/TextView;

    const/4 v2, 0x2

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 39
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lcom/liquable/nemo/message/view/MessageBigView;, "Lcom/liquable/nemo/message/view/MessageBigView<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->cancel(Landroid/widget/ImageView;)V

    .line 45
    return-void
.end method

.method protected abstract getLayoutResId()I
.end method

.method protected getText(Lcom/liquable/nemo/message/model/DomainMessage;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/liquable/nemo/message/view/MessageBigView;, "Lcom/liquable/nemo/message/view/MessageBigView<TT;>;"
    .local p1, "message":Lcom/liquable/nemo/message/model/DomainMessage;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/liquable/nemo/message/view/MessageBigView;, "Lcom/liquable/nemo/message/view/MessageBigView<TT;>;"
    .local p1, "message":Lcom/liquable/nemo/message/model/DomainMessage;, "TT;"
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/MessageBigView;->getText(Lcom/liquable/nemo/message/model/DomainMessage;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MessageBigView;->bigMessageText:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
