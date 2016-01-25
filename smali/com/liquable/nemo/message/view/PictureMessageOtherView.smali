.class public Lcom/liquable/nemo/message/view/PictureMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;
.source "PictureMessageOtherView.java"


# instance fields
.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private pictureMessageView:Lcom/liquable/nemo/message/view/PictureMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 20
    iput-object p2, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 22
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    const v1, 0x7f080274

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/PictureMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, "pictureMsgTextView":Landroid/widget/TextView;
    new-instance v1, Lcom/liquable/nemo/message/view/PictureMessageView;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v1, v2, v3, v0}, Lcom/liquable/nemo/message/view/PictureMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherView;->pictureMessageView:Lcom/liquable/nemo/message/view/PictureMessageView;

    .line 28
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherView;->pictureMessageView:Lcom/liquable/nemo/message/view/PictureMessageView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 33
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 34
    .local v0, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageOtherView;->pictureMessageView:Lcom/liquable/nemo/message/view/PictureMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/PictureMessageView;->update(Lcom/liquable/nemo/message/model/PictureMessage;)V

    .line 35
    return-void
.end method
