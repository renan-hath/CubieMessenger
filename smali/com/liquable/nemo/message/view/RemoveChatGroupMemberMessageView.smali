.class public Lcom/liquable/nemo/message/view/RemoveChatGroupMemberMessageView;
.super Lcom/liquable/nemo/message/view/AbstractSystemMessageView;
.source "RemoveChatGroupMemberMessageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 9
    .param p1, "systemMessageTextView"    # Landroid/widget/TextView;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/RemoveChatGroupMemberMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p2

    .line 20
    check-cast v1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    .line 21
    .local v1, "removeMessage":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->getRemoverUid()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "removeUid":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->getToBeRemovedUid()Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, "toBeRemovedUid":Ljava/lang/String;
    const v7, 0x7f0d0373

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "text":Ljava/lang/String;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v7, v0, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "removerName":Ljava/lang/String;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v7, v0, v6}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "toBeRemovedName":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
