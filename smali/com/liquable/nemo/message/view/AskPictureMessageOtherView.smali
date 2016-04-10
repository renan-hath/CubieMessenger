.class public Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "AskPictureMessageOtherView.java"


# instance fields
.field private cameraBtn:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 21
    const v0, 0x7f030179

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e2

    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "inflate":Landroid/view/View;
    const v1, 0x7f080262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 29
    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;->cameraBtn:Landroid/view/View;

    .line 30
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;->cameraBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView$1;-><init>(Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;->cameraBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
