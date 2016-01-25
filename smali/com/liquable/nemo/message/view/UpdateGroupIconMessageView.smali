.class public Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;
.super Lcom/liquable/nemo/message/view/AbstractMessageView;
.source "UpdateGroupIconMessageView.java"


# instance fields
.field private iconImageView:Landroid/widget/ImageView;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private systemText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public initMessageBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030102

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->systemText:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->systemText:Landroid/widget/TextView;

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 34
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->iconImageView:Landroid/widget/ImageView;

    .line 37
    return-void
.end method

.method public showChatGroupIcon(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V
    .locals 3
    .param p1, "updateGroupIconMessage"    # Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->getIconFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->iconImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/liquable/nemo/group/UpdateGroupIcon;

    invoke-direct {v2, p1}, Lcom/liquable/nemo/group/UpdateGroupIcon;-><init>(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->iconImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0d0376

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 52
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->systemText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    check-cast p1, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;->showChatGroupIcon(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    .line 55
    return-void
.end method
