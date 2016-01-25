.class public abstract Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "BaseFriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;
    }
.end annotation


# instance fields
.field protected coverImageView:Landroid/widget/ImageView;

.field protected displayNameTextView:Landroid/widget/TextView;

.field protected fragmentView:Landroid/view/View;

.field protected iconImageView:Landroid/widget/ImageView;

.field private largeIconLayout:Landroid/view/View;

.field protected loadingLayout:Landroid/widget/LinearLayout;

.field protected mutualFriendListAdapter:Lcom/liquable/nemo/main/MutualFriendListAdapter;

.field protected nicknameTextView:Landroid/widget/TextView;

.field protected noMutualFriendMessage:Landroid/widget/TextView;

.field protected profileCallback:Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

.field private profileViewProgressBar:Landroid/widget/ProgressBar;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private removeFriendDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$1;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->close()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->close()V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->initLargeIconLayout()V

    return-void
.end method

.method protected static getFriendUid(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const-string/jumbo v0, "FRIEND_UID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const-string/jumbo v0, "FROM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    return-object v0
.end method

.method protected static hasFriendUid(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const-string/jumbo v0, "FRIEND_UID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FRIEND_UID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLargeIconLayout()V
    .locals 5

    .prologue
    .line 248
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v4, 0x7f0801c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    .line 249
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    const v4, 0x7f0801c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 250
    .local v2, "imageview":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    new-instance v4, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$4;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$4;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getFriendIconFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 260
    .local v1, "iconFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 265
    :cond_0
    const v3, 0x7f0202a9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected static isFromNotification(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 78
    const-string/jumbo v1, "FROM_NOTIFICATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FROM_NOTIFICATION"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private trimCacheDir()V
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/liquable/nemo/util/FileCacheManager;->needToTrimTempDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$8;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$8;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 408
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 410
    :cond_0
    return-void
.end method


# virtual methods
.method public backPressed()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected blockFriend(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 150
    new-instance v0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;

    invoke-direct {v0, p0, p1, p2, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 177
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$2;->execute([Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method protected clearUserIconCache()V
    .locals 6

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/profile/RoundedProfileIcon;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getUserIcon()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->iconImageView:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->iconImageView:Landroid/widget/ImageView;

    .line 183
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v5, 0x7f02015a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/profile/RoundedProfileIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;III)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 185
    return-void
.end method

.method protected deleteFriend(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 188
    new-instance v0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$3;

    invoke-direct {v0, p0, p1, p2, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$3;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 216
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$3;->execute([Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected abstract getContentLayout()I
.end method

.method protected getFriendIconFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "directory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
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
    .line 233
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

.method protected getMustImplementedCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragmentCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const-class v0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    return-object v0
.end method

.method protected abstract getProfileUid()Ljava/lang/String;
.end method

.method protected abstract getTitleText()I
.end method

.method protected abstract getUserIcon()Lcom/liquable/nemo/util/LoadableImage;
.end method

.method protected initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "displayName"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getContentLayout()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    .line 276
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->profileCallback:Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getTitleText()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;->setTitle(Ljava/lang/String;)V

    .line 278
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f080200

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->nicknameTextView:Landroid/widget/TextView;

    .line 279
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->nicknameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f080201

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->displayNameTextView:Landroid/widget/TextView;

    .line 281
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->setDisplayName(Ljava/lang/String;)V

    .line 283
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f0801fd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    .line 285
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f0802c3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 286
    .local v5, "cubieIdTextView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f0801bb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 287
    .local v4, "cubieIdLayout":Landroid/view/View;
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 288
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :goto_0
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f0801ff

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->iconImageView:Landroid/widget/ImageView;

    .line 294
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->loadUserIcon()V

    .line 295
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->iconImageView:Landroid/widget/ImageView;

    new-instance v8, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;

    invoke-direct {v8, p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f0801fc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->coverImageView:Landroid/widget/ImageView;

    .line 309
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "profileUid":Ljava/lang/String;
    invoke-static {v6}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 311
    .local v3, "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v7, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v2

    .line 312
    .local v2, "coverFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->coverImageView:Landroid/widget/ImageView;

    new-instance v9, Lcom/liquable/nemo/profile/CoverImage;

    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 313
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 314
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 319
    :goto_1
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->fragmentView:Landroid/view/View;

    const v8, 0x7f0802c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 320
    .local v1, "copyCubieIdBtn":Landroid/widget/ImageButton;
    new-instance v7, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;

    move-object/from16 v0, p5

    invoke-direct {v7, p0, v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void

    .line 290
    .end local v1    # "copyCubieIdBtn":Landroid/widget/ImageButton;
    .end local v2    # "coverFile":Ljava/io/File;
    .end local v3    # "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v6    # "profileUid":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    .restart local v2    # "coverFile":Ljava/io/File;
    .restart local v3    # "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v6    # "profileUid":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->profileViewProgressBar:Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected loadUserIcon()V
    .locals 8

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    .line 333
    .local v0, "paddingInPixel":I
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->iconImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/profile/RoundedProfileIcon;

    .line 334
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getUserIcon()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->iconImageView:Landroid/widget/ImageView;

    .line 335
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v0

    iget-object v6, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->iconImageView:Landroid/widget/ImageView;

    .line 336
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v6, v0

    const v7, 0x7f02015a

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/liquable/nemo/profile/RoundedProfileIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;III)V

    .line 333
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 338
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 343
    check-cast p1, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->profileCallback:Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;

    .line 344
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->trimCacheDir()V

    .line 349
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onDestroy()V

    .line 350
    return-void
.end method

.method protected setDisplayName(Ljava/lang/String;)V
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    .line 354
    .local v1, "paddingLeftRight":I
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    .line 355
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    .line 356
    .local v0, "paddingBottom":I
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->displayNameTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->nicknameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 365
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->displayNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->displayNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->displayNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 363
    iget-object v3, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->nicknameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected showRemoveFriendDialog(Landroid/app/Activity;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 369
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300a2

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 371
    .local v3, "dialogView":Landroid/view/View;
    const v4, 0x7f0801be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    .local v2, "dialogMsg":Landroid/widget/TextView;
    const v4, 0x7f0d0182

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 373
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 372
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    const v4, 0x7f0801bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 375
    .local v0, "blockCb":Landroid/widget/CheckBox;
    const v4, 0x7f0801c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 376
    .local v1, "blockTextView":Landroid/widget/TextView;
    const v4, 0x7f0d0178

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 377
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 376
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->removeFriendDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 380
    invoke-static {p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0184

    .line 381
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 382
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03b3

    new-instance v6, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;

    invoke-direct {v6, p0, v0, p1, p2}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$7;-><init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;Landroid/widget/CheckBox;Landroid/app/Activity;Lcom/liquable/nemo/friend/model/Account;)V

    .line 383
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d00c5

    .line 394
    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->removeFriendDialog:Landroid/app/AlertDialog;

    .line 397
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->removeFriendDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 398
    return-void
.end method
