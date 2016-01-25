.class public Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;
.super Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.source "ViewWaitAcceptFriendProfileFragment.java"


# instance fields
.field private friend:Lcom/liquable/nemo/friend/model/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->removeDialog(I)V

    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0300c4

    return v0
.end method

.method protected getProfileUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleText()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0d02c2

    return v0
.end method

.method protected getUserIcon()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileIconFactory;->createIcon(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->hasFriendUid(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->close()V

    .line 141
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getFriendUid(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "friendUid":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v1, v8}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 59
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->close()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "wait_accept"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 69
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 70
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 71
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 66
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 74
    .local v9, "resendBtn":Landroid/widget/Button;
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 75
    .local v7, "deleteBtn":Landroid/widget/Button;
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 77
    .local v10, "waitAcceptMessage":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 78
    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment$2;-><init>(Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;->fragmentView:Landroid/view/View;

    goto/16 :goto_0
.end method
