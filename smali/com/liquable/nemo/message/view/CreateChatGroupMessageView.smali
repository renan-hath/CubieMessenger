.class public Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;
.super Lcom/liquable/nemo/message/view/AbstractSystemMessageView;
.source "CreateChatGroupMessageView.java"


# instance fields
.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private membersView:Lcom/liquable/nemo/message/view/MembersToAddView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 20
    const v0, 0x7f0300ff

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object p2, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 22
    return-void
.end method


# virtual methods
.method public initMessageBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->initMessageBody(Landroid/view/ViewGroup;)V

    .line 27
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/view/MembersToAddView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/MembersToAddView;->setImageLoader(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 29
    return-void
.end method

.method updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->systemText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 34
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->setVisibility(I)V

    .line 41
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    .line 38
    .local v0, "createChatGroupMessage":Lcom/liquable/nemo/message/model/CreateChatGroupMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->update(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0
.end method

.method public updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "systemMessageTextView"    # Landroid/widget/TextView;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0d036c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 48
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 47
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v2, 0x7f02042f

    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 53
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 54
    return-void
.end method
