.class public Lcom/liquable/nemo/message/view/AudioMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;
.source "AudioMessageOtherView.java"


# instance fields
.field private audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 18
    iput-object p2, p0, Lcom/liquable/nemo/message/view/AudioMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 19
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 23
    new-instance v0, Lcom/liquable/nemo/message/view/AudioMessageView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AudioMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/message/view/AudioMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/AudioMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageOtherView;->audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AudioMessageOtherView;->audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 29
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 30
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AudioMessageOtherView;->audioMessageView:Lcom/liquable/nemo/message/view/AudioMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/AudioMessageView;->update(Lcom/liquable/nemo/message/model/AudioMessage;)V

    .line 31
    return-void
.end method
