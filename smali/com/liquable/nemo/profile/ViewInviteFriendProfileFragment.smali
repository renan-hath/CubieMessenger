.class public Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;
.super Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.source "ViewInviteFriendProfileFragment.java"


# instance fields
.field private accountDto:Lcom/liquable/nemo/model/account/AccountDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->close()V

    return-void
.end method

.method private initButtons(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 3
    .param p1, "friend"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0801f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, "inviteBtn":Landroid/widget/Button;
    new-instance v1, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;Lcom/liquable/nemo/model/account/AccountDto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0300b8

    return v0
.end method

.method protected getProfileUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleText()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0d0429

    return v0
.end method

.method protected getUserIcon()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileIconFactory;->createIcon(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 87
    .local v7, "arguments":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileActivity;->getAccount(Landroid/os/Bundle;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->close()V

    .line 104
    :goto_0
    return-object v6

    .line 93
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    .line 98
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    .line 99
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->initButtons(Lcom/liquable/nemo/model/account/AccountDto;)V

    .line 104
    iget-object v6, p0, Lcom/liquable/nemo/profile/ViewInviteFriendProfileFragment;->fragmentView:Landroid/view/View;

    goto :goto_0
.end method
