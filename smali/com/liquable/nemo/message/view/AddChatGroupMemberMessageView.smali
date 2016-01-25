.class public Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;
.super Lcom/liquable/nemo/message/view/AbstractSystemMessageView;
.source "AddChatGroupMemberMessageView.java"


# instance fields
.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private membersView:Lcom/liquable/nemo/message/view/MembersToAddView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 23
    const v0, 0x7f0300ff

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p2, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 25
    return-void
.end method


# virtual methods
.method public initMessageBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;->initMessageBody(Landroid/view/ViewGroup;)V

    .line 30
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/view/MembersToAddView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/MembersToAddView;->setImageLoader(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 32
    return-void
.end method

.method updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 36
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->systemText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, p1}, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    .line 38
    .local v0, "addChatGroupMemberMessage":Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getFriendUid()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "memberUid":Ljava/lang/String;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/message/view/MembersToAddView;->update(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/view/MembersToAddView;->hide()V

    goto :goto_0

    .line 46
    :cond_1
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    .line 47
    .local v1, "member":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/view/MembersToAddView;->hide()V

    goto :goto_0

    .line 52
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->membersView:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/message/view/MembersToAddView;->updateWithInvitedUser(Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_0
.end method

.method public updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 10
    .param p1, "systemMessageTextView"    # Landroid/widget/TextView;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 59
    move-object v0, p2

    check-cast v0, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    .line 60
    .local v0, "addChatGroupMemberMessage":Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 61
    .local v2, "friendManager":Lcom/liquable/nemo/friend/model/FriendManager;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    .local v1, "context":Landroid/content/Context;
    const v4, 0x7f0d0369

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 63
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    .line 65
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getFriendUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 62
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v4, 0x7f020425

    invoke-virtual {p1, v4, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 71
    invoke-static {v1, v9}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 72
    return-void
.end method
