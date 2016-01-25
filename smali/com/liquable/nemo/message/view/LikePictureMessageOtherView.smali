.class public Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "LikePictureMessageOtherView.java"


# instance fields
.field private final likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;ZLandroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z
    .param p4, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 20
    const v0, 0x7f0300e6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 21
    new-instance v0, Lcom/liquable/nemo/message/view/LikePictureMessageView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/liquable/nemo/message/view/LikePictureMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    .line 25
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;->sender:Landroid/widget/TextView;

    const v2, 0x7f020441

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 34
    return-void
.end method

.method public onRecycle()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->onRecycle()V

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->clearImage()V

    .line 40
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;->likePictureMessageView:Lcom/liquable/nemo/message/view/LikePictureMessageView;

    check-cast p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->update(Lcom/liquable/nemo/message/model/LikePictureMessage;)V

    .line 45
    return-void
.end method
