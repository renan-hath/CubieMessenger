.class public Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "SecretPictureMessageOtherView.java"


# instance fields
.field private readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

.field private transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 23
    const v0, 0x7f03010d

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 24
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 30
    const v0, 0x7f0802a6

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/view/ReadSecretButton;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

    new-instance v1, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView$1;-><init>(Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/ReadSecretButton;->setOnReadSecretListener(Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;)V

    .line 38
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

    check-cast p1, Lcom/liquable/nemo/message/model/ISecret;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/message/view/ReadSecretButton;->updateSecret(Lcom/liquable/nemo/message/model/ISecret;Z)V

    .line 44
    return-void
.end method
