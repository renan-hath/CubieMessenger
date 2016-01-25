.class public Lcom/liquable/nemo/message/view/LeaveChatGroupMessageView;
.super Lcom/liquable/nemo/message/view/AbstractSystemMessageView;
.source "LeaveChatGroupMessageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractSystemMessageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public updateSystemText(Landroid/widget/TextView;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "systemMessageTextView"    # Landroid/widget/TextView;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/LeaveChatGroupMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0d036f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 21
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 20
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
