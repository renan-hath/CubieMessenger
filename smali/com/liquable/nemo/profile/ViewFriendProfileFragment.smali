.class public Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
.super Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.source "ViewFriendProfileFragment.java"


# instance fields
.field private createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private friend:Lcom/liquable/nemo/friend/model/Account;

.field private unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupIfNecessary(Lcom/liquable/nemo/friend/model/Account;)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->close()V

    return-void
.end method

.method private changeDisplayName()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 52
    .local v7, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009c

    invoke-virtual {v7, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "editNickNameView":Landroid/view/View;
    const v3, 0x7f0801ad

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 56
    .local v6, "editNicknameEditText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0366

    .line 59
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03b3

    new-instance v5, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;

    invoke-direct {v5, p0, v6}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Landroid/widget/EditText;)V

    .line 60
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d00c5

    .line 82
    invoke-virtual {v3, v4, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "alertDialog":Landroid/app/AlertDialog;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 85
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void
.end method

.method private createChatGroupIfNecessary(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 2
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$2;-><init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V

    iput-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private unsubscribeChannel()V
    .locals 5

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04f0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 252
    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04ef

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;-><init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)V

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 308
    return-void
.end method


# virtual methods
.method public backPressed()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->isFromNotification(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->profileCallback:Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;->goToMain()V

    .line 44
    const/4 v0, 0x1

    .line 47
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
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0300ae

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0300b6

    goto :goto_0
.end method

.method protected getProfileUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleText()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d00cf

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d02c2

    goto :goto_0
.end method

.method protected getUserIcon()Lcom/liquable/nemo/util/LoadableImage;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileIconFactory;->createIcon(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->isFromNotification(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager;->cancelConfirmFriendNotification()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->hasFriendUid(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->close()V

    .line 173
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getFriendUid(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "friendUid":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 162
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    if-nez v1, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->close()V

    goto :goto_0

    .line 170
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->setHasOptionsMenu(Z)V

    .line 172
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    const-string/jumbo v2, "friend"

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0001

    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 180
    return-void

    .line 177
    :cond_0
    const v0, 0x7f0f0007

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 189
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 190
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    .line 191
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 186
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$3;-><init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 206
    .local v7, "voiceCallBtn":Landroid/widget/Button;
    if-eqz v7, :cond_0

    .line 207
    new-instance v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$4;-><init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->createChatGroupTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 230
    :cond_1
    invoke-super {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->onDestroy()V

    .line 231
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 235
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    :goto_0
    invoke-super {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 247
    :goto_1
    return v0

    .line 237
    :sswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->changeDisplayName()V

    .line 247
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 240
    :sswitch_1
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->showRemoveFriendDialog(Landroid/app/Activity;Lcom/liquable/nemo/friend/model/Account;)V

    goto :goto_2

    .line 243
    :sswitch_2
    invoke-direct {p0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscribeChannel()V

    goto :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08035b -> :sswitch_2
        0x7f08036b -> :sswitch_0
        0x7f08036c -> :sswitch_1
    .end sparse-switch
.end method
