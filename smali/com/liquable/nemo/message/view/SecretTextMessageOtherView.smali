.class public Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "SecretTextMessageOtherView.java"


# instance fields
.field private readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

.field private final secretTextMessageView:Lcom/liquable/nemo/message/view/SecretTextMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 23
    const v0, 0x7f03010b

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 24
    new-instance v0, Lcom/liquable/nemo/message/view/SecretTextMessageView;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/message/view/SecretTextMessageView;-><init>(Lcom/liquable/nemo/message/view/AbstractMessageView;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->secretTextMessageView:Lcom/liquable/nemo/message/view/SecretTextMessageView;

    .line 25
    return-void
.end method

.method private initUnlock(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    const v0, 0x7f0802a6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/view/ReadSecretButton;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

    new-instance v1, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView$1;-><init>(Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/ReadSecretButton;->setOnReadSecretListener(Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method final initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->initUnlock(Landroid/view/ViewGroup;)V

    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->secretTextMessageView:Lcom/liquable/nemo/message/view/SecretTextMessageView;

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/message/view/SecretTextMessageView;->init(ILandroid/view/ViewGroup;)V

    .line 33
    return-void
.end method

.method protected final updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 47
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/SecretTextMessage;

    .line 48
    .local v0, "secretTextMessage":Lcom/liquable/nemo/message/model/SecretTextMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->readSecretBtn:Lcom/liquable/nemo/message/view/ReadSecretButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/message/view/ReadSecretButton;->updateSecret(Lcom/liquable/nemo/message/model/ISecret;Z)V

    .line 50
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->secretTextMessageView:Lcom/liquable/nemo/message/view/SecretTextMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/SecretTextMessageView;->update(Lcom/liquable/nemo/message/model/SecretTextMessage;)V

    .line 51
    sget-object v1, Lcom/liquable/nemo/message/model/ISecret$State;->OPENED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->secretTextMessageView:Lcom/liquable/nemo/message/view/SecretTextMessageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/SecretTextMessageView;->setContentVisibility(I)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->secretTextMessageView:Lcom/liquable/nemo/message/view/SecretTextMessageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/SecretTextMessageView;->setContentVisibility(I)V

    goto :goto_0
.end method
