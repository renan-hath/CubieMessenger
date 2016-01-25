.class public Lcom/liquable/nemo/message/view/YoutubeMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "YoutubeMessageOtherView.java"


# instance fields
.field private final messageBigView:Lcom/liquable/nemo/message/view/YoutubeMessageBigView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;ZLandroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z
    .param p4, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 18
    const v0, 0x7f0300f7

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 19
    new-instance v0, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/YoutubeMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/YoutubeMessageBigView;

    .line 20
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/message/view/YoutubeMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/YoutubeMessageBigView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 25
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->onRecycle()V

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/message/view/YoutubeMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/YoutubeMessageBigView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->clearImage()V

    .line 31
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/message/view/YoutubeMessageOtherView;->messageBigView:Lcom/liquable/nemo/message/view/YoutubeMessageBigView;

    check-cast p1, Lcom/liquable/nemo/message/model/YoutubeMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/view/YoutubeMessageBigView;->update(Lcom/liquable/nemo/message/model/YoutubeMessage;)V

    .line 36
    return-void
.end method
