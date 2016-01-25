.class public Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "ViewSpaceFriendProfileFragment.java"


# instance fields
.field coverImageView:Landroid/widget/ImageView;

.field descBtn:Landroid/widget/ImageButton;

.field protected fragmentView:Landroid/view/View;

.field private largeIconLayout:Landroid/view/View;

.field messageTextView:Landroid/widget/TextView;

.field profileViewProgressBar:Landroid/widget/ProgressBar;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private spaceUserUid:Ljava/lang/String;

.field private statusLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->spaceUserUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->inviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->lambda$onCreateView$38(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->lambda$initProfileView$39(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->lambda$initProfileView$40(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->lambda$initLargeIconLayout$41(Landroid/view/View;)V

    return-void
.end method

.method protected static getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string/jumbo v0, "FROM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    return-object v0
.end method

.method private initLargeIconLayout(Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f0801c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    .line 237
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    const v3, 0x7f0801c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 238
    .local v0, "imageview":Lcom/liquable/volley/toolbox/NetworkImageView;
    const v2, 0x7f0202a9

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2, v3}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 240
    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    invoke-static {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;->lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v1

    .line 243
    .local v1, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-virtual {v1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v0, v2, v3}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 244
    return-void
.end method

.method private inviteFriend(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 3
    .param p1, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/model/account/AccountDto;Landroid/support/v4/app/FragmentActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 131
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$3;->execute([Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method private synthetic lambda$initLargeIconLayout$41(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initProfileView$39(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04af

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04ad

    .line 197
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    .line 198
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 195
    return-void
.end method

.method private synthetic lambda$initProfileView$40(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->initLargeIconLayout(Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$onCreateView$38(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p2, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->showInviteButton(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->statusLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->statusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->messageTextView:Landroid/widget/TextView;

    const v1, 0x7f02052a

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->messageTextView:Landroid/widget/TextView;

    const v1, 0x7f0d04b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showInviteButton(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0801f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    .local v0, "inviteBtn":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    new-instance v1, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getIntentFilterActions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.liquable.nemo.profile.ProfileEvent"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "spaceUserUid"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 188
    iput-object p3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->spaceUserUid:Ljava/lang/String;

    .line 189
    const v5, 0x7f0300bf

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    .line 191
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f080203

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->messageTextView:Landroid/widget/TextView;

    .line 192
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f080202

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->statusLayout:Landroid/view/View;

    .line 193
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f080204

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->descBtn:Landroid/widget/ImageButton;

    .line 195
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->descBtn:Landroid/widget/ImageButton;

    invoke-static {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$2;->lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f080200

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 201
    .local v3, "nicknameTextView":Landroid/widget/TextView;
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f0801fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    .line 205
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f0801ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 206
    .local v2, "iconImageView":Lcom/liquable/volley/toolbox/NetworkImageView;
    const v5, 0x7f0203f8

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5, v6}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 209
    invoke-static {p3}, Lcom/liquable/nemo/friend/model/Account;->createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v4

    .line 210
    .local v4, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-virtual {v4}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v2, v5, v6}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 212
    invoke-static {p0, p3}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$3;->lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/volley/toolbox/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v6, 0x7f0801fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->coverImageView:Landroid/widget/ImageView;

    .line 225
    invoke-static {p3}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 226
    .local v1, "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    .line 227
    .local v0, "coverFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->coverImageView:Landroid/widget/ImageView;

    new-instance v7, Lcom/liquable/nemo/profile/CoverImage;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8, p3}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 228
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 140
    .local v1, "arguments":Landroid/os/Bundle;
    const-string/jumbo v3, "SPACE_UID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToProfilePage(Ljava/lang/String;)V

    .line 143
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 144
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->statusLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->messageTextView:Landroid/widget/TextView;

    const v4, 0x7f0d04ac

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->messageTextView:Landroid/widget/TextView;

    const v4, 0x7f02052b

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 181
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->fragmentView:Landroid/view/View;

    return-object v3

    .line 152
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->statusLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->messageTextView:Landroid/widget/TextView;

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->descBtn:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->messageTextView:Landroid/widget/TextView;

    const v4, 0x7f02052a

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 162
    :cond_1
    const-string/jumbo v3, "SPACE_NICKNAME"

    .line 165
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/friend/AccountDaemon;->isPublicProfile(Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;)Lcom/liquable/future/Consumer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    goto :goto_0
.end method
