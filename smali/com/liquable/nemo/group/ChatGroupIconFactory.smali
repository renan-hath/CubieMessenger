.class public Lcom/liquable/nemo/group/ChatGroupIconFactory;
.super Ljava/lang/Object;
.source "ChatGroupIconFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 3
    .param p0, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 14
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v0}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v1

    .line 18
    .end local v0    # "friend":Lcom/liquable/nemo/friend/model/Account;
    :goto_0
    return-object v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    new-instance v1, Lcom/liquable/nemo/message/view/ResourceDrawable;

    const v2, 0x7f0202a7

    invoke-direct {v1, v2}, Lcom/liquable/nemo/message/view/ResourceDrawable;-><init>(I)V

    goto :goto_0

    .line 18
    :cond_1
    new-instance v1, Lcom/liquable/nemo/group/ChatGroupIcon;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/group/ChatGroupIcon;-><init>(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0
.end method
