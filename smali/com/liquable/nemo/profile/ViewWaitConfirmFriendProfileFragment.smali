.class public Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;
.super Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.source "ViewWaitConfirmFriendProfileFragment.java"


# instance fields
.field private friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;-><init>()V

    return-void
.end method

.method private acceptInvite(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 2
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 24
    new-instance v0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 51
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$1;->execute([Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->acceptInvite(Lcom/liquable/nemo/friend/model/Account;)V

    return-void
.end method

.method private initButtons(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 4
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f08021a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, "acceptBtn":Landroid/widget/Button;
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080219

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 88
    .local v1, "removeBtn":Landroid/widget/Button;
    new-instance v2, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$2;-><init>(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v2, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment$3;-><init>(Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public backPressed()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->isFromNotification(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->profileCallback:Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;->goToMain()V

    .line 58
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->backPressed()Z

    move-result v0

    goto :goto_0
.end method

.method protected getContentLayout()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0300c5

    return v0
.end method

.method protected getProfileUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleText()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0d02c2

    return v0
.end method

.method protected getUserIcon()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

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

    .line 111
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->isFromNotification(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager;->cancelConfirmFriendNotification()V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->hasFriendUid(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->close()V

    .line 139
    :goto_0
    return-object v0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->getFriendUid(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "friendUid":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v1, v7}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 123
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    if-nez v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->close()V

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "wait_confirm"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 133
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 134
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 135
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->initButtons(Lcom/liquable/nemo/friend/model/Account;)V

    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileFragment;->fragmentView:Landroid/view/View;

    goto :goto_0
.end method
