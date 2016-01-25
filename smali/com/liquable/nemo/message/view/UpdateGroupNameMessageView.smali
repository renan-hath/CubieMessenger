.class public Lcom/liquable/nemo/message/view/UpdateGroupNameMessageView;
.super Lcom/liquable/nemo/message/view/AbstractSystemMessageView;
.source "UpdateGroupNameMessageView.java"


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
    .locals 7
    .param p1, "systemMessageTextView"    # Landroid/widget/TextView;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 19
    move-object v2, p2

    check-cast v2, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    .line 20
    .local v2, "updateGroupNameMessage":Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/UpdateGroupNameMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f0d0377

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "text":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 23
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 24
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 22
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
