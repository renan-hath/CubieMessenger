.class public Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;
.super Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.source "ViewRecommendFriendProfileFragment.java"


# instance fields
.field private friend:Lcom/liquable/nemo/model/account/AccountDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->close()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->close()V

    return-void
.end method

.method private initButtons(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 4
    .param p1, "friend"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 44
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f0801f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, "inviteBtn":Landroid/widget/Button;
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f0801f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "deleteBtn":Landroid/widget/Button;
    new-instance v2, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;Lcom/liquable/nemo/model/account/AccountDto;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v2, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment$2;-><init>(Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;Lcom/liquable/nemo/model/account/AccountDto;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0300bd

    return v0
.end method

.method protected getProfileUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->friend:Lcom/liquable/nemo/model/account/AccountDto;

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
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->friend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileIconFactory;->createIcon(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 125
    .local v7, "arguments":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->hasFriendUid(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->close()V

    .line 148
    :goto_0
    return-object v6

    .line 130
    :cond_0
    invoke-static {v7}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getFriendUid(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "friendUid":Ljava/lang/String;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    invoke-virtual {v0, v8}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;->findRecommendFriendById(Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->friend:Lcom/liquable/nemo/model/account/AccountDto;

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->friend:Lcom/liquable/nemo/model/account/AccountDto;

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->close()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->friend:Lcom/liquable/nemo/model/account/AccountDto;

    .line 142
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->friend:Lcom/liquable/nemo/model/account/AccountDto;

    .line 143
    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->friend:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->initButtons(Lcom/liquable/nemo/model/account/AccountDto;)V

    .line 148
    iget-object v6, p0, Lcom/liquable/nemo/profile/ViewRecommendFriendProfileFragment;->fragmentView:Landroid/view/View;

    goto :goto_0
.end method
