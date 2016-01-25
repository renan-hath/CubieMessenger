.class public Lcom/liquable/nemo/message/view/AudioMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;
.source "AudioMessageSelfView.java"


# instance fields
.field private audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/liquable/nemo/message/view/AudioMessageSelfView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 17
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/message/view/AudioMessageView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AudioMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/message/view/AudioMessageSelfView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/AudioMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageSelfView;->audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageSelfView;->audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 28
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AudioMessageSelfView;->audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/AudioMessageView;->update(Lcom/liquable/nemo/message/model/AudioMessage;)V

    .line 29
    return-void
.end method
