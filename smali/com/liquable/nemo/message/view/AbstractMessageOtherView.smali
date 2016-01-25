.class public abstract Lcom/liquable/nemo/message/view/AbstractMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageView;
.source "AbstractMessageOtherView.java"


# instance fields
.field bodyLayout:Landroid/widget/RelativeLayout;

.field protected final context:Landroid/content/Context;

.field createTime:Landroid/widget/TextView;

.field final createTimeFormat:Ljava/text/SimpleDateFormat;

.field protected final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final isOneToOne:Z

.field private final layoutResourceId:I

.field protected sender:Landroid/widget/TextView;

.field senderIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "isOneToOne"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->context:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->layoutResourceId:I

    .line 46
    iput-object p3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 47
    iput-boolean p4, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->isOneToOne:Z

    .line 48
    return-void
.end method


# virtual methods
.method abstract initBubbleBody(Landroid/view/ViewGroup;)V
.end method

.method public initMessageBody(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x2

    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->layoutResourceId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    const v0, 0x7f080264

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f080265

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->sender:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->sender:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 59
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->bodyLayout:Landroid/widget/RelativeLayout;

    .line 62
    const v0, 0x7f080322

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->createTime:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->createTime:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 64
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->bodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->initBubbleBody(Landroid/view/ViewGroup;)V

    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView$1;-><init>(Lcom/liquable/nemo/message/view/AbstractMessageOtherView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public onRecycle()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/liquable/nemo/message/view/AbstractMessageView;->onRecycle()V

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method abstract updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
.end method

.method public final updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 100
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 102
    .local v1, "friendManager":Lcom/liquable/nemo/friend/model/FriendManager;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 104
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->createTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->sender:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/message/view/AvatarIcon;

    invoke-static {}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->createRobot()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liquable/nemo/message/view/AvatarIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 112
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/message/view/AvatarIcon;

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liquable/nemo/message/view/AvatarIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 113
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
