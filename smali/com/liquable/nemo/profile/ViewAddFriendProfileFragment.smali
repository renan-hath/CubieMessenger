.class public Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;
.super Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.source "ViewAddFriendProfileFragment.java"


# instance fields
.field private friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->close()V

    return-void
.end method

.method private initButtons(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 3
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0801c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    .local v0, "addBtn":Landroid/widget/Button;
    new-instance v1, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0300a8

    return v0
.end method

.method protected getProfileUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleText()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0d02c2

    return v0
.end method

.method protected getUserIcon()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileIconFactory;->createIcon(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->hasFriendUid(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->close()V

    .line 141
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->getFriendUid(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "friendUid":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v1, v7}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 125
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->close()V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "add"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 135
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 136
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 137
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->initButtons(Lcom/liquable/nemo/friend/model/Account;)V

    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewAddFriendProfileFragment;->fragmentView:Landroid/view/View;

    goto :goto_0
.end method
