.class Lcom/liquable/nemo/friend/model/AccountIcon;
.super Lcom/liquable/nemo/friend/model/AbstractAccountIcon;
.source "AccountIcon.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public isIconExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/AccountIcon;->uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    :cond_0
    :goto_0
    return v1

    .line 17
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/AccountIcon;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 18
    .local v0, "found":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isIconExists()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIconExpired(J)Z
    .locals 7
    .param p1, "iconCreateTime"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/AccountIcon;->uid:Ljava/lang/String;

    invoke-static {v3}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    const-wide/32 v5, 0x240c8400

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v4, p0, Lcom/liquable/nemo/friend/model/AccountIcon;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 27
    .local v0, "found":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getLastUpdateTime()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gtz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method
