.class public Lcom/liquable/nemo/message/view/PubChannelMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.source "PubChannelMessageOtherView.java"


# instance fields
.field private final pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 17
    const v0, 0x7f0300f0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;-><init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V

    .line 18
    new-instance v0, Lcom/liquable/nemo/message/view/PubChannelMessageView;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/message/view/PubChannelMessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageOtherView;->pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;

    .line 19
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PubChannelMessageOtherView;->pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/message/view/PubChannelMessageView;->init(ILandroid/view/ViewGroup;)V

    .line 24
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 28
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/PubChannelMessage;

    .line 29
    .local v0, "message":Lcom/liquable/nemo/message/model/PubChannelMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PubChannelMessageOtherView;->pubChannelMessageView:Lcom/liquable/nemo/message/view/PubChannelMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/PubChannelMessageView;->update(Lcom/liquable/nemo/message/model/PubChannelMessage;)V

    .line 30
    return-void
.end method
