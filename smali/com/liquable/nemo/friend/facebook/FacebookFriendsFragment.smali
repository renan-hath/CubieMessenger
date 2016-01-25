.class public Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "FacebookFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;,
        Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$OnDisconnectFacebook;,
        Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;,
        Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$FacebookFriendsCallback;,
        Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;
    }
.end annotation


# static fields
.field private static final MAX_OF_FACEBOOK_FRIENDS:I = 0x3e8


# instance fields
.field private facebookFriendListAdapter:Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;

.field private facebookFriendListView:Landroid/widget/ListView;

.field private facebookFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;"
        }
    .end annotation
.end field

.field private facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

.field private final filteredFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentView:Landroid/view/View;

.field private final handler:Landroid/os/Handler;

.field private isFiltered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->filteredFriends:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriends:Ljava/util/List;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->handler:Landroid/os/Handler;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->isFiltered:Z

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->onFacebookLogined(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriends:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriends:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->listFacebookFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->notifyAdapterDataChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->filterFacebookFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showAsyncErrorToast()V

    return-void
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showSendInvitationCompleteToast()V

    return-void
.end method

.method static synthetic access$2300(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListAdapter:Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showShareToFacebookSuccessMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showLogoutToast()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->finishAndLogoutFacebook()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->shareOnFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->popupAddFacebookFriendDialog(Lcom/liquable/nemo/model/account/AccountDto;)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .param p2, "x2"    # Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->postToWallUsingFacebookFeedDialog(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showFacebookErrorToast()V

    return-void
.end method

.method private filterFacebookFriend(Ljava/lang/String;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->isFiltered:Z

    .line 151
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->filteredFriends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 153
    .local v0, "friend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->filteredFriends:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v0    # "friend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->filteredFriends:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->notifyAdapterDataChange(Ljava/util/List;)V

    .line 158
    return-void
.end method

.method private finishAndLogoutFacebook()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->logout()V

    .line 164
    iput-object v2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .line 166
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/Pref;->setFbuid(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->close()V

    .line 168
    return-void
.end method

.method private initFacebookView()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListView:Landroid/widget/ListView;

    .line 177
    new-instance v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListAdapter:Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;

    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListAdapter:Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListView:Landroid/widget/ListView;

    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$FacebookFriendsCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$FacebookFriendsCallback;->getFacebookSession()Lcom/liquable/nemo/facebook/FacebookSession;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$2;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/facebook/FacebookSession;->asyncOpenForRead(ZILcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V

    .line 223
    return-void
.end method

.method private listFacebookFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;
    .locals 3
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e8

    .line 227
    invoke-virtual {p1}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->listFriends()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 229
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 237
    .end local v0    # "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    :goto_0
    return-object v0

    .line 232
    .restart local v0    # "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    :cond_0
    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->removeBlockedAndAlreadyFriends(Ljava/util/List;)V

    .line 235
    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private notifyAdapterDataChange(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriendListAdapter:Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendListAdapter;->reset(Ljava/util/List;)V

    .line 242
    return-void
.end method

.method private onFacebookLogined(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 2
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .line 267
    new-instance v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 290
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$3;->execute([Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method private onFilterBtnClick()V
    .locals 6

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 295
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f03009d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 296
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x7f0801af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 297
    .local v0, "dialogEditText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d027c

    .line 298
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 299
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03b3

    new-instance v5, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;

    invoke-direct {v5, p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$5;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Landroid/widget/EditText;)V

    .line 300
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d00c5

    new-instance v5, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$4;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$4;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    .line 313
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 318
    return-void
.end method

.method private popupAddFacebookFriendDialog(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 6
    .param p1, "account"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    .line 352
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$7;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/model/account/AccountDto;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00c5

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$6;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d030b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 406
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 405
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d030a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 408
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 407
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 410
    return-void
.end method

.method private postToWallUsingFacebookFeedDialog(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)V
    .locals 8
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .param p2, "friend"    # Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .prologue
    .line 414
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppFromFacebook()V

    .line 416
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 417
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d0491

    .line 418
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d0489

    .line 419
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0d0074

    .line 420
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->facebook_wall:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 421
    invoke-static {v0}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$8;

    invoke-direct {v7, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$8;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    move-object v0, p1

    .line 416
    invoke-virtual/range {v0 .. v7}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V

    .line 437
    return-void
.end method

.method private removeBlockedAndAlreadyFriends(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v6, "fbuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 443
    .local v7, "friend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual {v7}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    .end local v7    # "friend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    :cond_0
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    invoke-virtual {v8, v6}, Lcom/liquable/nemo/user/model/UserManager;->listAccountsByFbuids(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 447
    .local v5, "fbuidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 448
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 449
    .restart local v7    # "friend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual {v7}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "fbuid":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 451
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->setAccount(Lcom/liquable/nemo/model/account/AccountDto;)V

    goto :goto_1

    .line 455
    .end local v4    # "fbuid":Ljava/lang/String;
    .end local v7    # "friend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    :cond_2
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v8}, Lcom/liquable/nemo/friend/model/FriendManager;->listWaitAcceptFriendsAndFriends()Ljava/util/List;

    move-result-object v1

    .line 456
    .local v1, "accountsNeedExclude":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v8}, Lcom/liquable/nemo/friend/model/FriendManager;->listBlockedFriends()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v2, "excludeFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 461
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .line 462
    .local v3, "facebookFriend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->isSameCubieAccount(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 463
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->setCubieFriend(Z)V

    .line 464
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 470
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v3    # "facebookFriend":Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 472
    .end local v1    # "accountsNeedExclude":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    .end local v2    # "excludeFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    :cond_6
    return-void
.end method

.method private shareOnFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 7
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 475
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppFromFbTimelines()V

    .line 477
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v0, 0x7f0d0491

    .line 478
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d0489

    .line 479
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d0074

    .line 480
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->facebook_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 481
    invoke-static {v0}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$9;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$9;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    move-object v0, p1

    .line 477
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V

    .line 497
    return-void
.end method

.method private showAsyncErrorToast()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$10;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$10;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method private showFacebookErrorToast()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$11;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$11;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method private showLogoutToast()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$12;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$12;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method private showSendInvitationCompleteToast()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$13;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$13;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method

.method private showShareToFacebookSuccessMessage()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$14;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$14;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 542
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$15;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    return-void
.end method


# virtual methods
.method public backPressed()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->isFiltered:Z

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->isFiltered:Z

    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookFriends:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->notifyAdapterDataChange(Ljava/util/List;)V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->backPressed()Z

    move-result v0

    goto :goto_0
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
    .line 172
    const-class v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$FacebookFriendsCallback;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->setHasOptionsMenu(Z)V

    .line 248
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 252
    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 253
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    const v0, 0x7f0300b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->fragmentView:Landroid/view/View;

    .line 260
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->initFacebookView()V

    .line 261
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    .line 324
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->onFilterBtnClick()V

    .line 340
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :pswitch_1
    new-instance v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;)V

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;->run()V

    goto :goto_1

    .line 330
    :pswitch_2
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;->run()V

    goto :goto_1

    .line 335
    :pswitch_3
    new-instance v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;)V

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$DisconnectFromFacebookItem;->run()V

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x7f080367
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 345
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isAllowFacebookDisconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const v0, 0x7f08036a

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 348
    :cond_0
    return-void
.end method
