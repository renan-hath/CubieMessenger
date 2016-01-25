.class public abstract Lcom/liquable/nemo/notice/BaseFriendNotice;
.super Lcom/liquable/nemo/notice/BaseNotice;
.source "BaseFriendNotice.java"


# instance fields
.field private final friendId:Ljava/lang/String;

.field private final noticeTime:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "friendId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/notice/BaseNotice;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/notice/BaseFriendNotice;->friendId:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/notice/BaseFriendNotice;->noticeTime:Ljava/util/Date;

    .line 26
    return-void
.end method


# virtual methods
.method public getFriendId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/notice/BaseFriendNotice;->friendId:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeTime()Ljava/util/Date;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/notice/BaseFriendNotice;->noticeTime:Ljava/util/Date;

    return-object v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 41
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v3, p0, Lcom/liquable/nemo/notice/BaseFriendNotice;->friendId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 42
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 43
    iget-object v2, p0, Lcom/liquable/nemo/notice/BaseFriendNotice;->friendId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/liquable/nemo/notice/BaseFriendNotice;->friendId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 47
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    const v2, 0x7f0d0036

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 51
    :cond_2
    const v2, 0x7f0d0038

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
